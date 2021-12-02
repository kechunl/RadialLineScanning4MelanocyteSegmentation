import os
import random
import glob
import shutil

root_dir = '/projects/patho2/melanoma/Kechun/GAN/pix2pixHD/datasets/melanocyte_10x_256/test_'

target_dir = './data'
os.makedirs(target_dir, exist_ok=True)
os.makedirs(os.path.join(target_dir, 'A'), exist_ok=True)
os.makedirs(os.path.join(target_dir, 'B'), exist_ok=True)
os.makedirs(os.path.join(target_dir, 'mask'), exist_ok=True)

all_patch_list = glob.glob(os.path.join(root_dir + 'A', '*.png'))
patch_list = random.sample(all_patch_list, 15)
for patch_path in patch_list:
	shutil.copy(patch_path, os.path.join(target_dir, 'A', os.path.basename(patch_path)))
	shutil.copy(patch_path.replace('test_A', 'test_B'), os.path.join(target_dir, 'B', os.path.basename(patch_path)))
	shutil.copy(patch_path.replace('test_A', 'test_mask'), os.path.join(target_dir, 'mask', os.path.basename(patch_path)))