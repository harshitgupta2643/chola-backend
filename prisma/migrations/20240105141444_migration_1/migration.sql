/*
  Warnings:

  - You are about to drop the `_TrustedContacts` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_TrustedContacts" DROP CONSTRAINT "_TrustedContacts_A_fkey";

-- DropForeignKey
ALTER TABLE "_TrustedContacts" DROP CONSTRAINT "_TrustedContacts_B_fkey";

-- DropTable
DROP TABLE "_TrustedContacts";
