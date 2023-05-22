import { Router } from "express"; 
// ENVIAR ARCHIVOS O PARAMETROS DE OTRA PAGINA DESDE EL SERVIDOR

// importamos los procedimientos
import * as controller from "../controllers/funcionesrol.controller"
const route = Router();

//funciones rol
route.get("/funcionesrol",controller.findAllFuncionesRol);
route.get("/funcionesrol/:id",controller.findFuncionesRol);
route.post("/funcionesrol",controller.insertFuncionesRol);
route.put("/funcionesrol",controller.updateFuncionesRol);
route.delete("/funcionesrol/:id",controller.deleteFuncionesRol);

