/*
  Warnings:

  - You are about to drop the `Cancel` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Car` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Card` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Driver` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `DriverHasCar` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `DriverRecivesRequest` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GiftCard` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Passenger` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Payment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Paytm` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Request` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Trip` table. If the table is not empty, all the data it contains will be lost.

*/
-- CreateEnum
CREATE TYPE "UserType" AS ENUM ('RIDER', 'DRIVER');

-- CreateEnum
CREATE TYPE "BloodGroup" AS ENUM ('A_POSITIVE', 'A_NEGATIVE', 'B_POSITIVE', 'B_NEGATIVE', 'AB_POSITIVE', 'AB_NEGATIVE', 'O_POSITIVE', 'O_NEGATIVE');

-- DropForeignKey
ALTER TABLE "Cancel" DROP CONSTRAINT "Cancel_DRIVER_ID_fkey";

-- DropForeignKey
ALTER TABLE "Cancel" DROP CONSTRAINT "Cancel_REQ_ID_fkey";

-- DropForeignKey
ALTER TABLE "Cancel" DROP CONSTRAINT "Cancel_USER_ID_fkey";

-- DropForeignKey
ALTER TABLE "DriverHasCar" DROP CONSTRAINT "DriverHasCar_CAR_NUMS_fkey";

-- DropForeignKey
ALTER TABLE "DriverHasCar" DROP CONSTRAINT "DriverHasCar_DRIVER_IDS_fkey";

-- DropForeignKey
ALTER TABLE "DriverRecivesRequest" DROP CONSTRAINT "DriverRecivesRequest_DRIVER_IDS_fkey";

-- DropForeignKey
ALTER TABLE "DriverRecivesRequest" DROP CONSTRAINT "DriverRecivesRequest_REQ_ID_fkey";

-- DropForeignKey
ALTER TABLE "Payment" DROP CONSTRAINT "Payment_USER_ID_fkey";

-- DropForeignKey
ALTER TABLE "Request" DROP CONSTRAINT "Request_DRIVER_ID_fkey";

-- DropForeignKey
ALTER TABLE "Request" DROP CONSTRAINT "Request_TRIP_ID_fkey";

-- DropForeignKey
ALTER TABLE "Request" DROP CONSTRAINT "Request_USER_ID_fkey";

-- DropForeignKey
ALTER TABLE "Trip" DROP CONSTRAINT "Trip_DRIVER_ID_fkey";

-- DropTable
DROP TABLE "Cancel";

-- DropTable
DROP TABLE "Car";

-- DropTable
DROP TABLE "Card";

-- DropTable
DROP TABLE "Driver";

-- DropTable
DROP TABLE "DriverHasCar";

-- DropTable
DROP TABLE "DriverRecivesRequest";

-- DropTable
DROP TABLE "GiftCard";

-- DropTable
DROP TABLE "Passenger";

-- DropTable
DROP TABLE "Payment";

-- DropTable
DROP TABLE "Paytm";

-- DropTable
DROP TABLE "Request";

-- DropTable
DROP TABLE "Trip";

-- CreateTable
CREATE TABLE "User" (
    "user_id" SERIAL NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "phoneNo" TEXT NOT NULL,
    "verified" BOOLEAN NOT NULL DEFAULT false,
    "userType" "UserType" NOT NULL DEFAULT 'RIDER',
    "dob" TIMESTAMP(3) NOT NULL,
    "profileImage" TEXT,
    "bloodGroup" "BloodGroup",
    "registeredOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "User_pkey" PRIMARY KEY ("user_id")
);
