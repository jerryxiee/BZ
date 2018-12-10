#ifndef __BOOT_MEM_H
#define __BOOT_MEM_H

/* Includes ------------------------------------------------------------------*/
#define SPI_FLASH_PageSize    0x100
#define  SECTOR_SIZE  		  0x1000ul	

bool WriteToMemory(u32 Add_Flash, u8 *src, u16 NumByteToWrite);
void Erase_Page(u32 Add_Flash, u16 Page_Number);

#endif
