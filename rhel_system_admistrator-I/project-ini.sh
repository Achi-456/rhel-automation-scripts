#! /bin/bash
# 1.Use $HOME or ~ to  ensure you have permission to write

mkdir -pv $HOME/MyProject/{logs,src,backup}
# 2. Chnage directory 
cd $HOME/MyProject 

# 3. Create files
touch README.txt .config 


# 4. Append current date and time to README.txt 

date +%F_%T >> README.txt 

echo "Setup completed!"





