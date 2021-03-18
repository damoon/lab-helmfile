
template:
	helm template stable/fluent-bit --generate-name | msort > template

template-kustomize:
	helm template stable/fluent-bit --generate-name --post-renderer ./kustomize | msort > template-kustomize
