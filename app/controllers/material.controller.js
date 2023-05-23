//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";

//MATERIAL

export const findAllMaterial = async (req, res) => {

    try {
       const [rows] = await pool.query("CALL spFindAllMaterial();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findMaterial = async (req, res) => {
    const id= req.params.id;
    try {
       const [rows] = await pool.query(`CALL spFindMaterial(${id});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertMaterial = async (req, res) => {
    const nombre = req.body.nombre;
    const tipo = req.body.tipo;
    const estado = req.body.estado;
    const cantidad = req.body.cantidad;
    const color = req.body.color;
    const medida = req.body.medida;
    const id_horario = req.body.id_horario;
 
    try {
       const result = await pool.query(`CALL spInsertMaterial('${nombre}','${tipo}','${estado}','${cantidad}','${color}','${medida}',${id_horario});`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteMaterial = async (req, res) => {
    const id= req.params.id;
    try {
       const result = await pool.query(`CALL spDeleteMaterial(${id})`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateMaterial = async (req, res) => {
    const id= req.params.id;
    const nombre = req.body.nombre;
    const tipo = req.body.tipo;
    const estado = req.body.estado;
    const cantidad = req.body.cantidad;
    const color = req.body.color;
    const medida = req.body.medida;
    const id_horario = req.body.id_horario;
 
    try {
       const result = await pool.query(`CALL spUpdateMaterial(${id},'${nombre}','${tipo}','${estado}','${cantidad}','${color}','${medida}','${id_horario}');`);
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };