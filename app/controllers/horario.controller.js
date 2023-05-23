//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";


//HORARIO

export const findAllHorario = async (req, res) => {

    try {
       const [rows] = await pool.query("CALL spFindAllHorario();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findHorario = async (req, res) => {
    const id = req.params.id;
    try {
       const [rows] = await pool.query(`CALL spFindHorario(${id});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertHorario = async (req, res) => {
    const fecha_hora = req.body.fecha_hora;
    const tiempo_requerido = req.body.tiempo_requerido;
    const fecha_registro = req.body.fecha_registro;
 
    try {
       const result = await pool.query(`CALL spInsertHorario('${fecha_hora}','${tiempo_requerido}','${fecha_registro}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteHorario = async (req, res) => {
    const id = req.params.id;
    try {
       const result = await pool.query(`CALL spDeleteHorario(${id})`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateHorario = async (req, res) => {
    const id = req.params.id;
    const fecha_hora = req.body.fecha_hora;
    const tiempo_requerido = req.body.tiempo_requerido;
    const fecha_registro = req.body.fecha_registro;
 
    try {
       const result = await pool.query(`CALL spUpdateHorario(${id},'${fecha_hora}','${tiempo_requerido}','${fecha_registro}');`)
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };
 