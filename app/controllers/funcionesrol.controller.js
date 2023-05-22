//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";

//Funciones Rol

export const findAllFuncionesRol = async (req, res) => {

    try {
       const [rows] = await proyectoinsumos.query("CALL spFindAllFuncionesRol();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findFuncionesRol = async (req, res) => {
    const id_funcionesRol = req.params.id_funcionesRol;
    try {
       const [rows] = await proyectoinsumos.query(`CALL spFindFuncionesRol(${id_funcionesRol});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertFuncionesRol = async (req, res) => {
    const estado_prestamo = req.body.estado_prestamo;
    const observacion_prestamo = req.body.observacion_prestamo;
    try {
       const result = await proyectoinsumos.query(`CALL spInsertFuncionesRol('${estado_prestamo}','${observacion_prestamo}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteFuncionesRol = async (req, res) => {
    const id_funcionesRol = req.params.id_funcionesRol;
 
    try {
       const result = await proyectoinsumos.query(`CALL spDeleteFuncionesRol('${id_funcionesRol}');`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateFuncionesRol = async (req, res) => {
    const id_funcionesRol = req.params.id_funcionesRol;
    const estado_prestamo = req.body.estado_prestamo;
    const observacion_prestamo = req.body.observacion_prestamo;
    const id_rol = req.body.id_rol;
 
    try {
       const result = await proyectoinsumos.query(`CALL spUpdateFuncionesRol('${id_funcionesRol}${estado_prestamo},${observacion_prestamo},${id_rol}');`);
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };