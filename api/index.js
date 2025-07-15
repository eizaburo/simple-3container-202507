const express = require("express");
const app = express();

const cors = require("cors");
app.use(cors());
app.use(express.json());

const { Pool } = require("pg");
const pool = new Pool({
    host: "my_db",
    database: "testdb",
    user: "dbuser",
    password: "postgres"
});

app.get("/", (req, res) => {
    res.send("Hello Node.js");
});

app.get("/inquiries", async (req, res) => {

    try {
        const result = await pool.query("select * from inquiries");
        res.json({ "message": "success", "data": result.rows, "ext": "hoge" });
    } catch (e) {
        res.json({ "message": "error", "data": e, "ext": "hoge" });
    }

});

app.listen(3000, () => {
    console.log("Start server.");
});