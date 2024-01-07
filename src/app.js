/* eslint-disable no-undef */
/* eslint-disable @typescript-eslint/no-var-requires */
import express from "express";
import process_1 from "process";
import cookieParser from "cookie-parser";
import auth_router_js_1 from "./routes/auth.router.js";
var app = (0, express)();
import dotenv_1 from "dotenv";
dotenv_1.config();
//write a logic to check whether the prisma is connected or not in js
// import { PrismaClient } from '@prisma/client';

// const prisma = new PrismaClient();

// async function checkPostgreSQLConnection() {
//     try {
//         await prisma.$connect();
//         console.log('PostgreSQL connected!');
//         // Do something when connected
//     } catch (error) {
//         console.error('Error connecting to PostgreSQL:', error);
//         // Handle connection error
//     } finally {
//         await prisma.$disconnect();
//     }
// }

// // Call the function to check the connection
// checkPostgreSQLConnection();

// Root route
app.use(cookieParser());
app.use(express.json());
app.get('/', function (req, res) {
    res.send('CHOLA CHARIOTS');
});
app.use('/api/user', auth_router_js_1);
var PORT = process_1.env.PORT || 3000;
app.listen(PORT, function () {
    console.log("Server is running on port ".concat(PORT));
});
app.use(function (err, req, res, next) {
    var statusCode = err.name;
    var message = err.message || 'Internal Server Error';
    return res.status(500).json({
        success: false,
        statusCode: statusCode,
        message: message
    }), next();
});
