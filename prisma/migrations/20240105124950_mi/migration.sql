/*
  Warnings:

  - A unique constraint covering the columns `[USER_ID]` on the table `Passenger` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `COUNTRY_CODE` to the `Passenger` table without a default value. This is not possible if the table is not empty.
  - Added the required column `DATE_OF_BIRTH` to the `Passenger` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Passenger" ADD COLUMN     "BLOOD_GROUP" TEXT,
ADD COLUMN     "COUNTRY_CODE" TEXT NOT NULL,
ADD COLUMN     "DATE_OF_BIRTH" TEXT NOT NULL,
ADD COLUMN     "IMAGE_URL" TEXT;

-- CreateTable
CREATE TABLE "_TrustedContacts" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_TrustedContacts_AB_unique" ON "_TrustedContacts"("A", "B");

-- CreateIndex
CREATE INDEX "_TrustedContacts_B_index" ON "_TrustedContacts"("B");

-- CreateIndex
CREATE UNIQUE INDEX "Passenger_USER_ID_key" ON "Passenger"("USER_ID");

-- AddForeignKey
ALTER TABLE "_TrustedContacts" ADD CONSTRAINT "_TrustedContacts_A_fkey" FOREIGN KEY ("A") REFERENCES "Passenger"("USER_ID") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TrustedContacts" ADD CONSTRAINT "_TrustedContacts_B_fkey" FOREIGN KEY ("B") REFERENCES "Passenger"("USER_ID") ON DELETE CASCADE ON UPDATE CASCADE;
