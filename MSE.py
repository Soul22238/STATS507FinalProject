import os
import numpy as np
import matplotlib.pyplot as plt

def plot_metrics(result_dir):
    dropouts = []
    mae_values = []
    mse_values = []
    
    for subdir in sorted(os.listdir(result_dir)):
        subdir_path = os.path.join(result_dir, subdir)
        if os.path.isdir(subdir_path):
            try:
                dropout_str = subdir.split('_')[3]
                dropout = float(dropout_str.replace("dr", ""))
                dropouts.append(dropout)
            except (IndexError, ValueError):
                continue
            
            metrics_path = os.path.join(subdir_path, 'metrics.npy')
            if os.path.isfile(metrics_path):
                metrics = np.load(metrics_path)
                mae, mse = metrics[0], metrics[1]
                mae_values.append(mae)
                mse_values.append(mse)
    
    if not dropouts or not mae_values or not mse_values:
        return
    
    sorted_indices = np.argsort(dropouts)
    dropouts = np.array(dropouts)[sorted_indices]
    mae_values = np.array(mae_values)[sorted_indices]
    mse_values = np.array(mse_values)[sorted_indices]

    plt.figure(figsize=(10, 6))
    plt.plot(dropouts, mae_values, marker='o', label='MAE', color='blue')
    plt.plot(dropouts, mse_values, marker='s', label='MSE', color='orange')
    plt.xlabel('Dropout Rate')
    plt.ylabel('Metric Value')
    plt.title('MAE and MSE vs Dropout Rate')
    plt.legend()
    plt.grid()
    
    save_path = os.path.join(result_dir, 'metrics_vs_dropout.png')
    plt.savefig(save_path)
    plt.show()

result_folder = '/Users/mysteryshack/Downloads/Graduate/Courses/STATS507/Autoformer/results/Different_Drop_Out'
plot_metrics(result_folder)
