
all: template template-kustomize helmfile helmfile-kustomize

template: Makefile
	helm template stable/fluent-bit --generate-name | msort > template

template-kustomize: Makefile kustomize
	helm template stable/fluent-bit --generate-name --post-renderer ./kustomize | msort > template-kustomize

helmfile: Makefile helmfile.yaml
	helmfile template | msort > helmfile

helmfile-kustomize: Makefile helmfile.yaml kustomize
	helmfile template --args="--post-renderer ./kustomize" | msort > helmfile-kustomize
