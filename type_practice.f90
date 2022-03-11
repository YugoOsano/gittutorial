program type_hello
  ! type can't be defined in global scope
  ! declaration has to come ahead of steps to run (such as print, assignment, etc.)
  type :: fraction
     integer :: numerator
     integer :: denominator
  end type fraction

  type(fraction) :: f
  f%numerator   = 2
  f%denominator = 3
  print *, f%numerator, f%denominator

end program type_hello

     
