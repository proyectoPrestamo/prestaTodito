//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";

//HERRAMIENTAS

export const findAllHerramienta = async (req, res) => {

    try {
       const [rows] = await proyectoinsumos.query("CALL spFindAllHerramienta();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findHerramienta = async (req, res) => {
    const id_herramienta = req.params.id_herramienta;
    try {
       const [rows] = await proyectoinsumos.query(`CALL spFindHerramienta(${id_herramienta});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertHerramienta = async (req, res) => {
    const nombre_herra = req.body.nombre;
    const estado_herra = req.body.estado;
    const tipo_herra = req.body.tipo;
    const cantidad_herra = req.body.cantidad;
 
    try {
       const result = await proyectoinsumos.query(`CALL spInsertHerramienta('${nombre_herra}','${estado_herra}','${tipo_herra}','${cantidad_herra}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteHerramienta = async (req, res) => {
    const id_herramienta = req.params.id_herramienta;
    try {
       const result = await proyectoinsumos.query(`CALL spDeleteHerramienta(${id_herramienta})`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateHerramienta = async (req, res) => {
    const id_herramienta = req.params.id_herramienta;
    const nombre_herra = req.body.nombre;
    const estado_herra = req.body.estado;
    const tipo_herra = req.body.tipo;
    const cantidad_herra = req.body.cantidad;
    const id_horario = req.params.id_horario;
 
    try {
       const result = await proyectoinsumos.query(`CALL spUpdateHerramienta(${id_herramienta},'${nombre_herra}','${estado_herra}','${tipo_herra}','${cantidad_herra}','${id_horario}');`)
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };