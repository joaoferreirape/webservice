var mysql = require('mysql');
var fs = require('fs');





class HandleDBMSMySQL {

  constructor(host=null, database=null, user=null, password=null){

    var session_file = JSON.parse(fs.readFileSync('./config/server/env.json', 'utf8', 'r'));
    if (session_file) {
      this._host      = ( typeof host      !== 'string' || host     == null ) ? session_file.host     : host;
      this._database  = ( typeof database  !== 'string' || database == null ) ? session_file.database : database;
      this._user      = ( typeof user      !== 'string' || user     == null ) ? session_file.user     : user;
      this._password  = ( typeof password  !== 'string' || password == null ) ? session_file.password : password;
      //
      this.connect();
    } else {
      console.error('Parâmetros incorretos para a classe: \`%s\`', this.constructor.name);
    }

  }



  connect() {

    this.connection = mysql.createConnection({
      host:     this._host,
      database: this._database,
      user:     this._user,
      password: this._password 
    });

  }



  query(sql, args){

    return new Promise((resolve, reject) => {
      this.connection.query(sql, args, (err, results, fields) => {
        if (err) {
          reject(err);
        } else {
          var resultsJSON = { 'metadata': {}, 'data': {} };
          resultsJSON.metadata  = fields.map((r)  => Object.assign({}, r));
          resultsJSON.data      = results.map((r) => Object.assign({}, r));
          resolve(resultsJSON);
        }
      });
    });

  }



  insert(sql, args){

    return new Promise((resolve, reject) => {
      this.connection.query(sql, args, (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });

  }



  close() {

    return new Promise((resolve, reject) => {
      this.connection.end(err => {
        if (err) {
          reject(err);
        } else {
          resolve();
        }
      });
    });

  }

}





module.exports = HandleDBMSMySQL;
