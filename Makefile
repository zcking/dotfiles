.PHONY: scan
scan:
	trivy fs \
	--scanners secret \
	--severity HIGH,CRITICAL,MEDIUM \
	--exit-code 1 .
