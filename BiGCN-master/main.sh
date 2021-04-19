#! /bin/bash
pip install -U torch==1.8.0 numpy
pip install torch-scatter -f https://pytorch-geometric.com/whl/torch-1.8.0+cu101.html
pip install torch-sparse -f https://pytorch-geometric.com/whl/torch-1.8.0+cu101.html
pip install torch-cluster -f https://pytorch-geometric.com/whl/torch-1.8.0+cu101.html
pip install torch-spline-conv -f https://pytorch-geometric.com/whl/torch-1.8.0+cu101.html
pip install torch-geometric
pip install -r requirements.txt

#Generate graph data and store in /data/Twitter15graph
python ./Process/getTwittergraph.py Twitter15

#Reproduce the experimental results.
python ./model/Twitter/BiGCN_Twitter.py Twitter15 100