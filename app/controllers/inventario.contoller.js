//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";


//INVENTARIO

export const findAllInventario= async (req, res) => {

    try {
       const [rows] = await proyectoinsumos.query("CALL spFindAllInventario();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findInventario = async (req, res) => {
    const id_inventario= req.params.id_inventario;
    try {
       const [rows] = await proyectoinsumos.query(`CALL spFindInventario(${id_inventario});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertInventario= async (req, res) => {
    const id_pc = req.body.id_pc;
    const id_herramienta = req.body.id_herramienta;
    const id_horario = req.body.id_horario;
    const id_material = req.body.id_material
 
    try {
       const result = await proyectoinsumos.query(`CALL spInsertInventario('${id_pc}','${id_herramienta}','${id_horario}','${id_material}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteInventario= async (req, res) => {
    const id_inventario = req.params.id_inventario;
    try {
       const result = await proyectoinsumos.query(`CALL spDeleteInventario(${id_inventario})`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateInventario = async (req, res) => {
    const id_inventario = req.params.id_inventario;
    const id_pc = req.body.id_pc;
    const id_herramienta = req.body.id_herramienta;
    const id_horario = req.body.id_horario;
    const id_material = req.body.id_material
 
 
    try {
       const result = await proyectoinsumos.query(`CALL spUpdateInventario(${id_inventario},'${id_pc}','${id_herramienta}','${id_horario}','${id_material}');`)
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };