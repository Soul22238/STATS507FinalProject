
import os
import pickle
import numpy as np
import matplotlib.pyplot as plt

def plot_and_save_loss(file_path):
    with open(file_path, 'rb') as f:
        loss_data = pickle.load(f)

    loss_data = np.array(loss_data)
    save_dir = os.path.dirname(file_path)
    filename = os.path.basename(file_path)
    base_name = os.path.splitext(filename)[0]

    plt.figure(figsize=(12, 6))
    for epoch_idx, batch_losses in enumerate(loss_data):
        plt.plot(batch_losses, label=f'Epoch {epoch_idx + 1}')

    plt.xlabel('Batch Number')
    plt.ylabel('Loss')
    plt.title('Batch Loss per Epoch')
    plt.legend()
    plt.grid()
    batch_loss_path = os.path.join(save_dir, f'{base_name}_batch_loss.png')
    plt.savefig(batch_loss_path)
    plt.close()

    epoch_mean_losses = [np.mean(epoch_losses) for epoch_losses in loss_data]
    plt.figure(figsize=(8, 5))
    plt.plot(range(1, len(epoch_mean_losses) + 1), epoch_mean_losses, marker='o', color='red', label='Epoch Mean Loss')
    plt.xlabel('Epoch Number')
    plt.ylabel('Mean Loss')
    plt.title('Mean Loss per Epoch')
    plt.legend()
    plt.grid()
    mean_loss_path = os.path.join(save_dir, f'{base_name}_mean_loss.png')
    plt.savefig(mean_loss_path)
    plt.close()

def plot_mean_loss_across_dropouts(loss_folder):
    plt.figure(figsize=(10, 6))

    for file_name in os.listdir(loss_folder):
        file_path = os.path.join(loss_folder, file_name)
        if os.path.isfile(file_path) and file_name.endswith('.pkl'):
            try:
                dropout_str = file_name.split('_')[3]
                dropout = float(dropout_str.replace("dr", ""))
                with open(file_path, 'rb') as f:
                    loss_data = pickle.load(f)
                loss_data = np.array(loss_data)
                epoch_mean_losses = [np.mean(epoch_losses) for epoch_losses in loss_data]
                plt.plot(range(1, len(epoch_mean_losses) + 1), epoch_mean_losses, marker='o', label=f'Dropout {dropout}')
            except Exception as e:
                print(f"Error processing file {file_name}: {e}")

    plt.xlabel('Epoch Number')
    plt.ylabel('Mean Loss')
    plt.title('Mean Loss per Epoch for Different Dropout Rates')
    plt.legend(title='Dropout Rate')
    plt.grid()
    save_path = os.path.join(loss_folder, 'mean_loss_per_epoch_across_dropouts.png')
    plt.savefig(save_path)
    print(f"Combined Mean Loss Plot saved as {save_path}")
    plt.show()

def plot_mean_loss_across_learning_rate(loss_folder):
    plt.figure(figsize=(10, 6))

    for file_name in os.listdir(loss_folder):
        file_path = os.path.join(loss_folder, file_name)
        if os.path.isfile(file_path) and file_name.endswith('.pkl'):
            try:
                learning_rate = file_name.split('_')[4]
                learning_rate = float(learning_rate.replace("lr", ""))
                with open(file_path, 'rb') as f:
                    loss_data = pickle.load(f)
                loss_data = np.array(loss_data)
                epoch_mean_losses = [np.mean(epoch_losses) for epoch_losses in loss_data]
                plt.plot(range(1, len(epoch_mean_losses) + 1), epoch_mean_losses, marker='o', label=f'Learning Rate {learning_rate}')
            except Exception as e:
                print(f"Error processing file {file_name}: {e}")

    plt.xlabel('Epoch Number')
    plt.ylabel('Mean Loss')
    plt.title('Mean Loss per Epoch for Different Learning Rates')
    plt.legend(title='Learning Rate')
    plt.grid()
    save_path = os.path.join(loss_folder, 'mean_loss_per_epoch_across_lrs.png')
    plt.savefig(save_path)
    print(f"Combined Mean Loss Plot saved as {save_path}")
    plt.show()
loss_folder = '/Users/mysteryshack/Downloads/Graduate/Courses/STATS507/Autoformer/loss/learning_rate_2'

# for file_name in os.listdir(loss_folder):
#     file_path = os.path.join(loss_folder, file_name)
#     if os.path.isfile(file_path) and file_name.endswith('.pkl'):
#         try:
#             plot_and_save_loss(file_path)
#         except Exception as e:
#             print(f"Error processing file {file_name}: {e}")

plot_mean_loss_across_learning_rate(loss_folder)
