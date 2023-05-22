//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";


//AMBIENTES

export const findAllAmbientes = async (req, res) => {

    try {
       const [rows] = await proyectoinsumos.query("CALL spFindAllAmbientes();");
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const findAmbientes = async (req, res) => {
    const id_ambientes = req.params.id_ambientes;
    try {
       const [rows] = await proyectoinsumos.query(`CALL spFindAmbientes(${id_ambientes});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
 
    }
 };
 export const insertAmbientes = async (req, res) => {
    const cantidad_sillas = req.body.cantidad_sillas;
    const cantidad_mesas = req.body.cantidad_mesas;
    const num_aprendices = req.body.num_aprendices;
    const num_equipos = req.body.num_equipos;
 
    try {
       const result = await proyectoinsumos.query(`CALL spInsertAmbientes('${cantidad_sillas},${cantidad_mesas},${num_aprendices},${num_equipos}');`);
       res.json(result);
    } catch (error) {
       console.error("Ha ocurrido un error" + error);
    }
 
 };
 export const deleteAmbientes = async (req, res) => {
    const id_ambientes = req.params.id_ambientes;
    try {
       const result = await proyectoinsumos.query(`CALL spDeleteAmbientes(${id_ambientes})`);
       if (result[0].affectedRows == 1)
          res.json(result);
       else
          res.json({ "Error": "no lo borro" });
    } catch (error) {
       console.error(error);
 
    }
 
 };
 export const updateAmbientes = async (req, res) => {
 
    const id_ambientes = req.body.id_ambientes;
    const cantidad_sillas = req.body.cantidad_sillas;
    const cantidad_mesas = req.body.cantidad_mesas;
    const num_aprendices = req.body.num_aprendices;
    const num_equipos = req.body.num_equipos;
 
    try {
       const result = await proyectoinsumos.query(`CALL spUpdateAmbientes(${id_ambientes},${cantidad_sillas},${cantidad_mesas},${num_aprendices},${num_equipos}');`)
       if (result[0].affectedRows != 0)
          res.json(result);
       else
          res.json({ "Error": "NO ACTUALIZO" });
 
    } catch (error) {
       console.error(error);
 
    }
 };