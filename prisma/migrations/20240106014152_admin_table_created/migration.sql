/*
  Warnings:

  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `bloodGroup` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `dob` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `firstName` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `lastName` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNo` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `profileImage` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `registeredOn` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `updatedOn` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `userType` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `verified` on the `User` table. All the data in the column will be lost.
  - Added the required column `DOB` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `FirstName` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `LastName` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PhoneNo` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "UserRole" AS ENUM ('ADMIN', 'REPRESENTATIVE');

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
DROP COLUMN "bloodGroup",
DROP COLUMN "dob",
DROP COLUMN "firstName",
DROP COLUMN "lastName",
DROP COLUMN "phoneNo",
DROP COLUMN "profileImage",
DROP COLUMN "registeredOn",
DROP COLUMN "updatedOn",
DROP COLUMN "userType",
DROP COLUMN "user_id",
DROP COLUMN "verified",
ADD COLUMN     "BloodGroup" "BloodGroup",
ADD COLUMN     "DOB" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "FirstName" TEXT NOT NULL,
ADD COLUMN     "LastName" TEXT NOT NULL,
ADD COLUMN     "PhoneNo" TEXT NOT NULL,
ADD COLUMN     "ProfileImage" TEXT,
ADD COLUMN     "RegisteredOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "UpdatedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "UserType" "UserType" NOT NULL DEFAULT 'RIDER',
ADD COLUMN     "User_id" SERIAL NOT NULL,
ADD COLUMN     "Verified" BOOLEAN NOT NULL DEFAULT false,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("User_id");

-- CreateTable
CREATE TABLE "Admin" (
    "Admin_id" SERIAL NOT NULL,
    "Name" TEXT NOT NULL,
    "Role" "UserRole" NOT NULL,
    "UserName" TEXT NOT NULL,
    "Password" TEXT NOT NULL,
    "isBanned" BOOLEAN NOT NULL DEFAULT false,
    "BannedReason" TEXT,
    "CreatedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "UpdatedOn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Admin_pkey" PRIMARY KEY ("Admin_id")
);
