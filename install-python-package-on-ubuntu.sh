sudo apt update
sudo apt -y upgrade

#First step, if not already done is to add the 'deadsnakes' repository so that the latest python related software can be downloaded and kept updated.

sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
#And, if you don't have Python 3.10 already installed you can do that with:

sudo apt install python3
python3 -V

#And finally, to make pip work you will need to install the distutils package that's compatible with 3.10:

sudo apt install python3-distutils

sudo apt install python3-pip python3-venv

#Now it’s time to install Django. Use the following command:
sudo apt install python3-django
django-admin --version
