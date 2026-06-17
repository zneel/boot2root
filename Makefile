ISO  := BornToSecHackMe-v1.1.iso
MEM  := 2048

.PHONY: run

run:
	qemu-system-x86_64 -m $(MEM) -cdrom $(ISO) -boot d \
		-netdev user,id=net0,hostfwd=tcp::2222-:22,hostfwd=tcp::8080-:80 \
		-device e1000,netdev=net0
