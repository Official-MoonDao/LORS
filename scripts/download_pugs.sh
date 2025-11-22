#!/bin/bash

# Script to download lunar lander Payload User Guides (PUGs) into data/ folder

mkdir -p data

# Download Peregrine PUG (PDF)
curl -L -o data/Peregrine.pdf "https://www.astrobotic.com/wp-content/uploads/2021/01/Peregrine-Payload-Users-Guide.pdf"

# Download Griffin PUG (PDF)
curl -L -o data/Griffin.pdf "https://www.astrobotic.com/wp-content/uploads/2022/01/PUGLanders_011222.pdf"

