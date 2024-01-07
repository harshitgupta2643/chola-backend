-- CreateEnum
CREATE TYPE "AuthType" AS ENUM ('EMAIL', 'GOOGLE', 'FACEBOOK');

-- CreateTable
CREATE TABLE "Auth" (
    "Auth_id" SERIAL NOT NULL,
    "AuthType" "AuthType" NOT NULL,
    "Identifier" TEXT NOT NULL,
    "Password" TEXT,
    "Token" TEXT,
    "UserId" INTEGER NOT NULL,

    CONSTRAINT "Auth_pkey" PRIMARY KEY ("Auth_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Auth_Identifier_key" ON "Auth"("Identifier");

-- CreateIndex
CREATE UNIQUE INDEX "Auth_UserId_key" ON "Auth"("UserId");

-- AddForeignKey
ALTER TABLE "Auth" ADD CONSTRAINT "Auth_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES "User"("User_id") ON DELETE RESTRICT ON UPDATE CASCADE;
