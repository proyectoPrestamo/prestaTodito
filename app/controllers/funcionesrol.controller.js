//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";

//Funciones Rol

export const findAllFuncionesRol = async (req, res) => {

    try {
       const [rows] = await pool.query("CALL spFindAllFuncionesRol();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findFuncionesRol = async (req, res) => {
    const id = req.params.id;
    try {
       const [rows] = await pool.query(`CALL spFindFuncionesRol(${id});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertFuncionesRol = async (req, res) => {
    const estado_prestamo = req.body.estado_prestamo;
    const observacion_prestamo = req.body.observacion_prestamo;
    const id_rol = req.body.id_rol;
    try {
       const result = await pool.query(`CALL spInsertFuncionesRol('${estado_prestamo}','${observacion_prestamo}','${id_rol}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteFuncionesRol = async (req, res) => {
    const id = req.params.id;
 
    try {
       const result = await pool.query(`CALL spDeleteFuncionesRol('${id}');`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateFuncionesRol = async (req, res) => {
    const id = req.params.id;
    const estado_prestamo = req.body.estado_prestamo;
    const observacion_prestamo = req.body.observacion_prestamo;
    const id_rol = req.body.id_rol;
 
    try {
       const result = await pool.query(`CALL spUpdateFuncionesRol(${id},'${estado_prestamo}','${observacion_prestamo}','${id_rol}');`);
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };