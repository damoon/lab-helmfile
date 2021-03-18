
all: fluent-bit.yaml metrics-server.yaml

fluent-bit.yaml: Makefile helmfile-fluent-bit.yaml kustomize
	helmfile --file helmfile-fluent-bit.yaml template | msort > fluent-bit.yaml

metrics-server.yaml: Makefile helmfile-metrics-server.yaml
	helmfile --file helmfile-metrics-server.yaml template | msort > metrics-server.yaml
