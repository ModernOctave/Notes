## Throughput
| Device | ResNet18 | ResNet34 | ResNet50 |
| - | - | - | - |
| Jetson Nano (4 GB) | 47.70 | 26.96 | 14.41 |
| Jetson Nano TensorRT (4 GB) | 88.10 | 50.10 | 32.53 |

## Performance
| Model | Accuracy | AUROC | Precision | Recall | BCE Loss |
| - | - | - | - | - | - |
| ResNet18 | 0.9767 | 0.9980 | 0.9830 | 0.9840 | 0.0541 |
| ResNet34 | **0.9917** | **0.9992** | 0.9905 | **0.9979** | **0.0295** |
| ResNet50 | 0.9827 | 0.9989 | **0.9978** | 0.9777 | 0.0504 |

## Performance vs Distance
### 4.2 m
| Model | Accuracy | AUROC | Precision | Recall | BCE Loss |
| - | - | - | - | - | - |
| resnet18 | 0.9675 | 1.0000 | 0.8609 | 1.0000 | 0.0701 |
| resnet34 | 0.9797 | 0.9989 | 0.9159 | 0.9899 | 0.0718 |
| resnet50 | 0.9919 | 0.9965 | 0.9798 | 0.9798 | 0.0369 |

### 7.8 m
| Model | Accuracy | AUROC | Precision | Recall | BCE Loss |
| - | - | - | - | - | - |
| resnet18 | 0.9725 | 1.0000 | 0.9216 | 1.0000 | 0.0592 |
| resnet34 | 0.9845 | 1.0000 | 0.9543 | 1.0000 | 0.0551 |
| resnet50 | 0.9966 | 1.0000 | 0.9895 | 1.0000 | 0.0176 |

### 11.4 m
| Model | Accuracy | AUROC | Precision | Recall | BCE Loss |
| - | - | - | - | - | - |
| resnet18 | 0.9679 | 0.9994 | 0.8678 | 1.0000 | 0.0710 |
| resnet34 | 0.9819 | 0.9996 | 0.9211 | 1.0000 | 0.0643 |
| resnet50 | 0.9940 | 0.9997 | 0.9811 | 0.9905 | 0.0266 |

### 14.4 m
| Model | Accuracy | AUROC | Precision | Recall | BCE Loss |
| - | - | - | - | - | - |
| resnet18 | 0.9657 | 0.9982 | 0.9208 | 0.9789 | 0.0692 |
| resnet34 | 0.9846 | 0.9995 | 0.9548 | 1.0000 | 0.0551 |
| resnet50 | 0.9828 | 0.9988 | 0.9891 | 0.9579 | 0.0463 |

### 18 m
| Model | Accuracy | AUROC | Precision | Recall | BCE Loss |
| - | - | - | - | - | - |
| resnet18 | 0.9447 | 0.9840 | 0.8400 | 0.8842 | 0.1331 |
| resnet34 | 0.9795 | 0.9954 | 0.9126 | 0.9895 | 0.0729 |
| resnet50 | 0.9754 | 0.9956 | 0.9770 | 0.8947 | 0.0744 |