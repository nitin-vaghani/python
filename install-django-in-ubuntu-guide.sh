#Sample Django Project v4.0.6

#Now, it’s time to put Django into action. In this section, we’ll demonstrate how to create a sample Django project. The sample project will be created within a virtual environment.

#Create a directory for the sample project:
$ mkdir -pv ~/sample_project

#Change the current directory to the project directory:
$ cd ~/sample_project

#Then, use the venv module to establish a Python virtual environment:
$ python3 -m venv sample_project_env

#The virtual environment is ready. Activate the environment:
$ source sample_project_env/bin/activate

#Installing Django image
#We can install Django within the environment:

$ pip install django

#OR $ pip install Django==4.0.6

#We can use django-admin to build the project base. Here, the sample project will be named sampleproject. The project will have a directory within the environment directory that includes all the necessary files.

#manage.py: A management script that administers various Django-specific tasks.
#sample project: A directory with the project name that contains actual project code.
#However, we don’t want a cobweb of too many nested directories. Thus, tell Django to place the files and directories in the current directory:
$ django-admin startproject sample_project_env .

#Database
#The next step is migrating the database. By default, Django uses SQLite. Migrations apply any changes made to the Django models to the database schema. Run the following command to migrate the database:

$ python manage.py migrate

#Finally, we’ll establish an admin user to use the Django admin interface. Run the following command:

$ python manage.py createsuperuser

#It will ask for a username, an email address, and a password for the user.

#(sample_project_env) root@dev30:~/sample_project# python manage.py createsuperuser
#Username (leave blank to use 'root'): 
#Email address: dev@mailinator.com
#Password: 
#Password (again): 
#Superuser created successfully.


#Installing Django image 4

#ALLOWED_HOSTS in Django Settings
#To test the application, we need to modify a certain directive in Django settings. Open the settings.py file in a text editor:

$ nano ~/sample_project/sample_project_env/settings.py

#We’re interested in the directive ALLOWED_HOSTS. It describes a list of addresses or domain names that can connect to the Django instance. Any incoming host request from a host that’s not on the list will raise an exception. It’s required by Django to prevent certain classes of security vulnerabilities.

#Within the square bracket, list the IP addresses or domain names associated with the Django server. Each item will be listed in quotations, separated by a comma (,). Here’s how the structure of the directive would look like:

$ ALLOWED_HOSTS = ['<server_ip_or_domain>', '<server2_ip_or_doman>'] # ['localhost','127.0.0.1']

#ALLOWED_HOSTS

#Save the list and close the editor.

#Testing the Server
#We can now start the Django deployment server. It will present a fresh Django project. Note that it should only be used for development purposes. For full-fledged deployment, follow the official Django guide on deployment.

#Before accessing the development server, ensure that the firewall allows access to port 8000. If you follow the Ubuntu server setup guide, then tell UFW to open port 8000 for communication:

$ sudo ufw allow 8000

#UFW is a common firewall available on all the major Linux distros. Here is a guide explaining various basics of UFW. The development server is now ready to run. Start the server:

$ python manage.py runserver <server_ip>:8000

#OR python manage.py runserver 0.0.0.0:8000

#Next, visit the server’s IP address on port 8000 in a web browser. It will land on the Django welcome page:

$ http://<server_ip>:8000


#Happy_Coding :)
