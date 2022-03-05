! take a function as an argument
! https://qiita.com/soybean/items/94b2df8715691298927a

module DerivativeClass
  use iso_fortran_env
  implicit none
contains
  real(real64) function derivative_scalar(func,x,eps)

    interface
       real(real64) function func(x)
         use iso_fortran_env
         real(real64),intent(in) :: x
       end function func
    end interface
    ! arg
    real(real64),intent(in) :: x
    real(real64),optional,intent(in) :: eps

    real(real64) :: eps_val =dble(1.0e-4)
    if(present(eps) )then
       eps_val = eps
    endif

    derivative_scalar = (func(x+eps_val) - func(x-eps_val) )/(2.0d0*eps_val)

  end function derivative_scalar
end module DerivativeClass
