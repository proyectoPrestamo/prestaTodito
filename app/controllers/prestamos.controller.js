//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";


// ejecucion de procedimientos almacenados

//Prestamo
export const findAllPrestamos= async (req, res) => {

   try {
      const [rows] = await pool.query("CALL spFindAllPrestamo();");
      res.json(rows);
   } catch (error) {
      console.error("Ha ocurrido un error");

   }
};

export const findPrestamos= async (req, res) => {
   const id = req.params.id;
   try {
      const [rows] = await pool.query(`CALL spFindPrestamo(${id});`);
      res.json(rows);
   } catch (error) {
      console.error("Ha ocurrido un error");

   }
};
export const insertPrestamos= async (req, res) => {
   const id = req.params.id
   const fechaPrestamo = req.body.fechaPrestamo;
   const finalPrestamo = req.body.finalPrestamo;
   const final_prestamo = req.body.final_prestamo;
   const observaciones = req.body.observaciones;
   const id_usuario = req.body.id_usuario;



   try {
      const result = await pool.query(`CALL spInsertPrestamo('${id}','${fechaPrestamo}','${finalPrestamo}','${final_prestamo}','${observaciones}',
       '${id_usuario}');`);
      res.json(result);
   } catch (error) {
      console.error("Ha ocurrido un error" + error);
   }

};
export const deletePrestamos= async (req, res) => {
   const id = req.params.id;
   try {
      const result = await pool.query(`CALL spDeletePrestamo(${id})`);
      if (result[0].affectedRows == 1)
         res.json(result);
      else
         res.json({ "Error": "no lo borro" });
   } catch (error) {
      console.error(error);

   }

};

export const updatePrestamos= async (req, res) => {
   const id = req.params.id
   const fechaPrestamo = req.body.fechaPrestamo;
   const finalPrestamo = req.body.finalPrestamo;
   const final_prestamo = req.body.final_prestamo;
   const observaciones = req.body.observaciones;
   const id_usuario = req.body.id_usuario;


   try {
      const result = await pool.query(`CALL spUpdatePrestamo('${id}','${fechaPrestamo}','${finalPrestamo}','${final_prestamo}','${observaciones}',
       '${id_usuario});`);
      if (result[0].affectedRows != 0)
         res.json(result);
      else
         res.json({ "Error": "NO ACTUALIZO" });

   } catch (error) {
      console.error(error);

   }
};