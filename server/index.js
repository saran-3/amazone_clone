console.log("Hello World")

// IMPORT PACKAGES
const express = require('express');
const mongoose = require('mongoose');

// IMPORTS FROM OTHER FILES
const authRouter = require("./routes/auth");

// INIT
const PORT =  8000;
const app = express();
const DB = "mongodb+srv://umsrn333:allinall@cluster0.y0r6fhf.mongodb.net/?retryWrites=true&w=majority";

// MIDDLEWARE
app.use(express.json());
app.use(authRouter);

// CONNECTIONS
mongoose.connect(DB).then(() => {
    console.log("Connection Succesful");

}).catch((e) => {
    console.log(e);
});

// app.get("/hello-world", (req, res) => {
//     res.send("hello world");
// })

// app.get("/", (req, res) => {
//     res.json({name : "saran"});
// })

// CREATING AN API
app.listen(PORT, "0.0.0.0" , () => {
    console.log(`connected at port ${PORT} `);
})