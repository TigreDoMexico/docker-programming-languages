e:
cd E:\Projects\docker-programming-languages\fortran-gfortran-apt

docker run --rm -i -t -v "%cd%":/source tigre/fortran:apt gfortran -o helloExec /source/hello_world.f90
docker run --rm -i -t -v "%cd%":/source tigre/fortran:apt ./helloExec

pause