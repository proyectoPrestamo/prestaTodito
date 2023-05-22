import { Router } from "express"; 
// ENVIAR ARCHIVOS O PARAMETROS DE OTRA PAGINA DESDE EL SERVIDOR

// importamos los procedimientos
import * as controller from "../controllers/horario.controller"
const route = Router();

//horario
route.get("/horario",controller.findAllHorario);
route.get("/horario/:id",controller.findHorario);
route.post("/horario",controller.insertHorario);
route.put("/horario",controller.updateHorario);
route.delete("/horario/:id",controller.deleteHorario);
