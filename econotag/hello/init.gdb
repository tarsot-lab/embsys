set architecture arm
target remote | openocd -c "gdb_port pipe" \                        
			-f interface/ftdi/redbee-econotag.cfg \
monitor soft_reset_halt
set *0x80020010 = 0
load
break _start
continue
