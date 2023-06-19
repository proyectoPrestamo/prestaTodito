import { Router } from "express"; 

import * as controller from "../controllers/login.controller.js"
const route = Router();

route.get("/usuario/:id",controller.findUser);

export default route;
