import express  from "express";
import dotenv from "dotenv";
import cors from "cors";
import enviroments from "./config/enviroments";
import message from "./config/message";

// Rutas de la api
import rolRoutes from "./routes/rol.routes";

const app = express();

app.set("PORT", process.env.PORT);

//middlewares
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended:false}));
app.use(express.urlencoded({extended: false}))

//Routes
app.get('/',(req, res) =>{
    res.send({ message:'Bienvenidos a PrestaTodito'});
});

app.use('/api', rolRoutes);

export default app;
