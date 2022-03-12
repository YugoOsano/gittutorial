! transcribed from
! https://www.tutorialspoint.com/fortran/fortran_pointers.htm

program pointerExample
  implicit none

  !-- all variable declaration has to come ahead of remaining statements
  integer, pointer :: p1
  integer, target  :: t1

  allocate(p1) ! Seg fault will come without this

  p1 = 1
  print *, p1

  p1 = p1 + 4
  print *, p1

  deallocate(p1)

  !----
  p1=>t1
  p1 = 3
  print *, "-- pointer association with target --"
  print *, p1
  print *, t1
  print *, associated(p1)
  nullify(p1)
  print *, associated(p1)
end program pointerExample
