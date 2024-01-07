/* eslint-disable no-undef */
import { PrismaClient } from '@prisma/client';
import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';
// import bcrypt from 'bcrypt';
import express from 'express';

dotenv.config();
const prisma = new PrismaClient();
const app = express();
// const PORT = process.env.PORT || 3000;

app.use(express.json());

export const signup = async (req, res) => {
    try {
        const { firstName, lastName, phoneNo, email, userType, dob, bloodGroup, password,authType,identifier } = req.body;
        const newUser = await prisma.user.create({
            data: {
                firstName,
                lastName,
                phoneNo,
                dob,
                bloodGroup,
                email,
                userType,
                auth: {
                    create: {
                        password,
                        authType,identifier
                    }
                }
            },
        });
        res.json({ message: 'Signup successful', userId: newUser.id });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};

export const signin = async (req, res) => {
    try {
        const { email, phoneNo, password } = req.body;

        let user;

        // Check if email exists and authenticate based on email
        if (email) {
            user = await prisma.user.findUnique({
                where: { email },
                select: {
                    email: true,
                    // phoneNo: true,
                    auth: {
                        select: {
                            password: true,
                        },
                    },
                },
            });
        }

        // If email is not provided or user not found by email, try phone number
        if (!user && phoneNo) {
            user = await prisma.user.findUnique({
                where: { phoneNo }, select: {
                    // email: true,
                    phoneNo: true,
                    auth: {
                        select: {
                            password: true,
                        },
                    },
                },
            });
        }
        // console.log(userWithAuth);
        if (user) {
            const token = jwt.sign({ userId: user.id }, process.env.JWT_SECRET || '');
            res.json({message: 'Signin successful', token });
        } else {
            res.status(401).json({ error: 'Invalid credentials' });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};

export const signout = async (req, res) => {
    try {
        res.clearCookie('access_token');
        res.status(200).json("User has been logged out");
      } catch (error) {
        next(error);
      }
};