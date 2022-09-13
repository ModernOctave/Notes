## Throughputs on Jetson Nano
| Model | FPS (Pytorch) | FPS (TensorRT) |
| - | - | - |
| Resnet18 (1 Channel) | 31.92 | 50.52 |
| Resnet34 (1 Channel) | 18.08 |  |
| Resnet50 (1 Channel) | 11.20 |  |

# DNNs on Jetson
- [GitHub: Jetson Inference](https://github.com/dusty-nv/jetson-inference)
- [Docs: Jetson Inference](https://rawgit.com/dusty-nv/jetson-inference/dev/docs/html/python/jetson.inference.html#imageNet)

## Torch2TRT Setup
1. Install Nvidia Container Toolkit [[Installation Guide]](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker). This allows containers to use Nvidia GPUs.
2. Start Nvidia PyTorch (For any PC) [[NGC]](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/pytorch) or NVIDIA L4T PyTorch (For Jetson Nano) [[NGC]](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/l4t-pytorch) Container. This provides TensorRT and Cuda accelerated PyTorch.
3. Install Torch2TRT [[Installation Guide]](https://github.com/NVIDIA-AI-IOT/torch2trt#setup).
4. Now run the conversion script.

# Key Articles
- [TDS: Why AdamW matters](https://towardsdatascience.com/why-adamw-matters-736223f31b5d)

# Transfer Learning on Greyscale Images
- [TDS: Transfer Learning on Greyscale Images: How to Fine-Tune Pretrained Models on Black-and-White Datasets](https://towardsdatascience.com/transfer-learning-on-greyscale-images-how-to-fine-tune-pretrained-models-on-black-and-white-9a5150755c7a)
- [TDS: Getting Started with PyTorch Image Models (timm): A Practitioner’s Guide](https://towardsdatascience.com/getting-started-with-pytorch-image-models-timm-a-practitioners-guide-4e77b4bf9055)
- [Docs: timm](https://timm.fast.ai/models)