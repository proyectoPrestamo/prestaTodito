import { Router } from "express"; 
// ENVIAR ARCHIVOS O PARAMETROS DE OTRA PAGINA DESDE EL SERVIDOR

// importamos los procedimientos
import * as controller from "../controllers/inventario.contoller"
const route = Router();

//inventario
route.get("/inventario",controller.findAllInventario);
route.get("/inventario/:id",controller.findInventario);
route.post("/inventario",controller.insertInventario);
route.put("/inventario",controller.updateInventario);
route.delete("/inventario/:id",controller.deleteInventario);