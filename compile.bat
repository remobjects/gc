@echo on
rem set CLANG=path-to\clang.exe
rem set LLVMAR=path-to\llvm-ar.exe
rem set WINDOWSINC=-I windows inc files
rem set LINUXINC=-I linux inc files


del *.lib /s /q /f


set COMMONFLAGS= -Wno-deprecated-declarations -Wno-nullability-completeness -Wno-unknown-attributes -Wno-builtin-requires-header -D HAVE_DL_ITERATE_PHDR -D GC_THREADS -I libatomic_ops\src -Wno-expansion-to-defined -Wno-ignored-attributes





set TRIPLE=arm64-apple-macosx
set COMPILEFLAGS=-O0 -g -c %OSXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% Debug"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c darwin_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs OSX_aarch64Debug.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o darwin_stop_world.o pthread_start.o

set TRIPLE=arm64-apple-macosx
set COMPILEFLAGS=-O3 -c %OSXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c darwin_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs OSX_gcaarch64Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o darwin_stop_world.o pthread_start.o

set TRIPLE=arm64-apple-macosx
set COMPILEFLAGS=-O3 -g -c %OSXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c darwin_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs OSX_gcaarch64RelWithDebInfo.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o darwin_stop_world.o pthread_start.o






set TRIPLE=x86_64-apple-macosx
set COMPILEFLAGS=-O0 -g -c %OSXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% Debug"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c darwin_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs OSX_gcDebug.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o darwin_stop_world.o pthread_start.o

set TRIPLE=x86_64-apple-macosx
set COMPILEFLAGS=-O3 -c %OSXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c darwin_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs OSX_gc64Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o darwin_stop_world.o pthread_start.o

set TRIPLE=x86_64-apple-macosx
set COMPILEFLAGS=-O3 -g -c %OSXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c darwin_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs OSX_gc64RelWithDebInfo.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o darwin_stop_world.o pthread_start.o




set TRIPLE=i686-pc-windows-msvc
set COMPILEFLAGS=-O0 -c -g -I include %COMMONFLAGS%  

del *.o /s /q /f
echo "Triple: %TRIPLE% Debug"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c win32_threads.c
%LLVMAR% -format=gnu rcs gc32Debug.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o win32_threads.o

set TRIPLE=x86_64-pc-windows-msvc
set COMPILEFLAGS=-O0 -c -g -I include -Wno-deprecated-declarations -Wno-unknown-attributes %COMMONFLAGS%  
del *.o /s /q /f
echo "Triple: %TRIPLE% Debug"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c win32_threads.c
%LLVMAR% -format=gnu rcs gc64Debug.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o win32_threads.o



set TRIPLE=i686-pc-windows-msvc
set COMPILEFLAGS=-O3 -c -g -I include -Wno-deprecated-declarations -Wno-unknown-attributes %COMMONFLAGS%  
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c win32_threads.c
%LLVMAR% -format=gnu rcs gc32RelWithDebInfo.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o win32_threads.o

set TRIPLE=x86_64-pc-windows-msvc
set COMPILEFLAGS=-O3 -c -g -I include -Wno-deprecated-declarations -Wno-unknown-attributes %COMMONFLAGS%  
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c win32_threads.c
%LLVMAR% -format=gnu rcs gc64RelWithDebInfo.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o win32_threads.o



set TRIPLE=i686-pc-windows-msvc
set COMPILEFLAGS=-O3 -c -I include -Wno-deprecated-declarations -Wno-unknown-attributes %COMMONFLAGS%  
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c win32_threads.c
%LLVMAR% -format=gnu rcs gc32Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o win32_threads.o

set TRIPLE=x86_64-pc-windows-msvc
set COMPILEFLAGS=-O3 -c -I include -Wno-deprecated-declarations -Wno-unknown-attributes %COMMONFLAGS%  
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c win32_threads.c
%LLVMAR% -format=gnu rcs gc64Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o win32_threads.o

set TRIPLE=arm64-pc-windows-msvc
set COMPILEFLAGS=-O3 -c -I include -Wno-deprecated-declarations -Wno-unknown-attributes %COMMONFLAGS%  
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c win32_threads.c
%LLVMAR% -format=gnu rcs gc64Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o win32_threads.o


set TRIPLE=x86_64-linux-gnu
set COMPILEFLAGS=-O0 -g -c %LINUXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% Debug"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs Linux_gcDebug.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o

set TRIPLE=x86_64-linux-gnu
set COMPILEFLAGS=-O3 -c %LINUXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs Linux_gc64Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o

set TRIPLE=x86_64-linux-gnu
set COMPILEFLAGS=-O3 -g -c %LINUXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs Linux_gc64RelWithDebInfo.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o




set TRIPLE=armv6-unknown-linux-gnueabihf
set COMPILEFLAGS=-O0 -g -c %RPIINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% Debug"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs rpi_gcDebug.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o

set TRIPLE=armv6-unknown-linux-gnueabihf
set COMPILEFLAGS=-O3 -c %RPIINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs rpi_gc64Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o

set TRIPLE=armv6-unknown-linux-gnueabihf
set COMPILEFLAGS=-O3 -g -c %RPIINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC %COMMONFLAGS%  -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs rpi_gc64RelWithDebInfo.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o

