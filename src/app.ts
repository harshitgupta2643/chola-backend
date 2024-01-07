import express from 'express';
import process from 'process';
import PrismaClient from '@prisma/client';
import userRouter from './routes/auth.router.js';
const app = express();
const prisma = new PrismaClient();
import dotenv from 'dotenv';
dotenv.config();
// Connect to the PostgreSQL database using Prisma where database url is 'Database_URL' ?
async function main() {
    // Example: Query data from the database
    const users = await prisma.user.create();
    console.log(users);    // Perform other operations (create, update, delete) as needed
    // Close the Prisma client connection when done
    await prisma.$disconnect();
}

main()
    .catch(e => {
        throw e;
    })
    .finally(async () => {
        await prisma.$disconnect();
    });
app.use(express.json());

// Root route
app.get('/', (req, res) => {
    res.send('Welcome to the root route!');
});

app.use('/api/user', userRouter);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});

app.use((err: Error, req: express.Request, res: express.Response, next: express.NextFunction) => {
    const statusCode: string = err.name;
    const message: string = err.message || 'Internal Server Error';
    return res.status(500).json({
        success: false,
        statusCode,
        message
    }), next();
});
// app.use((err:Error, req:, res,next)=>{
//     const statusCode = err.statusCode || 500;
//     const message = err.message || 'Internal Server Error';
//     return res.status(statusCode).json({
//         success: false,
//         statusCode,
//         message
//     }),
//     next()
// });