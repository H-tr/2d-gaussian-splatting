python train.py -s data/plate -m output/plate
python render.py -m output/plate -s data/plate
python train.py -s data/chips -m output/chips
python render.py -m output/chips -s data/chips
python train.py -s data/fridge_side -m output/fridge_side
python render.py -m output/fridge_side -s data/fridge_side --mesh_res 1024
python train.py -s data/sofa -m output/sofa
python render.py -m output/sofa -s data/sofa
python train.py -s data/workstation -m output/workstation
python render.py -m output/workstation -s data/workstation --voxel_size 0.01 --depth_trunc 10.0
python train.py -s data/sofa_chair -m output/sofa_chair
python render.py -m output/sofa_chair -s data/sofa_chair
python train.py -s data/cup -m output/cup
python render.py -m output/cup -s data/cup
