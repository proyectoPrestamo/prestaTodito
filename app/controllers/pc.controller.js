//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";

//Prestamo Computadoras

export const findAllPc = async (req, res) => {

    try {
       const [rows] = await proyectoinsumos.query("CALL spFindAllPc();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findPc = async (req, res) => {
    const id_pc = req.params.id_pc;
    try {
       const [rows] = await proyectoinsumos.query(`CALL spFindPc(${id_pc});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertPc = async (req, res) => {
    const estado_pc = req.body.estado;
    const marca_pc = req.body.marca;
 
    try {
       const result = await proyectoinsumos.query(`CALL spInsertPc('${estado_pc}','${marca_pc}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deletePc = async (req, res) => {
    const id_pc = req.params.id_pc;
    try {
       const result = await proyectoinsumos.query(`CALL spDeletePc(${id_pc})`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updatePc = async (req, res) => {
 
    const id_pc = req.body.id_pc;
    const estado_pc = req.body.estado;
    const marca_pc = req.body.marca;
    const id_horario = req.body.id_horario;
 
 
    try {
       const result = await proyectoinsumos.query(`CALL spUpdatePc(${id_pc},'${estado_pc}','${marca_pc}','${id_horario}');`)
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };