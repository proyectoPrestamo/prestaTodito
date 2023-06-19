import { pool } from "../config/database/db";


export const findUser = async(req, res) => {
    const id = req.params.id;
    try {
    const[rows] = await pool.query(`CALL spFindUser(${id});`);
       res.json(rows);
    } catch (error) {
       console.error("Ha ocurrido un error");
       
    }
 };