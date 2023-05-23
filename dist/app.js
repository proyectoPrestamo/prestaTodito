"use strict";

var _interopRequireDefault = require("@babel/runtime/helpers/interopRequireDefault");
Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = _interopRequireDefault(require("express"));
var _dotenv = _interopRequireDefault(require("dotenv"));
var _morgan = _interopRequireDefault(require("morgan"));
var _cors = _interopRequireDefault(require("cors"));
var _enviroments = _interopRequireDefault(require("./config/enviroments"));
var _message = _interopRequireDefault(require("./config/message"));
var _ambientes = _interopRequireDefault(require("./routes/ambientes.routes"));
var _funcionesrol = _interopRequireDefault(require("./routes/funcionesrol.routes"));
var _herramientas = _interopRequireDefault(require("./routes/herramientas.routes"));
var _horario = _interopRequireDefault(require("./routes/horario.routes"));
var _inventario = _interopRequireDefault(require("./routes/inventario.routes"));
var _material = _interopRequireDefault(require("./routes/material.routes"));
var _pc = _interopRequireDefault(require("./routes/pc.routes"));
var _registro = _interopRequireDefault(require("./routes/registro.routes"));
var _rol = _interopRequireDefault(require("./routes/rol.routes"));
// Rutas de la api

var app = (0, _express["default"])();
app.set("PORT", process.env.PORT);

//middlewares
app.use((0, _cors["default"])());
app.use(_express["default"].json());
app.use(_express["default"].urlencoded({
  extended: false
}));
app.use(_express["default"].urlencoded({
  extended: false
}));
app.use((0, _morgan["default"])('dev'));

//Routes
app.get('/', function (req, res) {
  res.send({
    message: 'Bienvenidos a PrestaTodito'
  });
});
app.use('/api', _ambientes["default"]);
app.use('/api', _funcionesrol["default"]);
app.use('/api', _herramientas["default"]);
app.use('/api', _horario["default"]);
app.use('/api', _inventario["default"]);
app.use('/api', _material["default"]);
app.use('/api', _pc["default"]);
app.use('/api', _registro["default"]);
app.use('/api', _rol["default"]);
var _default = app;
exports["default"] = _default;