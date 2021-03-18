
all: out.yaml

out.yaml: Makefile helmfile.yaml kustomize
	helmfile template | msort > out.yaml
