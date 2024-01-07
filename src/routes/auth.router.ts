import express from 'express';
import {googleAuthController, signin, signout, signup} from '../controllers/auth.controller.js';
const router = express();
router.post('/signin', signin);
router.post('/signout', signout);
router.post('/signup', signup);
router.post('/googleAuth', googleAuthController);
export default router;