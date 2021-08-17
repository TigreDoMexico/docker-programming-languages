real function raiz_cubica(value)
   real, intent(in) :: value
   real :: log_value

   log_value = log(value)
   raiz_cubica = exp(log_value/3.)
end function raiz_cubica

subroutine raizes(value, root2, root3, root4, root5)
implicit none
   real, intent(in) :: value
   real, intent(out) :: root2, root3, root4, root5
   real :: log_value

   root2 = sqrt(value)
   log_value = log(value)

   root3 = exp(log_value/3.)
   root4 = exp(log_value/4.)
   root5 = exp(log_value/5.)
end subroutine raizes

program hello
implicit none
   integer :: i
   real :: raiz_cubica
   real :: valor1 = 27.
   real :: valor2, raiz2, raiz3, raiz4, raiz5

   real, dimension(5) :: vector
   vector = (/(10 * i, i = 1, 5)/)

   print *, "VALORES", vector(1:5)

   do i = 1, 5
      print *, "RAIZ CUBICA - Valor ARRAY ", i
      print *, "resultado: ", raiz_cubica(vector(i))
   end do

   valor2 = 144

   CALL raizes(valor2, raiz2, raiz3, raiz4, raiz5)

   print *, "RAIZ CUBICA - Valor1: ", raiz_cubica(valor1)
   print *, "RAIZES - Valor2: ", raiz2, raiz3, raiz4, raiz5
end program hello


