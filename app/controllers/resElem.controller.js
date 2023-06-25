//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";

//Reserva Elemento

export const findAllResElem = async (req, res) => {

    try {
       const [rows] = await pool.query("CALL spFindAllResElem();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findResElem = async (req, res) => {
    const id = req.params.id;
    try {
       const [rows] = await pool.query(`CALL spFindResElem(${id});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertResElem = async (req, res) => {
    const nombre_insumo = req.body.nombre_insumo;
    const tipo_insumo = req.body.tipo_insumo;
    const caracteristicas = req.body.caracteristicas;
    const cantidad = req.body.cantidad;
    const estado_aprobacion = req.body.estado_aprobacion;

    try {
       const result = await pool.query(`CALL spInsertResElem('${nombre_insumo}','${tipo_insumo}','${caracteristicas}','${cantidad}','${estado_aprobacion}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteResElem = async (req, res) => {
    const id = req.params.id;
 
    try {
       const result = await pool.query(`CALL spDeleteResElem('${id}');`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateResElem = async (req, res) => {
    const id = req.params.id;
    const nombre_insumo = req.body.nombre_insumo;
    const tipo_insumo = req.body.tipo_insumo;
    const caracteristicas = req.body.caracteristicas;
    const cantidad = req.body.cantidad;
    const estado_aprobacion = req.body.estado_aprobacion;

   
 
    try {
       const result = await pool.query(`CALL spUpdateResElem(${id},'${nombre_insumo}','${tipo_insumo}','${caracteristicas}','${cantidad}','${estado_aprobacion}')'${estado_aprobacion}');`);
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };