import express  from "express";
import dotenv from "dotenv";
import morgan from "morgan";
import cors from "cors";
import enviroments from "./config/enviroments";
import message from "./config/message";

// Rutas de la api

import ambientesRoutes from "./routes/ambientes.routes";
import funcionesrolRoutes from "./routes/funcionesrol.routes"

import herramientasRoutes from "./routes/herramientas.routes";
import horarioRoutes from "./routes/horario.routes";
import inventarioRoutes from "./routes/inventario.routes"

import materialRoutes from "./routes/material.routes";
import pcRoutes from "./routes/pc.routes";
import registroRoutes from "./routes/registro.routes"
import rolRoutes from "./routes/rol.routes";

const app = express();

app.set("PORT", process.env.PORT);

//middlewares
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended:false}));
app.use(express.urlencoded({extended: false}));
app.use(morgan('dev'));

//Routes
app.get('/',(req, res) =>{
    res.send({ message:'Bienvenidos a PrestaTodito'});
});


app.use('/api', ambientesRoutes);
app.use('/api', funcionesrolRoutes);
app.use('/api', herramientasRoutes);
app.use('/api', horarioRoutes);
app.use('/api', inventarioRoutes);
app.use('/api', materialRoutes);
app.use('/api', pcRoutes);
app.use('/api', registroRoutes);
app.use('/api', rolRoutes);


export default app;
