module github.com/raf924/containerd-image-loader

go 1.16

require (
	github.com/Microsoft/hcsshim v0.8.15 // indirect
	github.com/Microsoft/hcsshim/test v0.0.0-20210313001220-5281188fe242 // indirect
	github.com/containerd/cgroups v0.0.0-20210114181951-8a68de567b68 // indirect
	github.com/containerd/containerd v1.5.0-beta.1
	github.com/containerd/continuity v0.0.0-20210315143101-93e15499afd5 // indirect
	github.com/containerd/fifo v0.0.0-20210129194248-f8e8fdba47ef // indirect
	github.com/containerd/go-runc v0.0.0-20201020171139-16b287bc67d0 // indirect
	github.com/google/uuid v1.2.0 // indirect
	github.com/imdario/mergo v0.3.12 // indirect
	github.com/spf13/cobra v1.1.3
	google.golang.org/grpc v1.36.0 // indirect
	gotest.tools/v3 v3.0.3 // indirect
)

replace (
	k8s.io/api v0.0.0 => k8s.io/api v0.20.4
	k8s.io/apiextensions-apiserver v0.0.0 => k8s.io/apiextensions-apiserver v0.20.4
	k8s.io/apimachinery v0.0.0 => k8s.io/apimachinery v0.20.4
	k8s.io/apiserver v0.0.0 => k8s.io/apiserver v0.20.4
	k8s.io/cli-runtime v0.0.0 => k8s.io/cli-runtime v0.20.4
	k8s.io/client-go v0.0.0 => k8s.io/client-go v0.20.4
	k8s.io/cloud-provider v0.0.0 => k8s.io/cloud-provider v0.20.4
	k8s.io/cluster-bootstrap v0.0.0 => k8s.io/cluster-bootstrap v0.20.4
	k8s.io/code-generator v0.0.0 => k8s.io/code-generator v0.20.4
	k8s.io/component-base v0.0.0 => k8s.io/component-base v0.20.4
	k8s.io/component-helpers v0.0.0 => k8s.io/component-helpers v0.20.4
	k8s.io/controller-manager v0.0.0 => k8s.io/controller-manager v0.20.4
	k8s.io/cri-api v0.0.0 => k8s.io/cri-api v0.20.4
	k8s.io/csi-translation-lib v0.0.0 => k8s.io/csi-translation-lib v0.20.4
	k8s.io/kube-aggregator v0.0.0 => k8s.io/kube-aggregator v0.20.4
	k8s.io/kube-controller-manager v0.0.0 => k8s.io/kube-controller-manager v0.20.4
	k8s.io/kube-proxy v0.0.0 => k8s.io/kube-proxy v0.20.4
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.20.4
	k8s.io/kubectl => k8s.io/kubectl v0.20.4
	k8s.io/kubelet => k8s.io/kubelet v0.20.4
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.20.4
	k8s.io/metrics => k8s.io/metrics v0.20.4
	k8s.io/mount-utils => k8s.io/mount-utils v0.20.4
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.20.4
)
