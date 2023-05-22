//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";


export const findAllRol = async (req, res) => {
   try {
      const [rows] = await pool.query("CALL spFindAllRol();");
      res.json(rows);
   } catch (error) {
      console.error(error);

   }
};

export const findRol = async (req, res) => {
   const id_rol = req.params.id_rol;
   try {
      const [rows] = await pool.query(`CALL spFindRol('${id_rol}');`);
      res.json(rows);
   } catch (error) {
      console.error("Ha ocurrido un error"+ error);

   }
};

export const insertRol = async (req, res) => {
   const nombre_rol = req.body.nombre_rol;
   const estado_rol = req.body.estado_rol;
 

   try {
      const result = await pool.query(`CALL spInsertRol('${nombre_rol}','${estado_rol}');`);
      res.json(result);
   } catch (error) {
      console.error("Ha ocurrido un error" + error);
   }

};
export const deleteRol = async (req, res) => {
   const id = req.params.id;
   try {
      const result = await pool.query(`CALL spDeleteRol(${id})`);
      if (result[0].affectedRows == 1)
         res.json(result);
      else
         res.json({ "Error": "no lo borro" });
   } catch (error) {
      console.error(error);

   }

};

export const updateRol = async (req, res) => {
   const id = req.params.id;
   const nombre_rol = req.body.nombre_rol;
   const estado_rol = req.body.estado_rol;

   try {
      const result = await pool.query(`CALL spUpdateRol(${id},'${nombre_rol}','${estado_rol}');`)
      if (result[0].affectedRows != 0)
         res.json(result);
      else
         res.json({ "Error": "NO ACTUALIZO" });

   } catch (error) {
      console.error(error);
   }
};
