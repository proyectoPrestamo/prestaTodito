import { Router } from "express"; 
// ENVIAR ARCHIVOS O PARAMETROS DE OTRA PAGINA DESDE EL SERVIDOR

// importamos los procedimientos
import * as controller from "../controllers/pc.controller"
const route = Router();

//computadores
route.get("/pc",controller.findAllPc);
route.get("/pc/:id",controller.findPc);
route.post("/pc",controller.insertPc);
route.put("/pc/:id",controller.updatePc);
route.delete("/pc/:id",controller.deletePc);

export default route;