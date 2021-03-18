
all: out.yaml

out.yaml: Makefile helmfile.yaml kustomize
	helmfile template --args="--post-renderer ./kustomize" | msort > out.yaml
