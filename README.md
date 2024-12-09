# STATS 507 Final Project

## Overview

This project is inspired by the work of **Wu et al.** on **Autoformer**, which introduces **decomposition transformers** for long-term time-series forecasting. Our implementation is largely based on the [Autoformer (NeurIPS 2021)](https://github.com/thuml/Autoformer) repository, with modifications and additional features tailored to our project.

Autoformer is a general series forecasting model that leverages decomposition and auto-correlation mechanisms to achieve state-of-the-art (SOTA) performance in long-term forecasting tasks, covering **energy, traffic, economics, weather, and disease data**. Our project builds upon this foundation to explore advanced techniques and insights for time-series forecasting.

---

## Autoformer (NeurIPS 2021)

### Core Contributions of Autoformer
- **Deep Decomposition Architecture**: Progressive decomposition of trend and seasonal components during forecasting.
- **Auto-Correlation Mechanism**: A novel mechanism that discovers period-based dependencies and aggregates information at the series level, resulting in inherent log-linear complexity.

For more details, refer to the [original paper](https://arxiv.org/abs/2106.13008).
## Data set
I appreciate the following github repos for their valuable code base or datasets:
https://github.com/zhouhaoyi/ETDataset

https://github.com/thuml/Autoformer.git

## Quick start
Activate the virtual environment.  
For Windows users, please install Windows Command line tools (WSL).  
Check if the executable bit is set on your script:
```console
$ ls -l ./bin/setup
```
If there is an x missing:

```console
$ chmod +x ./bin/setup
```
Run scripts in the terminal to set up environment:
```console
$ ./bin/setup
```
Run scripts in the terminal to train model with different hyperparameters
```console
$ chmod +x ./bin/train_drop_out
$ ./bin/train_drop_out
+ echo 'Start training, default using gpu'
$ chmod +x ./bin/train_learning_rate
$ ./bin/train_learning_rate
+ echo 'Start training, default using gpu'
```

Run python codes to visulize the outcome. 
Note that the outcome has alreday prestored.
```console
$ chmod +x ./bin/visualization
$ ./bin/visualization
```

By Jingyuan Yang <janefar@umich.edu>

