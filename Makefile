INSTDIR=/usr/share/monitoring-plugins

build:
	@echo "nothing to do"

install: build
	@mkdir -p $(INSTDIR)
	@cp plugins/* $(INSTDIR)

