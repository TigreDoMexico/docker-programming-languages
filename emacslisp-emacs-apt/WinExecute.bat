e:
cd E:\Projects\docker-programming-languages\emacslisp-emacs-apt

docker run --rm -i -t -v "%cd%":/source tigre/lisp:apt emacs --script /source/hello_world.el

pause