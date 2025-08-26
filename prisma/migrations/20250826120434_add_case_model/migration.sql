/*
  Warnings:

  - You are about to drop the column `budget` on the `Case` table. All the data in the column will be lost.
  - You are about to drop the column `cpi` on the `Case` table. All the data in the column will be lost.
  - You are about to drop the column `geo` on the `Case` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `Case` table. All the data in the column will be lost.
  - You are about to drop the column `users` on the `Case` table. All the data in the column will be lost.
  - You are about to drop the column `authorRole` on the `Review` table. All the data in the column will be lost.
  - You are about to drop the column `projectName` on the `Review` table. All the data in the column will be lost.
  - You are about to drop the column `text` on the `Review` table. All the data in the column will be lost.
  - Added the required column `budget_en` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `budget_ru` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `budget_ua` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cpi_en` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cpi_ru` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cpi_ua` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `geo_en` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `geo_ru` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `geo_ua` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title_en` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title_ru` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title_ua` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `users_en` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `users_ru` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `users_ua` to the `Case` table without a default value. This is not possible if the table is not empty.
  - Added the required column `authorRole_en` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `authorRole_ru` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `authorRole_ua` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `projectName_en` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `projectName_ru` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `projectName_ua` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `text_en` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `text_ru` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `text_ua` to the `Review` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Case" DROP COLUMN "budget",
DROP COLUMN "cpi",
DROP COLUMN "geo",
DROP COLUMN "title",
DROP COLUMN "users",
ADD COLUMN     "budget_en" TEXT NOT NULL,
ADD COLUMN     "budget_ru" TEXT NOT NULL,
ADD COLUMN     "budget_ua" TEXT NOT NULL,
ADD COLUMN     "cpi_en" TEXT NOT NULL,
ADD COLUMN     "cpi_ru" TEXT NOT NULL,
ADD COLUMN     "cpi_ua" TEXT NOT NULL,
ADD COLUMN     "geo_en" TEXT NOT NULL,
ADD COLUMN     "geo_ru" TEXT NOT NULL,
ADD COLUMN     "geo_ua" TEXT NOT NULL,
ADD COLUMN     "title_en" TEXT NOT NULL,
ADD COLUMN     "title_ru" TEXT NOT NULL,
ADD COLUMN     "title_ua" TEXT NOT NULL,
ADD COLUMN     "users_en" TEXT NOT NULL,
ADD COLUMN     "users_ru" TEXT NOT NULL,
ADD COLUMN     "users_ua" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Review" DROP COLUMN "authorRole",
DROP COLUMN "projectName",
DROP COLUMN "text",
ADD COLUMN     "authorRole_en" TEXT NOT NULL,
ADD COLUMN     "authorRole_ru" TEXT NOT NULL,
ADD COLUMN     "authorRole_ua" TEXT NOT NULL,
ADD COLUMN     "projectName_en" TEXT NOT NULL,
ADD COLUMN     "projectName_ru" TEXT NOT NULL,
ADD COLUMN     "projectName_ua" TEXT NOT NULL,
ADD COLUMN     "text_en" TEXT NOT NULL,
ADD COLUMN     "text_ru" TEXT NOT NULL,
ADD COLUMN     "text_ua" TEXT NOT NULL;
