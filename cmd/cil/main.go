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
		image, err := cmd.Flags().GetString("image")
		if err != nil {
			panic(err)
		}
		address, err := cmd.Flags().GetString("address")
		if err != nil {
			panic(err)
		}
		namespace, err := cmd.Flags().GetString("namespace")
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

func init() {
	flagSet := rootCmd.Flags()
	flagSet.StringP("image", "i", "", "path to the tar file")
	flagSet.StringP("address", "a", "/run/k3s/containerd/containerd.sock", "address for containerd's GRPC server")
	flagSet.StringP("namespace", "n", "k8s.io", "containerd namespace")
}

func main() {
	_ = rootCmd.Execute()
}
