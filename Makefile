.PHONY: scan
scan:
	trivy fs \
	--scanners secret,misconfig \
	--file-patterns "yaml:.*\\.(yaml|yml)(\\.tmpl)?" \
	--file-patterns "toml:.*\\.toml(\\.tmpl)?" \
	--file-patterns "json:.*\\.json(\\.tmpl)?" \
	--disable-telemetry \
	--exit-code 1 .
