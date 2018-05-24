program fmemory_leak

  integer, pointer, dimension(:) :: x


  allocate(x(10))

end program fmemory_leak
