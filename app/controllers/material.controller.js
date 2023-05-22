//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";

//MATERIAL

export const findAllMaterial = async (req, res) => {

    try {
       const [rows] = await proyectoinsumos.query("CALL spFindAllMaterial();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findMaterial = async (req, res) => {
    const id_material = req.params.id_material;
    try {
       const [rows] = await proyectoinsumos.query(`CALL spFindMaterial(${id_material});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertMaterial = async (req, res) => {
    const nombre_material = req.body.nombre;
    const tipo_material = req.body.tipo;
    const estado_material = req.body.estado;
    const cantidad_material = req.body.cantidad;
    const color_material = req.body.color;
    const medida_material = req.body.medida;
 
    try {
       const result = await proyectoinsumos.query(`CALL spInsertMaterial('${nombre_material}','${tipo_material}','${estado_material}''${cantidad_material}','${color_material}','${medida_material}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteMaterial = async (req, res) => {
    const id_material = req.params.id_material;
    try {
       const result = await proyectoinsumos.query(`CALL spDeleteMaterial(${id_material})`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateMaterial = async (req, res) => {
    const id_material = req.params.id_material;
    const nombre_material = req.body.nombre;
    const tipo_material = req.body.tipo;
    const estado_material = req.body.estado;
    const cantidad_material = req.body.cantidad;
    const color_material = req.body.color;
    const medida_material = req.body.medida;
 
    try {
       const result = await proyectoinsumos.query(`CALL spUpdateMaterial(${id_material},'${nombre_material}','${tipo_material}','${estado_material}''${cantidad_material}','${color_material}','${medida_material}');`);
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };