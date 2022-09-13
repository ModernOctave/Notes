## Jetson FPS Testing
1. Install Nvidia Container Toolkit [[Installation Guide]](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker). This allows containers to use Nvidia GPUs.
2. Start NVIDIA L4T PyTorch (For Jetson Nano) [[NGC]](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/l4t-pytorch) Container. This provides TensorRT and Cuda accelerated PyTorch.
3. Install Torch2TRT [[Installation Guide]](https://github.com/NVIDIA-AI-IOT/torch2trt#setup) (optional for TensorRT models only).
4. Clone the repo `git clone -b v3 https://github.com/ModernOctave/Thermal-Image-Human-Detection.git`
5. Add models to the models folder and run calculateFPS.py