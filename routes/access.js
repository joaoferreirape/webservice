var express = require('express');
var ip = require('ip');
var os = require('os');
var router = express.Router();

var ModelAccess = require('../model/ModelAccess');

var _ModelAccess = new ModelAccess();


router.route('/')
  .get(function(req, res, next) {
    _ModelAccess.getAccess(null, null)
      .then(resultJSON => {
        res.status(200).json(resultJSON).end();
      })
      .catch(err => {
        console.error('Erro na requisição \`get\` para o recurso: ' + err);
        res.status(500).send(err).end();
      });
  })
  .post(function(req, res) {
    _ModelAccess.postAccess(Date.now().toString(), os.hostname().toString(), ip.address().toString())
      .then(resultJSON => {
        res.status(201).json(resultJSON).end();
      })
      .catch(err => {
        console.error('Erro na requisição \`post\` para o recurso: ' + err);
        res.status(500).send(err).end();
      });
  })
  .put(function(req, res) {
    res.send('Pela natureza de funcionalidade desta rota, não há ação de atualização.');
  })
  .delete(function(req, res) {
    res.send('Pela natureza de funcionalidade desta rota, não há ação de apagar/deletar.');
  });





module.exports = router;
