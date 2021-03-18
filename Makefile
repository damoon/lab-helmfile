
all: out-helmfile-fluent-bit.yaml out-helmfile-metrics-server.yaml

out-helmfile-fluent-bit.yaml: Makefile helmfile-fluent-bit.yaml kustomize-fluent-bit/post-renderer
	helmfile --file helmfile-fluent-bit.yaml template | msort > out-helmfile-fluent-bit.yaml

out-helmfile-metrics-server.yaml: Makefile helmfile-metrics-server.yaml
	helmfile --file helmfile-metrics-server.yaml template | msort > out-helmfile-metrics-server.yaml
