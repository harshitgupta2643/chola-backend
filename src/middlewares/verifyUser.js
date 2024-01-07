/* eslint-disable no-undef */
import jwt from "jsonwebtoken";
import dotenv from "dotenv";
import { errorHandler } from "./error.js";
dotenv.config();
export const verifyToken= (req, res, next)=>{
    console.log('pehle');
    const token = req.cookies.token;
    console.log('hello');
    console.log(token);
    if(!token)
    {
        return next(/* The `errorHandler` function is a custom error handling function that is used to
        create and return an error object with a specified status code and error
        message. It takes two parameters: the status code and the error message. */
        errorHandler(401, 'Unauthorized'));
    }
    jwt.verify(token, process.env.JWT_SECRET, (err, user)=>{
        if(err) return next(errorHandler(403, 'Forbidden'));
        req.user = user;
        next();
    });
}