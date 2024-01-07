/* eslint-disable @typescript-eslint/no-unused-vars */
import { PrismaClient } from '@prisma/client';
import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';
// import bcrypt from 'bcrypt';
import express, { Request, Response } from 'express';

dotenv.config();
const prisma = new PrismaClient();
const app = express();
// const PORT = process.env.PORT || 3000;

app.use(express.json());

export const signup = async (req: Request, res: Response) => {
    try {
        const { firstName, lastName, phoneNo, dob, email,bloodGroup,userType } = req.body;
        const newUser = await prisma.user.create({
            data: {
                firstName,
                lastName,
                phoneNo,
                dob,
                bloodGroup,
                email,
                userType
            },
        });
        
        res.json({ message: 'Signup successful', userId: newUser.id });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};

export const signin = async (req: Request, res: Response) => {
    try {
        const { email, phoneNo } = req.body;
        const user = await prisma.user.findFirst({
            where: {
                OR: [
                    { email},{phoneNo}
                ],
            },
        });

        if (user) {
            const token = jwt.sign({ userId: user.id }, process.env.JWT_SECRET || '');
            res.json({ token });
        } else {
            res.status(401).json({ error: 'Invalid credentials' });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};

export const signout = async (req: Request, res: Response) => {
    try {
        const {id} = req.body;

        await prisma.user.deleteMany({ where: { id: id as number } });

        res.json({ message: 'Signout successful' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};

