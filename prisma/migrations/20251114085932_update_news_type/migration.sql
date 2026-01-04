/*
  Warnings:

  - Added the required column `type` to the `news_list` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `news_list` ADD COLUMN `type` VARCHAR(200) NOT NULL,
    ALTER COLUMN `updatedAt` DROP DEFAULT;
