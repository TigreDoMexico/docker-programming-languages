program conditions
    implicit none
    integer :: x

    print *, 'DIGITE O VALOR DE X'
    read *, x

    if (x > 0) then
        print *, 'MAIOR QUE ZERO'
    else if (x == 0) then
        print *, 'É ZERO'
    else
        print *, 'MENOR QUE ZERO'
    end if

end program conditions