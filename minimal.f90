! compiled by
! gfortran  module_practice.f90 minimal.f90
!  (the order of files matters in the initial compile)

program main
  use myfuncs ! use comes within program
  use DerivativeClass

  print *, square(3.5d0) ! 12.2500000
  print *, cube(3.5)

  ! comes with SIGSEGV
  !print *, derivative_scalar(square,x=1.0d0)

  ! contains is used to define procedures within the body of a program
contains
  real(real64) function square(x) result(y)
    real(real64), intent(in) :: x
    y = x * x
  end function square
end program main
