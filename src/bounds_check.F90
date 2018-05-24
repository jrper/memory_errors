

program bounds_check
  real :: x(10), y(10)

  call foo(x, y)

  print*, x

  contains


    subroutine foo(a,b)
      real, intent(inout) :: a(*), b(*)
      integer :: i

      a(1:10) = [(i, i=1, 10)]
      b(1:10) = [(10+i, i=1, 10)]

      ! Note, this goes outside the bounds of b
      do i=1, 10
         a(i) = a(i+1)+b(i)
      end do

    end subroutine foo



end program
