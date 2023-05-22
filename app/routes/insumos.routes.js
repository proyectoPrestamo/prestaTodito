import { Router } from "express"; 
// ENVIAR ARCHIVOS O PARAMETROS DE OTRA PAGINA DESDE EL SERVIDOR

// importamos los procedimientos
import * as controller from "../controllers/registro.controller"
const route = Router();


// mostrar todos los procedimientos de la base de datos 

//registro
route.get("/registro",controller.findAllRegistro);
route.get("/registro/:id_registro",controller.findRegistro);
route.post("/registro",controller.insertRegistro);
route.put("/registro",controller.updateRegistro);
route.delete("/registro/:id_registro",controller.deleteRegistro);

//ambientes
route.get("/ambientes",controller.findAllAmbientes);
route.get("/ambientes/:idAmbientes",controller.findAmbientes);
route.post("/ambientes",controller.insertAmbientes);
route.put("/ambientes",controller.updateAmbientes);
route.delete("/ambientes/:idAmbientes",controller.deleteAmbientes);

//computadores
route.get("/pc",controller.findAllPc);
route.get("/pc/:idpc",controller.findPc);
route.post("/pc",controller.insertPc);
route.put("/pc",controller.updatePc);
route.delete("/pc/:idpc",controller.deletePc);


//funciones rol
route.get("/funcionesrol",controller.findAllFuncionesRol);
route.get("/funcionesrol/:idfuncionesRol",controller.findFuncionesRol);
route.post("/funcionesrol",controller.insertFuncionesRol);
route.put("/funcionesrol",controller.updateFuncionesRol);
route.delete("/funcionesrol/:idfuncionesRol",controller.deleteFuncionesRol);

//herramientas
route.get("/herramientas",controller.findAllHerramienta);
route.get("/herramientas/:idHerramientas",controller.findHerramienta);
route.post("/herramientas",controller.insertHerramienta);
route.put("/herramientas",controller.updateHerramienta);
route.delete("/herramientas/:idHerramientas",controller.deleteHerramienta);

//horario
route.get("/horario",controller.findAllHorario);
route.get("/horario/:idHorario",controller.findHorario);
route.post("/horario",controller.insertHorario);
route.put("/horario",controller.updateHorario);
route.delete("/horario/:idHorario",controller.deleteHorario);

//inventario
route.get("/inventario",controller.findAllInventario);
route.get("/inventario/:idInventario",controller.findInventario);
route.post("/inventario",controller.insertInventario);
route.put("/inventario",controller.updateInventario);
route.delete("/inventario/:idInventario",controller.deleteInventario);

//material
route.get("/material",controller.findAllMaterial);
route.get("/material/:idMaterial",controller.findMaterial);
route.post("/material",controller.insertMaterial);
route.put("/material",controller.updateMaterial);
route.delete("/material/:idMaterial",controller.deleteMaterial);

//rol
route.get("/rol",controller.findAllRol);
route.get("/rol/:idRol",controller.findRol);
route.post("/rol",controller.insertRol);
route.put("/rol",controller.updateRol);
route.delete("/rol/:idRol",controller.deleteRol);

export default route;