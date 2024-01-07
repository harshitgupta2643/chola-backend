/*
  Warnings:

  - Made the column `Password` on table `Auth` required. This step will fail if there are existing NULL values in that column.
  - Made the column `AadharVerifiedById` on table `User_Documents` required. This step will fail if there are existing NULL values in that column.
  - Made the column `PanVerifiedById` on table `User_Documents` required. This step will fail if there are existing NULL values in that column.
  - Made the column `LicenceVerifiedById` on table `User_Documents` required. This step will fail if there are existing NULL values in that column.

*/
-- CreateEnum
CREATE TYPE "RideStatus" AS ENUM ('Matching', 'Matched', 'RideStarted', 'Completed', 'Cancelled');

-- DropForeignKey
ALTER TABLE "User_Documents" DROP CONSTRAINT "User_Documents_AadharVerifiedById_fkey";

-- DropForeignKey
ALTER TABLE "User_Documents" DROP CONSTRAINT "User_Documents_LicenceVerifiedById_fkey";

-- DropForeignKey
ALTER TABLE "User_Documents" DROP CONSTRAINT "User_Documents_PanVerifiedById_fkey";

-- AlterTable
ALTER TABLE "Auth" ALTER COLUMN "Password" SET NOT NULL;

-- AlterTable
ALTER TABLE "User" ALTER COLUMN "UpdatedOn" DROP DEFAULT;

-- AlterTable
ALTER TABLE "User_Documents" ALTER COLUMN "AadharVerifiedById" SET NOT NULL,
ALTER COLUMN "PanVerifiedById" SET NOT NULL,
ALTER COLUMN "LicenceVerifiedById" SET NOT NULL;

-- CreateTable
CREATE TABLE "PaymentMethod" (
    "PaymentMethodId" SERIAL NOT NULL,
    "PaymentMethod" TEXT NOT NULL,
    "AddedById" INTEGER NOT NULL,
    "AddedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "UpdatedById" INTEGER NOT NULL,
    "UpdatedOn" TIMESTAMP(3) NOT NULL,
    "IsBanned" BOOLEAN NOT NULL DEFAULT false,
    "BannedById" INTEGER,
    "BannedReason" TEXT,

    CONSTRAINT "PaymentMethod_pkey" PRIMARY KEY ("PaymentMethodId")
);

-- CreateTable
CREATE TABLE "RideCancellationReason" (
    "CancellationReasonId" SERIAL NOT NULL,
    "Cause" TEXT NOT NULL,
    "AddedById" INTEGER NOT NULL,
    "AddedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "UpdatedById" INTEGER NOT NULL,
    "UpdatedOn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "RideCancellationReason_pkey" PRIMARY KEY ("CancellationReasonId")
);

-- CreateTable
CREATE TABLE "AllowedLocation" (
    "Location" TEXT NOT NULL,
    "AddedById" INTEGER NOT NULL,
    "AddedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "UpdatedById" INTEGER NOT NULL,
    "UpdatedOn" TIMESTAMP(3) NOT NULL,
    "IsBanned" BOOLEAN NOT NULL DEFAULT false,
    "BannedById" INTEGER NOT NULL,
    "BanReason" TEXT,

    CONSTRAINT "AllowedLocation_pkey" PRIMARY KEY ("Location")
);

-- CreateTable
CREATE TABLE "RideHistory" (
    "RideId" SERIAL NOT NULL,
    "RiderUserId" INTEGER NOT NULL,
    "DriverUserId" INTEGER NOT NULL,
    "VehicleTypeId" INTEGER NOT NULL,
    "PickupLocation" VARCHAR(255) NOT NULL,
    "DropLocation" VARCHAR(255) NOT NULL,
    "Fare" VARCHAR(50) NOT NULL,
    "PaymentMethodId" INTEGER NOT NULL,
    "Status" "RideStatus" NOT NULL,
    "CancelledReasonId" INTEGER,
    "RideRating" INTEGER NOT NULL,
    "CreatedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "RideHistory_pkey" PRIMARY KEY ("RideId")
);

