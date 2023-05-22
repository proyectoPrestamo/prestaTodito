import { Router } from "express"; 
// ENVIAR ARCHIVOS O PARAMETROS DE OTRA PAGINA DESDE EL SERVIDOR

// importamos los procedimientos
import * as controller from "../controllers/material.controller"
const route = Router();

//material
route.get("/material",controller.findAllMaterial);
route.get("/material/:id",controller.findMaterial);
route.post("/material",controller.insertMaterial);
route.put("/material",controller.updateMaterial);
route.delete("/material/:id",controller.deleteMaterial);
