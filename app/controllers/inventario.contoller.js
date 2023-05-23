//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";


//INVENTARIO

export const findAllInventario= async (req, res) => {

    try {
       const [rows] = await pool.query("CALL spFindAllInventario();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findInventario = async (req, res) => {
    const id= req.params.id;
    try {
       const [rows] = await pool.query(`CALL spFindInventario(${id});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertInventario= async (req, res) => {
    const id_pc = req.body.id_pc;
    const id_herramienta = req.body.id_herramienta;
    const id_ambientes = req.body.id_ambientes;
    const id_horario = req.body.id_horario;
    const id_material = req.body.id_material
 
    try {
       const result = await pool.query(`CALL spInsertInventario('${id_pc}','${id_herramienta}','${id_ambientes}','${id_horario}','${id_material}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteInventario= async (req, res) => {
    const id = req.params.id;
    try {
       const result = await pool.query(`CALL spDeleteInventario(${id})`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateInventario = async (req, res) => {
    const id = req.params.id;
    const id_pc = req.body.id_pc;
    const id_herramienta = req.body.id_herramienta;
    const id_ambientes = req.body.id_ambientes;
    const id_horario = req.body.id_horario;
    const id_material = req.body.id_material
 
 
    try {
       const result = await pool.query(`CALL spUpdateInventario(${id},'${id_pc}','${id_herramienta}','${id_ambientes}','${id_horario}','${id_material}');`)
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };