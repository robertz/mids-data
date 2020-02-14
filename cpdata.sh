rm -f Data/* Player/* Other/*

cp ../imaginary-hero-designer/Hero\ Designer/Data/*.json Data/ 
cp ../imaginary-hero-designer/Hero\ Designer/Data/db/Player/* Player/ 
for i in ../imaginary-hero-designer/Hero\ Designer/Data/db/Other/*; do cp "$i" Other; done