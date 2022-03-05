module myfuncs
contains
  function cube(x) result(y)
    real, intent(in) :: x
    y = x*x*x
  end function cube
end module myfuncs
