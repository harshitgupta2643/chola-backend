-- CreateTable
CREATE TABLE "User_Documents" (
    "Document_id" SERIAL NOT NULL,
    "AadharCardNo" TEXT NOT NULL,
    "AadharFront" TEXT NOT NULL,
    "AadharBack" TEXT NOT NULL,
    "AadharVerified" BOOLEAN NOT NULL DEFAULT false,
    "PanCardNo" TEXT,
    "PanImage" TEXT,
    "PanVerified" BOOLEAN DEFAULT false,
    "LicenceNo" TEXT,
    "LicenceImage" TEXT,
    "LicenceVerified" BOOLEAN DEFAULT false,
    "UserId" INTEGER NOT NULL,
    "AadharVerifiedById" INTEGER,
    "PanVerifiedById" INTEGER,
    "LicenceVerifiedById" INTEGER,

    CONSTRAINT "User_Documents_pkey" PRIMARY KEY ("Document_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_Documents_UserId_key" ON "User_Documents"("UserId");

-- CreateIndex
CREATE UNIQUE INDEX "User_Documents_AadharVerifiedById_key" ON "User_Documents"("AadharVerifiedById");

-- CreateIndex
CREATE UNIQUE INDEX "User_Documents_PanVerifiedById_key" ON "User_Documents"("PanVerifiedById");

-- CreateIndex
CREATE UNIQUE INDEX "User_Documents_LicenceVerifiedById_key" ON "User_Documents"("LicenceVerifiedById");

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_AadharVerifiedById_fkey" FOREIGN KEY ("AadharVerifiedById") REFERENCES "Admin"("Admin_id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_PanVerifiedById_fkey" FOREIGN KEY ("PanVerifiedById") REFERENCES "Admin"("Admin_id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_LicenceVerifiedById_fkey" FOREIGN KEY ("LicenceVerifiedById") REFERENCES "Admin"("Admin_id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User_Documents" ADD CONSTRAINT "User_Documents_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES "User"("User_id") ON DELETE RESTRICT ON UPDATE CASCADE;
