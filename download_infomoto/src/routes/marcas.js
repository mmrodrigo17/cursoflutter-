const express = require('express');
const router = express.Router();

const mysqlConnection  = require('../database.js');

// GET all Employees
router.get('/', (req, res) => {
  mysqlConnection.query('SELECT * FROM marcas', (err, rows, fields) => {
    if(!err) {
      res.json(rows);
    } else {
      console.log(err);
    }
  });  
});

// GET An Marca
router.get('/:id', (req, res) => {
  const { id } = req.params; 
  mysqlConnection.query('SELECT * FROM marcas WHERE idmarca = ?', [id], (err, rows, fields) => {
    if (!err) {
      res.json(rows[0]);
    } else {
      console.log(err);
    }
  });
});

// DELETE An Marca
router.delete('/:id', (req, res) => {
  const { id } = req.params;
  mysqlConnection.query('DELETE FROM marcas WHERE idmarca = ?', [id], (err, rows, fields) => {
    if(!err) {
      res.json({status: 'Marca Deleted'});
    } else {
      console.log(err);
    }
  });
});

// INSERT An Marca
router.post('/', (req, res) => {
  const {idmarca, descripcion, habilitada} = req.body;
  console.log(idmarca, descripcion, habilitada);
  const query = `
    SET @idmarca = ?;
    SET @descripcion = ?;
    SET @habilitada = ?;
    CALL marcaAddOrEdit(@idmarca, @descripcion, @habilitada);
  `;
  mysqlConnection.query(query, [idmarca, descripcion, habilitada], (err, rows, fields) => {
    if(!err) {
      res.json({status: 'Marca Saved'});
    } else {
      console.log(err);
    }
  });

});

router.put('/:idmarca', (req, res) => {
  const { descripcion, habilitada } = req.body;
  const { idmarca } = req.params;
  const query = `
  SET @idmarca = ?;
  SET @descripcion = ?;
  SET @habilitada = ?;
  CALL marcaAddOrEdit(@idmarca, @descripcion, @habilitada);
`;
  mysqlConnection.query(query, [idmarca, descripcion, habilitada], (err, rows, fields) => {
    if(!err) {
      res.json({status: 'Marca Updated'});
    } else {
      console.log(err);
    }
  });
});

module.exports = router;