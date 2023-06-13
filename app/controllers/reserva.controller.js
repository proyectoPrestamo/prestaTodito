//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";


//Reserva

export const findAllReserva = async (req, res) => {

    try {
       const [rows] = await pool.query("CALL spFindAllReserva();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findReserva = async (req, res) => {
    const id = req.params.id;
    try {
       const [rows] = await pool.query(`CALL spFindReserva(${id});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertReserva = async (req, res) => {
    const fecha_res = req.body.fecha_res;
    const hora_res = req.body.hora_res
    const tiempo_requerido = req.body.tiempo_requerido;
    const id_usuario = req.body.id_usuario;
 
    try {
       const result = await pool.query(`CALL spInsertReserva('${fecha_res}','${hora_res}','${tiempo_requerido}','${id_usuario}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteReserva = async (req, res) => {
    const id = req.params.id;
    try {
       const result = await pool.query(`CALL spDeleteReserva(${id})`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateReserva = async (req, res) => {
    const id = req.params.id;
    const fecha_res = req.body.fecha_res;
    const hora_res = req.body.hora_res
    const tiempo_requerido = req.body.tiempo_requerido;
    const id_usuario = req.body.id_usuario;
 
    try {
       const result = await pool.query(`CALL spUpdateReserva(${id},'${fecha_res}','${hora_res}','${tiempo_requerido}','${id_usuario}');`)
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };

 
 