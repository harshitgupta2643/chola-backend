import PrismaClient from '@prisma/client';
import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';
import bcrypt from 'bcrypt';
dotenv.config();
// import process from 'process';
const prisma = new PrismaClient();

export const signup = async (req, res) => {
    try {
        const { firstName, lastName, phoneNumber, email, dateOfBirth, gender, bloodType, password } = req.body;

        // Hash the password before storing it in the database
        const hashedPassword = await bcrypt.hash(password, 10);

        // Create a new user in the database
        const newUser = await prisma.user.create({
            data: {
                firstName,
                lastName,
                phoneNumber,
                email,
                dateOfBirth,
                gender,
                bloodType,
                password: hashedPassword
            }
        });

        res.json({ message: 'Signup successful', userId: newUser.id });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};
export const signin = async (req, res) => {
    try {
        const { email, phoneNumber, password } = req.body;

        // Check if the user exists in the database based on email or phone number and password
        const user = await prisma.User.findFirst({
            where: {
                OR: [
                    { email, password },
                    { phoneNumber, password }
                ]
            }
        });

        if (user) {
            // If the user exists and the password matches, sign in the user using JWT
            const token = jwt.sign({ userId: user.id }, process.env.JWT_SECRET);

            res.json({ token });
        } else {
            // If the user does not exist or the password does not match, send an error response
            res.status(401).json({ error: 'Invalid credentials' });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};

export const signout = async (req, res) => {
    try {
        const { userId } = req;

        // Invalidate the user's token by deleting it from the database
        await prisma.token.deleteMany({ where: { userId } });

        res.json({ message: 'Signout successful' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};

export const googleAuthController = async (req, res) => {
    try {
        const { email } = req.body;
        // Check if the email exists in the database
        const user = await prisma.user.findUnique({ where: { email } });
        /* eslint-env node */
        if (user) {
            // If the user already exists, sign in the user using JWT
            const token = jwt.sign({ userId: user.id }, process.env.JWT_SECRET);
            res.json({ token });
        } else {
            // If the user does not exist, create a new user with a random password and save it in the database
            const password = Math.random().toString(36).slice(-8);
            const newUser = await prisma.user.create({
                data: {
                    email,
                    password
                }
            });
            // Sign in the newly created user using JWT

            const token = jwt.sign({ userId: newUser.id }, process.env.JWT_SECRET);
            res.json({ token });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};
