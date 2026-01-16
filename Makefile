.PHONY: scan
scan:
	trivy fs --scanners secret .
