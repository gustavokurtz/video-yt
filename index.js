import express from "express";

const app = express();

app.get("/", (req, res) => {
    res.json({
        message: "Hello Dev"
    });
});

app.listen(3001, () => {
    console.log("Server is running on port 3000");
});