/*
  Warnings:

  - The primary key for the `Admin` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `Admin_id` on the `Admin` table. All the data in the column will be lost.
  - You are about to drop the column `BannedReason` on the `Admin` table. All the data in the column will be lost.
  - You are about to drop the column `CreatedOn` on the `Admin` table. All the data in the column will be lost.
  - You are about to drop the column `Name` on the `Admin` table. All the data in the column will be lost.
  - You are about to drop the column `Password` on the `Admin` table. All the data in the column will be lost.
  - You are about to drop the column `Role` on the `Admin` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedOn` on the `Admin` table. All the data in the column will be lost.
  - You are about to drop the column `UserName` on the `Admin` table. All the data in the column will be lost.
  - The primary key for the `AdminPermissions` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `AddedOn` on the `AdminPermissions` table. All the data in the column will be lost.
  - You are about to drop the column `AdminId` on the `AdminPermissions` table. All the data in the column will be lost.
  - You are about to drop the column `Delete` on the `AdminPermissions` table. All the data in the column will be lost.
  - You are about to drop the column `Download` on the `AdminPermissions` table. All the data in the column will be lost.
  - You are about to drop the column `PermissionsId` on the `AdminPermissions` table. All the data in the column will be lost.
  - You are about to drop the column `Update` on the `AdminPermissions` table. All the data in the column will be lost.
  - You are about to drop the column `Write` on the `AdminPermissions` table. All the data in the column will be lost.
  - The primary key for the `AllowedLocation` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `AddedById` on the `AllowedLocation` table. All the data in the column will be lost.
  - You are about to drop the column `AddedOn` on the `AllowedLocation` table. All the data in the column will be lost.
  - You are about to drop the column `BanReason` on the `AllowedLocation` table. All the data in the column will be lost.
  - You are about to drop the column `BannedById` on the `AllowedLocation` table. All the data in the column will be lost.
  - You are about to drop the column `IsBanned` on the `AllowedLocation` table. All the data in the column will be lost.
  - You are about to drop the column `Location` on the `AllowedLocation` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedById` on the `AllowedLocation` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedOn` on the `AllowedLocation` table. All the data in the column will be lost.
  - The primary key for the `Auth` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `AuthType` on the `Auth` table. All the data in the column will be lost.
  - You are about to drop the column `Auth_id` on the `Auth` table. All the data in the column will be lost.
  - You are about to drop the column `Identifier` on the `Auth` table. All the data in the column will be lost.
  - You are about to drop the column `Password` on the `Auth` table. All the data in the column will be lost.
  - You are about to drop the column `Token` on the `Auth` table. All the data in the column will be lost.
  - You are about to drop the column `UserId` on the `Auth` table. All the data in the column will be lost.
  - The primary key for the `InsuranceProvider` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `AddedById` on the `InsuranceProvider` table. All the data in the column will be lost.
  - You are about to drop the column `AddedOn` on the `InsuranceProvider` table. All the data in the column will be lost.
  - You are about to drop the column `BannedById` on the `InsuranceProvider` table. All the data in the column will be lost.
  - You are about to drop the column `BannedReason` on the `InsuranceProvider` table. All the data in the column will be lost.
  - You are about to drop the column `IsBanned` on the `InsuranceProvider` table. All the data in the column will be lost.
  - You are about to drop the column `ProviderId` on the `InsuranceProvider` table. All the data in the column will be lost.
  - You are about to drop the column `ProviderName` on the `InsuranceProvider` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedById` on the `InsuranceProvider` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedOn` on the `InsuranceProvider` table. All the data in the column will be lost.
  - The primary key for the `PaymentMethod` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `AddedById` on the `PaymentMethod` table. All the data in the column will be lost.
  - You are about to drop the column `AddedOn` on the `PaymentMethod` table. All the data in the column will be lost.
  - You are about to drop the column `BannedById` on the `PaymentMethod` table. All the data in the column will be lost.
  - You are about to drop the column `BannedReason` on the `PaymentMethod` table. All the data in the column will be lost.
  - You are about to drop the column `IsBanned` on the `PaymentMethod` table. All the data in the column will be lost.
  - You are about to drop the column `PaymentMethod` on the `PaymentMethod` table. All the data in the column will be lost.
  - You are about to drop the column `PaymentMethodId` on the `PaymentMethod` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedById` on the `PaymentMethod` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedOn` on the `PaymentMethod` table. All the data in the column will be lost.
  - The primary key for the `RideCancellationReason` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `AddedById` on the `RideCancellationReason` table. All the data in the column will be lost.
  - You are about to drop the column `AddedOn` on the `RideCancellationReason` table. All the data in the column will be lost.
  - You are about to drop the column `CancellationReasonId` on the `RideCancellationReason` table. All the data in the column will be lost.
  - You are about to drop the column `Cause` on the `RideCancellationReason` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedById` on the `RideCancellationReason` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedOn` on the `RideCancellationReason` table. All the data in the column will be lost.
  - The primary key for the `RideHistory` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `CancelledReasonId` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `CreatedOn` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `DriverUserId` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `DropLocation` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `Fare` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `PaymentMethodId` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `PickupLocation` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `RideId` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `RideRating` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `RiderUserId` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `Status` on the `RideHistory` table. All the data in the column will be lost.
  - You are about to drop the column `VehicleTypeId` on the `RideHistory` table. All the data in the column will be lost.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `BloodGroup` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `DOB` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `FirstName` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `LastName` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `PhoneNo` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `ProfileImage` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `RegisteredOn` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedOn` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `UserType` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `User_id` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `Verified` on the `User` table. All the data in the column will be lost.
  - The primary key for the `User_Documents` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `AadharBack` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `AadharCardNo` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `AadharFront` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `AadharVerified` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `AadharVerifiedById` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `Document_id` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `LicenceImage` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `LicenceNo` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `LicenceVerified` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `LicenceVerifiedById` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `PanCardNo` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `PanImage` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `PanVerified` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `PanVerifiedById` on the `User_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `UserId` on the `User_Documents` table. All the data in the column will be lost.
  - The primary key for the `VehicleTypes` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `CreatedById` on the `VehicleTypes` table. All the data in the column will be lost.
  - You are about to drop the column `CreatedOn` on the `VehicleTypes` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedById` on the `VehicleTypes` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedOn` on the `VehicleTypes` table. All the data in the column will be lost.
  - You are about to drop the column `VehicleType` on the `VehicleTypes` table. All the data in the column will be lost.
  - You are about to drop the column `VehicleTypeId` on the `VehicleTypes` table. All the data in the column will be lost.
  - The primary key for the `Vehicle_Documents` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `Document_id` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `Insurance` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `InsuranceExpiryDate` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `InsuranceProviderId` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `InsuranceVerified` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `InsuranceVerifiedById` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `Pollution` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `PollutionExpiryDate` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `PollutionVerified` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `PollutionVerifiedById` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `RCExpiryDate` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `RCImage` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `RCNo` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `RCVerified` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `RCVerifiedById` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `UserId` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - You are about to drop the column `VehicleId` on the `Vehicle_Documents` table. All the data in the column will be lost.
  - The primary key for the `Vehicles` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `FuelType` on the `Vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `RegisteredOn` on the `Vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `UpdatedOn` on the `Vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `UserId` on the `Vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `VehicleId` on the `Vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `VehicleImages` on the `Vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `VehicleNo` on the `Vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `VehicleTypeId` on the `Vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `Verified` on the `Vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `VerifiedById` on the `Vehicles` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[adminId,id]` on the table `AdminPermissions` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[location]` on the table `AllowedLocation` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[identifier]` on the table `Auth` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[userId]` on the table `Auth` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[userId]` on the table `User_Documents` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[aadharVerifiedById]` on the table `User_Documents` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[panVerifiedById]` on the table `User_Documents` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[licenceVerifiedById]` on the table `User_Documents` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `name` to the `Admin` table without a default value. This is not possible if the table is not empty.
  - Added the required column `password` to the `Admin` table without a default value. This is not possible if the table is not empty.
  - Added the required column `role` to the `Admin` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedOn` to the `Admin` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userName` to the `Admin` table without a default value. This is not possible if the table is not empty.
  - Added the required column `adminId` to the `AdminPermissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `addedById` to the `AllowedLocation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bannedById` to the `AllowedLocation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `location` to the `AllowedLocation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedById` to the `AllowedLocation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedOn` to the `AllowedLocation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `authType` to the `Auth` table without a default value. This is not possible if the table is not empty.
  - Added the required column `identifier` to the `Auth` table without a default value. This is not possible if the table is not empty.
  - Added the required column `password` to the `Auth` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Auth` table without a default value. This is not possible if the table is not empty.
  - Added the required column `addedById` to the `InsuranceProvider` table without a default value. This is not possible if the table is not empty.
  - Added the required column `providerName` to the `InsuranceProvider` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedById` to the `InsuranceProvider` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedOn` to the `InsuranceProvider` table without a default value. This is not possible if the table is not empty.
  - Added the required column `addedById` to the `PaymentMethod` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paymentMethod` to the `PaymentMethod` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedById` to the `PaymentMethod` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedOn` to the `PaymentMethod` table without a default value. This is not possible if the table is not empty.
  - Added the required column `addedById` to the `RideCancellationReason` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cause` to the `RideCancellationReason` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedById` to the `RideCancellationReason` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedOn` to the `RideCancellationReason` table without a default value. This is not possible if the table is not empty.
  - Added the required column `driverUserId` to the `RideHistory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dropLocation` to the `RideHistory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `fare` to the `RideHistory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `paymentMethodId` to the `RideHistory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pickupLocation` to the `RideHistory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rideRating` to the `RideHistory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `riderUserId` to the `RideHistory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `RideHistory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `vehicleTypeId` to the `RideHistory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dob` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `firstName` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lastName` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phoneNo` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedOn` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userType` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `aadharBack` to the `User_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `aadharCardNo` to the `User_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `aadharFront` to the `User_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `aadharVerifiedById` to the `User_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `licenceVerifiedById` to the `User_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `panVerifiedById` to the `User_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `User_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdById` to the `VehicleTypes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedById` to the `VehicleTypes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedOn` to the `VehicleTypes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `vehicleType` to the `VehicleTypes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `insurance` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `insuranceExpiryDate` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `insuranceProviderId` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `insuranceVerifiedById` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pollution` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pollutionExpiryDate` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pollutionVerifiedById` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rcExpiryDate` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rcImage` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rcNo` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rcVerifiedById` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `vehicleId` to the `Vehicle_Documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `fuelType` to the `Vehicles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Vehicles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `vehicleNo` to the `Vehicles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `vehicleTypeId` to the `Vehicles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `verifiedById` to the `Vehicles` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "AdminPermissions" DROP CONSTRAINT "AdminPermissions_AdminId_fkey";

-- DropForeignKey
ALTER TABLE "AllowedLocation" DROP CONSTRAINT "AllowedLocation_AddedById_fkey";

-- DropForeignKey
ALTER TABLE "AllowedLocation" DROP CONSTRAINT "AllowedLocation_BannedById_fkey";

-- DropForeignKey
ALTER TABLE "AllowedLocation" DROP CONSTRAINT "AllowedLocation_UpdatedById_fkey";

-- DropForeignKey
ALTER TABLE "Auth" DROP CONSTRAINT "Auth_UserId_fkey";

-- DropForeignKey
ALTER TABLE "InsuranceProvider" DROP CONSTRAINT "InsuranceProvider_AddedById_fkey";

-- DropForeignKey
ALTER TABLE "InsuranceProvider" DROP CONSTRAINT "InsuranceProvider_BannedById_fkey";

-- DropForeignKey
ALTER TABLE "InsuranceProvider" DROP CONSTRAINT "InsuranceProvider_UpdatedById_fkey";

-- DropForeignKey
ALTER TABLE "PaymentMethod" DROP CONSTRAINT "PaymentMethod_AddedById_fkey";

-- DropForeignKey
ALTER TABLE "PaymentMethod" DROP CONSTRAINT "PaymentMethod_BannedById_fkey";

-- DropForeignKey
ALTER TABLE "PaymentMethod" DROP CONSTRAINT "PaymentMethod_UpdatedById_fkey";

-- DropForeignKey
ALTER TABLE "RideCancellationReason" DROP CONSTRAINT "RideCancellationReason_AddedById_fkey";

-- DropForeignKey
ALTER TABLE "RideCancellationReason" DROP CONSTRAINT "RideCancellationReason_UpdatedById_fkey";

-- DropForeignKey
ALTER TABLE "RideHistory" DROP CONSTRAINT "RideHistory_CancelledReasonId_fkey";

-- DropForeignKey
ALTER TABLE "RideHistory" DROP CONSTRAINT "RideHistory_DriverUserId_fkey";

-- DropForeignKey
ALTER TABLE "RideHistory" DROP CONSTRAINT "RideHistory_PaymentMethodId_fkey";

-- DropForeignKey
ALTER TABLE "RideHistory" DROP CONSTRAINT "RideHistory_RiderUserId_fkey";

-- DropForeignKey
ALTER TABLE "RideHistory" DROP CONSTRAINT "RideHistory_VehicleTypeId_fkey";

-- DropForeignKey
ALTER TABLE "User_Documents" DROP CONSTRAINT "User_Documents_AadharVerifiedById_fkey";

-- DropForeignKey
ALTER TABLE "User_Documents" DROP CONSTRAINT "User_Documents_LicenceVerifiedById_fkey";

-- DropForeignKey
ALTER TABLE "User_Documents" DROP CONSTRAINT "User_Documents_PanVerifiedById_fkey";

-- DropForeignKey
ALTER TABLE "User_Documents" DROP CONSTRAINT "User_Documents_UserId_fkey";

-- DropForeignKey
ALTER TABLE "VehicleTypes" DROP CONSTRAINT "VehicleTypes_CreatedById_fkey";

-- DropForeignKey
ALTER TABLE "VehicleTypes" DROP CONSTRAINT "VehicleTypes_UpdatedById_fkey";

-- DropForeignKey
ALTER TABLE "Vehicle_Documents" DROP CONSTRAINT "Vehicle_Documents_InsuranceProviderId_fkey";

-- DropForeignKey
ALTER TABLE "Vehicle_Documents" DROP CONSTRAINT "Vehicle_Documents_InsuranceVerifiedById_fkey";

-- DropForeignKey
ALTER TABLE "Vehicle_Documents" DROP CONSTRAINT "Vehicle_Documents_PollutionVerifiedById_fkey";

-- DropForeignKey
ALTER TABLE "Vehicle_Documents" DROP CONSTRAINT "Vehicle_Documents_RCVerifiedById_fkey";

-- DropForeignKey
ALTER TABLE "Vehicle_Documents" DROP CONSTRAINT "Vehicle_Documents_UserId_fkey";

-- DropForeignKey
ALTER TABLE "Vehicle_Documents" DROP CONSTRAINT "Vehicle_Documents_VehicleId_fkey";

-- DropForeignKey
ALTER TABLE "Vehicles" DROP CONSTRAINT "Vehicles_UserId_fkey";

-- DropForeignKey
ALTER TABLE "Vehicles" DROP CONSTRAINT "Vehicles_VehicleTypeId_fkey";

-- DropForeignKey
ALTER TABLE "Vehicles" DROP CONSTRAINT "Vehicles_VerifiedById_fkey";

-- DropIndex
DROP INDEX "AdminPermissions_AdminId_PermissionsId_key";

-- DropIndex
DROP INDEX "AllowedLocation_Location_key";

-- DropIndex
DROP INDEX "Auth_Identifier_key";

-- DropIndex
DROP INDEX "Auth_UserId_key";

-- DropIndex
DROP INDEX "User_Documents_AadharVerifiedById_key";

-- DropIndex
DROP INDEX "User_Documents_LicenceVerifiedById_key";

-- DropIndex
DROP INDEX "User_Documents_PanVerifiedById_key";

-- DropIndex
DROP INDEX "User_Documents_UserId_key";

-- AlterTable
ALTER TABLE "Admin" DROP CONSTRAINT "Admin_pkey",
DROP COLUMN "Admin_id",
DROP COLUMN "BannedReason",
DROP COLUMN "CreatedOn",
DROP COLUMN "Name",
DROP COLUMN "Password",
DROP COLUMN "Role",
DROP COLUMN "UpdatedOn",
DROP COLUMN "UserName",
ADD COLUMN     "bannedReason" TEXT,
ADD COLUMN     "createdOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "password" TEXT NOT NULL,
ADD COLUMN     "role" INTEGER NOT NULL,
ADD COLUMN     "updatedOn" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "userName" TEXT NOT NULL,
ADD CONSTRAINT "Admin_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "AdminPermissions" DROP CONSTRAINT "AdminPermissions_pkey",
DROP COLUMN "AddedOn",
DROP COLUMN "AdminId",
DROP COLUMN "Delete",
DROP COLUMN "Download",
DROP COLUMN "PermissionsId",
DROP COLUMN "Update",
DROP COLUMN "Write",
ADD COLUMN     "addedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "adminId" INTEGER NOT NULL,
ADD COLUMN     "delete" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "download" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "update" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "write" BOOLEAN NOT NULL DEFAULT false,
ADD CONSTRAINT "AdminPermissions_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "AllowedLocation" DROP CONSTRAINT "AllowedLocation_pkey",
DROP COLUMN "AddedById",
DROP COLUMN "AddedOn",
DROP COLUMN "BanReason",
DROP COLUMN "BannedById",
DROP COLUMN "IsBanned",
DROP COLUMN "Location",
DROP COLUMN "UpdatedById",
DROP COLUMN "UpdatedOn",
ADD COLUMN     "addedById" INTEGER NOT NULL,
ADD COLUMN     "addedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "banReason" TEXT,
ADD COLUMN     "bannedById" INTEGER NOT NULL,
ADD COLUMN     "isBanned" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "location" TEXT NOT NULL,
ADD COLUMN     "updatedById" INTEGER NOT NULL,
ADD COLUMN     "updatedOn" TIMESTAMP(3) NOT NULL,
ADD CONSTRAINT "AllowedLocation_pkey" PRIMARY KEY ("location");

-- AlterTable
ALTER TABLE "Auth" DROP CONSTRAINT "Auth_pkey",
DROP COLUMN "AuthType",
DROP COLUMN "Auth_id",
DROP COLUMN "Identifier",
DROP COLUMN "Password",
DROP COLUMN "Token",
DROP COLUMN "UserId",
ADD COLUMN     "authType" INTEGER NOT NULL,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "identifier" TEXT NOT NULL,
ADD COLUMN     "password" TEXT NOT NULL,
ADD COLUMN     "token" TEXT,
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "Auth_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "InsuranceProvider" DROP CONSTRAINT "InsuranceProvider_pkey",
DROP COLUMN "AddedById",
DROP COLUMN "AddedOn",
DROP COLUMN "BannedById",
DROP COLUMN "BannedReason",
DROP COLUMN "IsBanned",
DROP COLUMN "ProviderId",
DROP COLUMN "ProviderName",
DROP COLUMN "UpdatedById",
DROP COLUMN "UpdatedOn",
ADD COLUMN     "addedById" INTEGER NOT NULL,
ADD COLUMN     "addedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "bannedById" INTEGER,
ADD COLUMN     "bannedReason" TEXT,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "isBanned" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "providerName" TEXT NOT NULL,
ADD COLUMN     "updatedById" INTEGER NOT NULL,
ADD COLUMN     "updatedOn" TIMESTAMP(3) NOT NULL,
ADD CONSTRAINT "InsuranceProvider_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "PaymentMethod" DROP CONSTRAINT "PaymentMethod_pkey",
DROP COLUMN "AddedById",
DROP COLUMN "AddedOn",
DROP COLUMN "BannedById",
DROP COLUMN "BannedReason",
DROP COLUMN "IsBanned",
DROP COLUMN "PaymentMethod",
DROP COLUMN "PaymentMethodId",
DROP COLUMN "UpdatedById",
DROP COLUMN "UpdatedOn",
ADD COLUMN     "addedById" INTEGER NOT NULL,
ADD COLUMN     "addedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "bannedById" INTEGER,
ADD COLUMN     "bannedReason" TEXT,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "isBanned" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "paymentMethod" TEXT NOT NULL,
ADD COLUMN     "updatedById" INTEGER NOT NULL,
ADD COLUMN     "updatedOn" TIMESTAMP(3) NOT NULL,
ADD CONSTRAINT "PaymentMethod_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "RideCancellationReason" DROP CONSTRAINT "RideCancellationReason_pkey",
DROP COLUMN "AddedById",
DROP COLUMN "AddedOn",
DROP COLUMN "CancellationReasonId",
DROP COLUMN "Cause",
DROP COLUMN "UpdatedById",
DROP COLUMN "UpdatedOn",
ADD COLUMN     "addedById" INTEGER NOT NULL,
ADD COLUMN     "addedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "cause" TEXT NOT NULL,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "updatedById" INTEGER NOT NULL,
ADD COLUMN     "updatedOn" TIMESTAMP(3) NOT NULL,
ADD CONSTRAINT "RideCancellationReason_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "RideHistory" DROP CONSTRAINT "RideHistory_pkey",
DROP COLUMN "CancelledReasonId",
DROP COLUMN "CreatedOn",
DROP COLUMN "DriverUserId",
DROP COLUMN "DropLocation",
DROP COLUMN "Fare",
DROP COLUMN "PaymentMethodId",
DROP COLUMN "PickupLocation",
DROP COLUMN "RideId",
DROP COLUMN "RideRating",
DROP COLUMN "RiderUserId",
DROP COLUMN "Status",
DROP COLUMN "VehicleTypeId",
ADD COLUMN     "cancelledReasonId" INTEGER,
ADD COLUMN     "createdOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "driverUserId" INTEGER NOT NULL,
ADD COLUMN     "dropLocation" VARCHAR(255) NOT NULL,
ADD COLUMN     "fare" VARCHAR(50) NOT NULL,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "paymentMethodId" INTEGER NOT NULL,
ADD COLUMN     "pickupLocation" VARCHAR(255) NOT NULL,
ADD COLUMN     "rideRating" INTEGER NOT NULL,
ADD COLUMN     "riderUserId" INTEGER NOT NULL,
ADD COLUMN     "status" INTEGER NOT NULL,
ADD COLUMN     "vehicleTypeId" INTEGER NOT NULL,
ADD CONSTRAINT "RideHistory_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
DROP COLUMN "BloodGroup",
DROP COLUMN "DOB",
DROP COLUMN "FirstName",
DROP COLUMN "LastName",
DROP COLUMN "PhoneNo",
DROP COLUMN "ProfileImage",
DROP COLUMN "RegisteredOn",
DROP COLUMN "UpdatedOn",
DROP COLUMN "UserType",
DROP COLUMN "User_id",
DROP COLUMN "Verified",
ADD COLUMN     "bloodGroup" INTEGER,
ADD COLUMN     "dob" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "firstName" TEXT NOT NULL,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "lastName" TEXT NOT NULL,
ADD COLUMN     "phoneNo" TEXT NOT NULL,
ADD COLUMN     "profileImage" TEXT,
ADD COLUMN     "registeredOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedOn" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "userType" INTEGER NOT NULL,
ADD COLUMN     "verified" BOOLEAN NOT NULL DEFAULT false,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "User_Documents" DROP CONSTRAINT "User_Documents_pkey",
DROP COLUMN "AadharBack",
DROP COLUMN "AadharCardNo",
DROP COLUMN "AadharFront",
DROP COLUMN "AadharVerified",
DROP COLUMN "AadharVerifiedById",
DROP COLUMN "Document_id",
DROP COLUMN "LicenceImage",
DROP COLUMN "LicenceNo",
DROP COLUMN "LicenceVerified",
DROP COLUMN "LicenceVerifiedById",
DROP COLUMN "PanCardNo",
DROP COLUMN "PanImage",
DROP COLUMN "PanVerified",
DROP COLUMN "PanVerifiedById",
DROP COLUMN "UserId",
ADD COLUMN     "aadharBack" TEXT NOT NULL,
ADD COLUMN     "aadharCardNo" TEXT NOT NULL,
ADD COLUMN     "aadharFront" TEXT NOT NULL,
ADD COLUMN     "aadharVerified" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "aadharVerifiedById" INTEGER NOT NULL,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "licenceImage" TEXT,
ADD COLUMN     "licenceNo" TEXT,
ADD COLUMN     "licenceVerified" BOOLEAN DEFAULT false,
ADD COLUMN     "licenceVerifiedById" INTEGER NOT NULL,
ADD COLUMN     "panCardNo" TEXT,
ADD COLUMN     "panImage" TEXT,
ADD COLUMN     "panVerified" BOOLEAN DEFAULT false,
ADD COLUMN     "panVerifiedById" INTEGER NOT NULL,
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "User_Documents_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "VehicleTypes" DROP CONSTRAINT "VehicleTypes_pkey",
DROP COLUMN "CreatedById",
DROP COLUMN "CreatedOn",
DROP COLUMN "UpdatedById",
DROP COLUMN "UpdatedOn",
DROP COLUMN "VehicleType",
DROP COLUMN "VehicleTypeId",
ADD COLUMN     "createdById" INTEGER NOT NULL,
ADD COLUMN     "createdOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "updatedById" INTEGER NOT NULL,
ADD COLUMN     "updatedOn" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "vehicleType" TEXT NOT NULL,
ADD CONSTRAINT "VehicleTypes_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Vehicle_Documents" DROP CONSTRAINT "Vehicle_Documents_pkey",
DROP COLUMN "Document_id",
DROP COLUMN "Insurance",
DROP COLUMN "InsuranceExpiryDate",
DROP COLUMN "InsuranceProviderId",
DROP COLUMN "InsuranceVerified",
DROP COLUMN "InsuranceVerifiedById",
DROP COLUMN "Pollution",
DROP COLUMN "PollutionExpiryDate",
DROP COLUMN "PollutionVerified",
DROP COLUMN "PollutionVerifiedById",
DROP COLUMN "RCExpiryDate",
DROP COLUMN "RCImage",
DROP COLUMN "RCNo",
DROP COLUMN "RCVerified",
DROP COLUMN "RCVerifiedById",
DROP COLUMN "UserId",
DROP COLUMN "VehicleId",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "insurance" TEXT NOT NULL,
ADD COLUMN     "insuranceExpiryDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "insuranceProviderId" INTEGER NOT NULL,
ADD COLUMN     "insuranceVerified" BOOLEAN DEFAULT false,
ADD COLUMN     "insuranceVerifiedById" INTEGER NOT NULL,
ADD COLUMN     "pollution" TEXT NOT NULL,
ADD COLUMN     "pollutionExpiryDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "pollutionVerified" BOOLEAN DEFAULT false,
ADD COLUMN     "pollutionVerifiedById" INTEGER NOT NULL,
ADD COLUMN     "rcExpiryDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "rcImage" TEXT NOT NULL,
ADD COLUMN     "rcNo" TEXT NOT NULL,
ADD COLUMN     "rcVerified" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "rcVerifiedById" INTEGER NOT NULL,
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD COLUMN     "vehicleId" INTEGER NOT NULL,
ADD CONSTRAINT "Vehicle_Documents_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Vehicles" DROP CONSTRAINT "Vehicles_pkey",
DROP COLUMN "FuelType",
DROP COLUMN "RegisteredOn",
DROP COLUMN "UpdatedOn",
DROP COLUMN "UserId",
DROP COLUMN "VehicleId",
DROP COLUMN "VehicleImages",
DROP COLUMN "VehicleNo",
DROP COLUMN "VehicleTypeId",
DROP COLUMN "Verified",
DROP COLUMN "VerifiedById",
ADD COLUMN     "fuelType" INTEGER NOT NULL,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "registeredOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD COLUMN     "vehicleImages" TEXT[],
ADD COLUMN     "vehicleNo" TEXT NOT NULL,
ADD COLUMN     "vehicleTypeId" INTEGER NOT NULL,
ADD COLUMN     "verified" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "verifiedById" INTEGER NOT NULL,
ADD CONSTRAINT "Vehicles_pkey" PRIMARY KEY ("id");

-- DropEnum
DROP TYPE "AuthType";

-- DropEnum
DROP TYPE "BloodGroup";

-- DropEnum
DROP TYPE "FuelType";

-- DropEnum
DROP TYPE "RideStatus";

-- DropEnum
DROP TYPE "UserRole";

-- DropEnum
DROP TYPE "UserType";

-- CreateIndex
CREATE UNIQUE INDEX "AdminPermissions_adminId_id_key" ON "AdminPermissions"("adminId", "id");

-- CreateIndex
CREATE UNIQUE INDEX "AllowedLocation_location_key" ON "AllowedLocation"("location");

-- CreateIndex
CREATE UNIQUE INDEX "Auth_identifier_key" ON "Auth"("identifier");

-- CreateIndex
CREATE UNIQUE INDEX "Auth_userId_key" ON "Auth"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "User_Documents_userId_key" ON "User_Documents"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "User_Documents_aadharVerifiedById_key" ON "User_Documents"("aadharVerifiedById");

-- CreateIndex
CREATE UNIQUE INDEX "User_Documents_panVerifiedById_key" ON "User_Documents"("panVerifiedById");

-- CreateIndex
CREATE UNIQUE INDEX "User_Documents_licenceVerifiedById_key" ON "User_Documents"("licenceVerifiedById");

-- AddForeignKey
ALTER TABLE "Auth" ADD CONSTRAINT "Auth_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_aadharVerifiedById_fkey" FOREIGN KEY ("aadharVerifiedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_panVerifiedById_fkey" FOREIGN KEY ("panVerifiedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_licenceVerifiedById_fkey" FOREIGN KEY ("licenceVerifiedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VehicleTypes" ADD CONSTRAINT "VehicleTypes_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VehicleTypes" ADD CONSTRAINT "VehicleTypes_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicles" ADD CONSTRAINT "Vehicles_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicles" ADD CONSTRAINT "Vehicles_vehicleTypeId_fkey" FOREIGN KEY ("vehicleTypeId") REFERENCES "VehicleTypes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicles" ADD CONSTRAINT "Vehicles_verifiedById_fkey" FOREIGN KEY ("verifiedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AdminPermissions" ADD CONSTRAINT "AdminPermissions_adminId_fkey" FOREIGN KEY ("adminId") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "InsuranceProvider" ADD CONSTRAINT "InsuranceProvider_addedById_fkey" FOREIGN KEY ("addedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "InsuranceProvider" ADD CONSTRAINT "InsuranceProvider_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "InsuranceProvider" ADD CONSTRAINT "InsuranceProvider_bannedById_fkey" FOREIGN KEY ("bannedById") REFERENCES "Admin"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PaymentMethod" ADD CONSTRAINT "PaymentMethod_addedById_fkey" FOREIGN KEY ("addedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PaymentMethod" ADD CONSTRAINT "PaymentMethod_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PaymentMethod" ADD CONSTRAINT "PaymentMethod_bannedById_fkey" FOREIGN KEY ("bannedById") REFERENCES "Admin"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideCancellationReason" ADD CONSTRAINT "RideCancellationReason_addedById_fkey" FOREIGN KEY ("addedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideCancellationReason" ADD CONSTRAINT "RideCancellationReason_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AllowedLocation" ADD CONSTRAINT "AllowedLocation_addedById_fkey" FOREIGN KEY ("addedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AllowedLocation" ADD CONSTRAINT "AllowedLocation_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AllowedLocation" ADD CONSTRAINT "AllowedLocation_bannedById_fkey" FOREIGN KEY ("bannedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideHistory" ADD CONSTRAINT "RideHistory_riderUserId_fkey" FOREIGN KEY ("riderUserId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideHistory" ADD CONSTRAINT "RideHistory_driverUserId_fkey" FOREIGN KEY ("driverUserId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideHistory" ADD CONSTRAINT "RideHistory_vehicleTypeId_fkey" FOREIGN KEY ("vehicleTypeId") REFERENCES "VehicleTypes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideHistory" ADD CONSTRAINT "RideHistory_paymentMethodId_fkey" FOREIGN KEY ("paymentMethodId") REFERENCES "PaymentMethod"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RideHistory" ADD CONSTRAINT "RideHistory_cancelledReasonId_fkey" FOREIGN KEY ("cancelledReasonId") REFERENCES "RideCancellationReason"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_vehicleId_fkey" FOREIGN KEY ("vehicleId") REFERENCES "Vehicles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_rcVerifiedById_fkey" FOREIGN KEY ("rcVerifiedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_insuranceProviderId_fkey" FOREIGN KEY ("insuranceProviderId") REFERENCES "InsuranceProvider"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_insuranceVerifiedById_fkey" FOREIGN KEY ("insuranceVerifiedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicle_Documents" ADD CONSTRAINT "Vehicle_Documents_pollutionVerifiedById_fkey" FOREIGN KEY ("pollutionVerifiedById") REFERENCES "Admin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
