subroutine volume(raio, vol)
    implicit none
    double precision :: raio, vol, pi

    pi = 4.0 * atan(1.0)
    vol = 4./3. * pi * raio**3
end subroutine volume

program main
    implicit none
    double precision :: raio1, raio2, vol1, vol2

    print *, 'Entre os valores de raio 1 e raio 2'
    read *, raio1, raio2

    call volume(raio1, vol1)
    call volume(raio2, vol2)

    print *, 'A diferenca entre os volumes é ', abs(vol1 - vol2)
end program main
