-- DropForeignKey
ALTER TABLE `billboard` DROP FOREIGN KEY `Billboard_storeId_fkey`;

-- AddForeignKey
ALTER TABLE `Billboard` ADD CONSTRAINT `Billboard_storeId_fkey` FOREIGN KEY (`storeId`) REFERENCES `Store`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- RedefineIndex
CREATE INDEX `Billboard_storeId_idx` ON `Billboard`(`storeId`);
DROP INDEX `Billboard_storeId_idx` ON `billboard`;
