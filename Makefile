
all: template template-kustomize 

.PHONY: template
template:
	helm template stable/fluent-bit --generate-name | msort > template

.PHONY: template-kustomize
template-kustomize:
	helm template stable/fluent-bit --generate-name --post-renderer ./kustomize | msort > template-kustomize
