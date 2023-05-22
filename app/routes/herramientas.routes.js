import { Router } from "express"; 
// ENVIAR ARCHIVOS O PARAMETROS DE OTRA PAGINA DESDE EL SERVIDOR

// importamos los procedimientos
import * as controller from "../controllers/herramientas.controller"
const route = Router();

//herramientas
route.get("/herramientas",controller.findAllHerramienta);
route.get("/herramientas/:id",controller.findHerramienta);
route.post("/herramientas",controller.insertHerramienta);
route.put("/herramientas",controller.updateHerramienta);
route.delete("/herramientas/:id",controller.deleteHerramienta);
