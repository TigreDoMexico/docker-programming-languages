program loops
    implicit none
    integer :: n
    character :: option
    character(len = 20) :: my_name

    option = 'S'

    do while (option == 'S')
        print *, 'INSIRA O SEU NOME'
        read *, my_name

        print *, 'OLA', my_name

        print *, 'RODAR DE NOVO? PRECIONE S PARA SIM, QQR OUTRA TECLA PARA NÃO'
        read *, option

        ! if (option /= 'S' .and. option /= 'y') stop
    end do

    do n = 11, 20
        print*,  n
    end do
end program loops