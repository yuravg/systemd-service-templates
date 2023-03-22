
SERVICE_FNAME = service-script-example.service

include ../../Makefile.service

.PHONY: src_install src_remove install_script remove_script

SRCNAME=service_script_example.sh
SRCPATH=/usr/local/bin

src_install:
	make install_script
	make install

src_remove:
	make remove
	make remove_script

install_script:
	sudo cp -v service_script_example.sh $(SRCPATH)
	sudo chmod 744 $(SRCPATH)/$(SRCNAME)

remove_script:
	sudo rm -i $(SRCPATH)/$(SRCNAME)
