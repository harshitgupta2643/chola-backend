-- CreateEnum
CREATE TYPE "FuelType" AS ENUM ('PETROL', 'DIESEL', 'CNG', 'ELECTRIC');

-- CreateTable
CREATE TABLE "VehicleTypes" (
    "VehicleTypeId" SERIAL NOT NULL,
    "VehicleType" TEXT NOT NULL,
    "CreatedById" INTEGER NOT NULL,
    "CreatedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "UpdatedById" INTEGER NOT NULL,
    "UpdatedOn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "VehicleTypes_pkey" PRIMARY KEY ("VehicleTypeId")
);

-- CreateTable
CREATE TABLE "Vehicles" (
    "VehicleId" SERIAL NOT NULL,
    "UserId" INTEGER NOT NULL,
    "VehicleTypeId" INTEGER NOT NULL,
    "FuelType" "FuelType" NOT NULL,
    "VehicleNo" TEXT NOT NULL,
    "Verified" BOOLEAN NOT NULL DEFAULT false,
    "VehicleImages" TEXT[],
    "RegisteredOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "UpdatedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "VerifiedById" INTEGER NOT NULL,

    CONSTRAINT "Vehicles_pkey" PRIMARY KEY ("VehicleId")
);

-- CreateTable
CREATE TABLE "AdminPermissions" (
    "PermissionsId" SERIAL NOT NULL,
    "AdminId" INTEGER NOT NULL,
    "Write" BOOLEAN NOT NULL DEFAULT false,
    "Update" BOOLEAN NOT NULL DEFAULT false,
    "Delete" BOOLEAN NOT NULL DEFAULT false,
    "Download" BOOLEAN NOT NULL DEFAULT false,
    "AddedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "AdminPermissions_pkey" PRIMARY KEY ("PermissionsId")
);

-- CreateTable
CREATE TABLE "InsuranceProvider" (
    "ProviderId" SERIAL NOT NULL,
    "ProviderName" TEXT NOT NULL,
    "AddedById" INTEGER NOT NULL,
    "AddedOn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "UpdatedById" INTEGER NOT NULL,
    "UpdatedOn" TIMESTAMP(3) NOT NULL,
    "IsBanned" BOOLEAN NOT NULL DEFAULT false,
    "BannedById" INTEGER,
    "BannedReason" TEXT,

    CONSTRAINT "InsuranceProvider_pkey" PRIMARY KEY ("ProviderId")
);

-- CreateIndex
CREATE UNIQUE INDEX "AdminPermissions_AdminId_PermissionsId_key" ON "AdminPermissions"("AdminId", "PermissionsId");

-- AddForeignKey
ALTER TABLE "VehicleTypes" ADD CONSTRAINT "VehicleTypes_CreatedById_fkey" FOREIGN KEY ("CreatedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VehicleTypes" ADD CONSTRAINT "VehicleTypes_UpdatedById_fkey" FOREIGN KEY ("UpdatedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicles" ADD CONSTRAINT "Vehicles_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES "User"("User_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicles" ADD CONSTRAINT "Vehicles_VehicleTypeId_fkey" FOREIGN KEY ("VehicleTypeId") REFERENCES "VehicleTypes"("VehicleTypeId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vehicles" ADD CONSTRAINT "Vehicles_VerifiedById_fkey" FOREIGN KEY ("VerifiedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AdminPermissions" ADD CONSTRAINT "AdminPermissions_AdminId_fkey" FOREIGN KEY ("AdminId") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "InsuranceProvider" ADD CONSTRAINT "InsuranceProvider_AddedById_fkey" FOREIGN KEY ("AddedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "InsuranceProvider" ADD CONSTRAINT "InsuranceProvider_UpdatedById_fkey" FOREIGN KEY ("UpdatedById") REFERENCES "Admin"("Admin_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "InsuranceProvider" ADD CONSTRAINT "InsuranceProvider_BannedById_fkey" FOREIGN KEY ("BannedById") REFERENCES "Admin"("Admin_id") ON DELETE SET NULL ON UPDATE CASCADE;
