! compiled by
! gfortran minimal.f90 module_practice.f90

program main
  use myfuncs ! use comes within program

  print *, square(3.5) ! 12.2500000
  print *, cube(3.5)

  ! contains is used to define procedures within the body of a program
contains
  function square(x) result(y)
    real, intent(in) :: x
    y = x * x
  end function square
end program main
