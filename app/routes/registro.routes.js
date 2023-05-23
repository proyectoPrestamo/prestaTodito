import { Router } from "express"; 
// ENVIAR ARCHIVOS O PARAMETROS DE OTRA PAGINA DESDE EL SERVIDOR

// importamos los procedimientos
import * as controller from "../controllers/registro.controller"
const route = Router();


// mostrar todos los procedimientos de la base de datos 

//registro
route.get("/registro",controller.findAllRegistro);
route.get("/registro/:id",controller.findRegistro);
route.post("/registro",controller.insertRegistro);
route.put("/registro/:id",controller.updateRegistro);
route.delete("/registro/:id",controller.deleteRegistro);


export default route;