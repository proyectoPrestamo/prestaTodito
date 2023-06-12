import { Router } from "express"; 
// ENVIAR ARCHIVOS O PARAMETROS DE OTRA PAGINA DESDE EL SERVIDOR

// importamos los procedimientos
import * as controller from "../controllers/reserva.controller"
const route = Router();

//reserva
route.get("/reserva",controller.findAllReserva);
route.get("/reserva/:id",controller.findReserva);
route.post("/reserva",controller.insertReserva);
route.put("/reserva/:id",controller.updateReserva);
route.delete("/reserva/:id",controller.deleteReserva);

export default route;