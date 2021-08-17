# chmod +x LinuxExecute.sh
# ./LinuxExecute.sh

cd /home/tigre/Documents/Dockers/docker-programming-languages/fortran-gfortran-apt

sudo docker run --rm -i -t -v $(pwd):/source tigre/fortran:apt gfortran -o helloExec /source/hello_world.f90

sudo docker run --rm -i -t -v $(pwd):/source tigre/fortran:apt ./helloExec



