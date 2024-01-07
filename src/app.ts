import express from 'express';
import process from 'process';
import userRouter from './routes/auth.router.js';
const app = express();
import dotenv from 'dotenv';
dotenv.config();




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
