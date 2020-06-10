command! PackUpdate call joeconf#packupdate()
command! PackClean  call joeconf#packinit() | call minpac#clean()
command! PackStatus call joeconf#packinit() | call minpac#status()

command! -nargs=0 Crc CocRestart
command! -nargs=0 CRC CocRestart
command! -nargs=0 CRc CocRestart
