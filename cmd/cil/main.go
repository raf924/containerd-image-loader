package main

import (
	"context"
	"github.com/containerd/containerd"
	"github.com/spf13/cobra"
	"os"
)

var rootCmd = cobra.Command{
	Use: "cil",
	Run: func(cmd *cobra.Command, args []string) {
		var address string
		var image string
		var namespace string
		flagSet := cmd.Flags()
		flagSet.StringVarP(&image, "image", "i", "", "path to the tar file")
		flagSet.StringVarP(&address, "address", "a", "/run/k3s/containerd/containerd.sock", "address for containerd's GRPC server")
		flagSet.StringVarP(&namespace, "namespace", "n", "k8s.io", "containerd namespace")
		err := flagSet.Parse(args)
		if err != nil {
			panic(err)
		}
		imageReader, err := os.Open(image)
		if err != nil {
			panic(err)
		}
		client, err := containerd.New(address, containerd.WithDefaultNamespace(namespace))
		if err != nil {
			panic(err)
		}
		_, err = client.Import(context.Background(), imageReader)
		if err != nil {
			panic(err)
		}
	},
}

func main() {
	_ = rootCmd.Execute()
}
