//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";

//HERRAMIENTAS

export const findAllHerramienta = async (req, res) => {

    try {
       const [rows] = await pool.query("CALL spFindAllHerramientas();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findHerramienta = async (req, res) => {
    const id = req.params.id;
    try {
       const [rows] = await pool.query(`CALL spFindHerramientas(${id});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertHerramienta = async (req, res) => {
    const nombre = req.body.nombre;
    const estado = req.body.estado;
    const tipo = req.body.tipo;
    const cantidad = req.body.cantidad;
    const id_horario = req.body.id_horario;
 
    try {
       const result = await pool.query(`CALL spInsertHerramientas('${nombre}','${estado}','${tipo}','${cantidad}','${id_horario}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 };
 export const deleteHerramienta = async (req, res) => {
    const id = req.params.id;
    try {
       const result = await pool.query(`CALL spDeleteHerramientas(${id})`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateHerramienta = async (req, res) => {
    const id = req.params.id;
    const nombre = req.body.nombre;
    const estado = req.body.estado;
    const tipo = req.body.tipo;
    const cantidad = req.body.cantidad;
    const id_horario = req.body.id_horario;
 
    try {
       const result = await pool.query(`CALL spUpdateHerramientas(${id},'${nombre}','${estado}','${tipo}','${cantidad}','${id_horario}');`)
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };