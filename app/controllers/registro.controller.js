//  importamos la base de datos para hacer la consulta
import { pool } from "../config/database/db";


// ejecucion de procedimientos almacenados

//REGISTRO
export const findAllRegistro = async (req, res) => {

   try {
      const [rows] = await proyectoinsumos.query("CALL spFindAllRegistro();");
      res.json(rows);
   } catch (error) {
      console.error("Ha ocurrido un error");

   }
};

export const findRegistro = async (req, res) => {
   const id_registro = req.params.id_registro;
   try {
      const [rows] = await proyectoinsumos.query(`CALL spFindRegistro(${id_registro});`);
      res.json(rows);
   } catch (error) {
      console.error("Ha ocurrido un error");

   }
};
export const insertRegistro = async (req, res) => {
   const nombre = req.body.nombre;
   const apellido = req.body.apellido;
   const tipo_documento = req.body.tipo_documento;
   const numero_documento = req.body.numero_documento;
   const correo = req.body.correo;
   const telefono = req.body.telefono;
   const direccion = req.body.direccion;
   const jornada = req.body.jornada;
   const programa_formacion = req.body.programa_formacion;
   const numero_ficha = req.body.numero_ficha;
   const genero = req.body.genero;
   const contrasena = req.body.contrasena;

   try {
      const result = await proyectoinsumos.query(`CALL spInsertRegistro('${nombre}','${apellido}''${tipo_documento}','${numero_documento}'
       '${correo}','${telefono}''${direccion}','${jornada}''${programa_formacion}','${numero_ficha}','${genero}','${contrasena}');`);
      res.json(result);
   } catch (error) {
      console.error("Ha ocurrido un error" + error);
   }

};
export const deleteRegistro = async (req, res) => {
   const id_registro = req.params.id_registro;
   try {
      const result = await proyectoinsumos.query(`CALL spDeleteRegistro(${id_registro})`);
      if (result[0].affectedRows == 1)
         res.json(result);
      else
         res.json({ "Error": "no lo borro" });
   } catch (error) {
      console.error(error);

   }

};

export const updateRegistro = async (req, res) => {
   const id_registro = req.body.id_registro
   const nombre = req.body.nombre;
   const apellido = req.body.apellido;
   const tipo_documento = req.body.tipo_documento;
   const numero_documento = req.body.numero_documento;
   const correo = req.body.correo;
   const telefono = req.body.telefono;
   const direccion = req.body.direccion;
   const jornada = req.body.jornada;
   const programa_formacion = req.body.programa_formacion;
   const numero_ficha = req.body.numero_ficha;
   const genero = req.body.genero;
   const contrasena = req.body.contrasena;

   try {
      const result = await proyectoinsumos.query(`CALL spUpdateRegistro('${id_registro}','${nombre}','${apellido}''${tipo_documento}','${numero_documento}'
       '${correo}','${telefono}''${direccion}','${jornada}''${programa_formacion}','${numero_ficha}','${genero}','${contrasena}');`);
      if (result[0].affectedRows != 0)
         res.json(result);
      else
         res.json({ "Error": "NO ACTUALIZO" });

   } catch (error) {
      console.error(error);

   }
};