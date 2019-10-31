command! PackUpdate call joeconf#packupdate()
command! PackClean  call joeconf#packinit() | call minpac#clean()
command! PackStatus call joeconf#packinit() | call minpac#status()

