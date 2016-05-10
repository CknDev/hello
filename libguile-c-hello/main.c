#include <stdio.h>
#include <libguile.h>

int main( int argc, char *argv[] )
{
  SCM func;
  SCM ret_val;
  int sqr_result;

  scm_init_guile();

  /* Calling the square script with a passed argument */
  scm_c_primitive_load( "main.scm" );
  func = scm_variable_ref( scm_c_lookup( "square" ) );
  ret_val = scm_call_1( func, scm_from_int(7) );
  sqr_result = scm_to_int(ret_val);
  printf( "result of square is %d\n", sqr_result );

  /* Calling the square2 script using a Scheme variable */
  scm_c_define( "sc_arg", scm_from_int(9) );
  func = scm_variable_ref( scm_c_lookup("square2" ) );
  ret_val = scm_call_0( func );
  sqr_result = scm_to_int(ret_val);
  printf( "result of square2 is %d\n", sqr_result );

  return 0;
}