-- CreateTable
CREATE TABLE "Vehicle_Documents" (
    "Document_id" SERIAL NOT NULL,
    "VehicleId" INTEGER NOT NULL,
    "UserId" INTEGER NOT NULL,
    "RCNo" TEXT NOT NULL,
    "RCExpiryDate" TIMESTAMP(3) NOT NULL,
    "RCImage" TEXT NOT NULL,
    "RCVerified" BOOLEAN NOT NULL DEFAULT false,
    "InsuranceProviderId" INTEGER NOT NULL,
    "Insurance" TEXT NOT NULL,
    "InsuranceExpiryDate" TIMESTAMP(3) NOT NULL,
    "InsuranceVerified" BOOLEAN DEFAULT false,
    "Pollution" TEXT NOT NULL,
    "PollutionExpiryDate" TIMESTAMP(3) NOT NULL,
    "PollutionVerified" BOOLEAN DEFAULT false,
    "RCVerifiedById" INTEGER NOT NULL,
    "InsuranceVerifiedById" INTEGER NOT NULL,
    "PollutionVerifiedById" INTEGER NOT NULL,

    CONSTRAINT "Vehicle_Documents_pkey" PRIMARY KEY ("Document_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "AllowedLocation_Location_key" ON "AllowedLocation"("Location");

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_AadharVerifiedById_fkey" FOREIGN KEY ("AadharVerifiedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_PanVerifiedById_fkey" FOREIGN KEY ("PanVerifiedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_LicenceVerifiedById_fkey" FOREIGN KEY ("LicenceVerifiedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PaymentMethod" ADD CONSTRAINT "PaymentMethod_AddedById_fkey" FOREIGN KEY ("AddedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PaymentMethod" ADD CONSTRAINT "PaymentMethod_UpdatedById_fkey" FOREIGN KEY ("UpdatedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PaymentMethod" ADD CONSTRAINT "PaymentMethod_BannedById_fkey" FOREIGN KEY ("BannedById") REFERENCES "Admin"("Admin_id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideCancellationReason" ADD CONSTRAINT "RideCancellationReason_AddedById_fkey" FOREIGN KEY ("AddedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideCancellationReason" ADD CONSTRAINT "RideCancellationReason_UpdatedById_fkey" FOREIGN KEY ("UpdatedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AllowedLocation" ADD CONSTRAINT "AllowedLocation_AddedById_fkey" FOREIGN KEY ("AddedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AllowedLocation" ADD CONSTRAINT "AllowedLocation_UpdatedById_fkey" FOREIGN KEY ("UpdatedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AllowedLocation" ADD CONSTRAINT "AllowedLocation_BannedById_fkey" FOREIGN KEY ("BannedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideHistory" ADD CONSTRAINT "RideHistory_RiderUserId_fkey" FOREIGN KEY ("RiderUserId") REFERENCES "User"("User_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideHistory" ADD CONSTRAINT "RideHistory_DriverUserId_fkey" FOREIGN KEY ("DriverUserId") REFERENCES "User"("User_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideHistory" ADD CONSTRAINT "RideHistory_VehicleTypeId_fkey" FOREIGN KEY ("VehicleTypeId") REFERENCES "VehicleTypes"("VehicleTypeId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideHistory" ADD CONSTRAINT "RideHistory_PaymentMethodId_fkey" FOREIGN KEY ("PaymentMethodId") REFERENCES "PaymentMethod"("PaymentMethodId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideHistory" ADD CONSTRAINT "RideHistory_CancelledReasonId_fkey" FOREIGN KEY ("CancelledReasonId") REFERENCES "RideCancellationReason"("CancellationReasonId") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_VehicleId_fkey" FOREIGN KEY ("VehicleId") REFERENCES "Vehicles"("VehicleId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES "User"("User_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_RCVerifiedById_fkey" FOREIGN KEY ("RCVerifiedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_InsuranceProviderId_fkey" FOREIGN KEY ("InsuranceProviderId") REFERENCES "InsuranceProvider"("ProviderId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_InsuranceVerifiedById_fkey" FOREIGN KEY ("InsuranceVerifiedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_PollutionVerifiedById_fkey" FOREIGN KEY ("PollutionVerifiedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;
