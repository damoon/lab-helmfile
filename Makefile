
all: template template-kustomize helmfile helmfile-kustomize

.PHONY: template
template:
	helm template stable/fluent-bit --generate-name | msort > template

.PHONY: template-kustomize
template-kustomize:
	helm template stable/fluent-bit --generate-name --post-renderer ./kustomize | msort > template-kustomize

.PHONY: helmfile
helmfile:
	helmfile template | msort > helmfile

.PHONY: helmfile-kustomize
helmfile-kustomize:
	helmfile template --args="--post-renderer ./kustomize" | msort > helmfile-kustomize
