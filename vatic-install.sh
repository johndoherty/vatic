# I have found that this works better as part of python virtualenv
# Before running this create a virtual environment using:
# $ virtualenv .env
# $ source .env/bin/activate

# This is going to be platform dependent
sudo apt-get install git python-pip python-setuptools python-dev libavcodec-dev libavformat-dev libswscale-dev libjpeg62 libjpeg62-dev libfreetype6 libfreetype6-dev apache2 libapache2-mod-wsgi mysql-server-5.5 mysql-client-5.5 libmysqlclient-dev gfortran 

# Clone revevant repos
git clone https://github.com/johndoherty/turkic.git
git clone https://github.com/cvondrick/pyvision.git
git clone https://github.com/johndoherty/vatic.git
git clone https://github.com/johndoherty/vatic_tracking.git

pip install -r vatic/requirements.txt -U --allow-all-external --allow-unverified PIL

cd turkic
python setup.py install
cd ..

cd pyvision
python setup.py install
cd ..

cd vatic_tracking
python setup.py install
cd ..

echo "NOTE: If PIL was installed without JPEG, ZLIB, or FREETYPE2 it means it could not find some of the libraries installed earier."
echo "Follow the instructions at: http://jj.isgeek.net/2011/09/install-pil-with-jpeg-support-on-ubuntu-oneiric-64bits/"

echo "*****************************************************"
echo "*** Please consult README to finish installation. ***"
echo "*****************************************************"
