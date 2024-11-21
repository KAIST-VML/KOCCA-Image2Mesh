from app.gradio_3dgen import generate3dv2
from PIL import Image
import numpy as np
import urllib.request
import argparse
import cv2
from app.all_models import model_zoo
from scripts.mesh import Mesh, safe_normalize

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Compute Voxel IoU between two OBJ or GLB files.")
    parser.add_argument("file", type=str, help="Path to the first OBJ or GLB file.")
    
    args = parser.parse_args()
    model_zoo.init_models()
    
    names = ['o_1', 'o_2', 'o_3', 'o_4', 'o_5', 'o_6', 'o_7', 'o_8', 'o_9', 'o_10', 
            'o_11', 'o_12', 'o_13', 'o_14', 'o_15', 'o_16', 'o_17', 'o_18', 'o_19', 'o_20', 
            'o_21', 'o_22', 'o_23', 'o_24', 'o_25', 'o_26', 'o_27', 'o_28', 'o_29', 'o_30', 
            'o_31', 'o_32', 'o_33', 'o_34', 'o_35', 'o_36', 'o_37', 'o_38', 'o_39', 'o_40', 
            'o_41', 'o_42', 'o_43', 'o_44', 'o_45', 'o_46', 'o_47', 'o_48', 'o_49', 'o_50']


    for name in names:
        output_mesh, ret_mesh = generate3dv2(args.file + f"/{name}.png", True, -1, True, True, 0.1, "std")
