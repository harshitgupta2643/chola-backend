/* eslint-disable no-undef */
import express from "express";
import {signin, signout, signup} from "../controllers/auth.controller.js";
import { verifyToken } from "../middlewares/verifyUser.js";
const router = express.Router();

// router.post('/signup', signup);
// router.post('/signin', signin);
router.post('/signout', signout);
router.post('/signin', verifyToken,signin);
router.post('/signup', signup);
export default router;
