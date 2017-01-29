#!/usr/local/bin/perl
# Test Geo::Ellipsoid to
use Test::More tests => 452;
use Test::Number::Delta relative => 1e-6;
use Geo::Ellipsoid;
use blib;
use strict;
use warnings;

my $e = Geo::Ellipsoid->new(units=>'degrees');
my( $r, $a );
( $r, $a ) = $e->to(-88.000000, 0.000000,-88.000000, 0.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(-88.000000, 0.000000,-88.000000, 90.000000);
delta_ok( $r, 315884.900018321 );
delta_within( $a, 134.982543210783, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 0.000000,-88.000000, 180.000000);
delta_ok( $r, 446774.084261797 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 0.000000,-88.000000, 270.000000);
delta_ok( $r, 315884.900018321 );
delta_within( $a, 225.017456789217, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 0.000000,0.000000, 0.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 0.000000,0.000000, 90.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 90.0105511254454, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 0.000000,0.000000, 180.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 0.000000,0.000000, 270.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 269.989448874555, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 0.000000,88.000000, 0.000000);
delta_ok( $r, 19557157.3743612 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 0.000000,88.000000, 90.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 45.0249253504956, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 0.000000,88.000000, 270.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 314.975074649504, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 90.000000,-88.000000, 0.000000);
delta_ok( $r, 315884.900018321 );
delta_within( $a, 225.017456789217, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 90.000000,-88.000000, 90.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(-88.000000, 90.000000,-88.000000, 180.000000);
delta_ok( $r, 315884.900018321 );
delta_within( $a, 134.982543210783, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 90.000000,-88.000000, 270.000000);
delta_ok( $r, 446774.084261797 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 90.000000,0.000000, 0.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 269.989448874555, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 90.000000,0.000000, 90.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 90.000000,0.000000, 180.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 90.0105511254454, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 90.000000,0.000000, 270.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 90.000000,88.000000, 0.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 314.975074649504, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 90.000000,88.000000, 90.000000);
delta_ok( $r, 19557157.3743612 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 90.000000,88.000000, 180.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 45.0249253504956, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 180.000000,-88.000000, 0.000000);
delta_ok( $r, 446774.084261797 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 180.000000,-88.000000, 90.000000);
delta_ok( $r, 315884.900018321 );
delta_within( $a, 225.017456789217, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 180.000000,-88.000000, 180.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(-88.000000, 180.000000,-88.000000, 270.000000);
delta_ok( $r, 315884.900018321 );
delta_within( $a, 134.982543210783, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 180.000000,0.000000, 0.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 180.000000,0.000000, 90.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 269.989448874555, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 180.000000,0.000000, 180.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 180.000000,0.000000, 270.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 90.0105511254454, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 180.000000,88.000000, 90.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 314.975074649504, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 180.000000,88.000000, 180.000000);
delta_ok( $r, 19557157.3743612 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 180.000000,88.000000, 270.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 45.0249253504956, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 270.000000,-88.000000, 0.000000);
delta_ok( $r, 315884.900018321 );
delta_within( $a, 134.982543210783, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 270.000000,-88.000000, 90.000000);
delta_ok( $r, 446774.084261797 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 270.000000,-88.000000, 180.000000);
delta_ok( $r, 315884.900018321 );
delta_within( $a, 225.017456789217, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 270.000000,-88.000000, 270.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(-88.000000, 270.000000,0.000000, 0.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 90.0105511254454, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 270.000000,0.000000, 90.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 270.000000,0.000000, 180.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 269.989448874555, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 270.000000,0.000000, 270.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 270.000000,88.000000, 0.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 45.0249253504956, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 270.000000,88.000000, 180.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 314.975074649504, 0.0001 );

( $r, $a ) = $e->to(-88.000000, 270.000000,88.000000, 270.000000);
delta_ok( $r, 19557157.3743612 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(0.000000, 0.000000,-88.000000, 0.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(0.000000, 0.000000,-88.000000, 90.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 177.993277346031, 0.0001 );

( $r, $a ) = $e->to(0.000000, 0.000000,-88.000000, 180.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(0.000000, 0.000000,-88.000000, 270.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 182.006722653969, 0.0001 );

( $r, $a ) = $e->to(0.000000, 0.000000,0.000000, 0.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(0.000000, 0.000000,0.000000, 90.000000);
delta_ok( $r, 10018754.1713946 );
delta_within( $a, 90, 0.0001 );

( $r, $a ) = $e->to(0.000000, 0.000000,0.000000, 270.000000);
delta_ok( $r, 10018754.1713946 );
delta_within( $a, 270, 0.0001 );

( $r, $a ) = $e->to(0.000000, 0.000000,88.000000, 0.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(0.000000, 0.000000,88.000000, 90.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 2.00672265396903, 0.0001 );

( $r, $a ) = $e->to(0.000000, 0.000000,88.000000, 180.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 2.45853187192722e-16, 0.0001 );

( $r, $a ) = $e->to(0.000000, 0.000000,88.000000, 270.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 357.993277346031, 0.0001 );

( $r, $a ) = $e->to(0.000000, 90.000000,-88.000000, 0.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 182.006722653969, 0.0001 );

( $r, $a ) = $e->to(0.000000, 90.000000,-88.000000, 90.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(0.000000, 90.000000,-88.000000, 180.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 177.993277346031, 0.0001 );

( $r, $a ) = $e->to(0.000000, 90.000000,-88.000000, 270.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(0.000000, 90.000000,0.000000, 0.000000);
delta_ok( $r, 10018754.1713946 );
delta_within( $a, 270, 0.0001 );

( $r, $a ) = $e->to(0.000000, 90.000000,0.000000, 90.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(0.000000, 90.000000,0.000000, 180.000000);
delta_ok( $r, 10018754.1713946 );
delta_within( $a, 90, 0.0001 );

( $r, $a ) = $e->to(0.000000, 90.000000,88.000000, 0.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 357.993277346031, 0.0001 );

( $r, $a ) = $e->to(0.000000, 90.000000,88.000000, 90.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(0.000000, 90.000000,88.000000, 180.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 2.00672265396903, 0.0001 );

( $r, $a ) = $e->to(0.000000, 90.000000,88.000000, 270.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 2.45853187192722e-16, 0.0001 );

( $r, $a ) = $e->to(0.000000, 180.000000,-88.000000, 0.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(0.000000, 180.000000,-88.000000, 90.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 182.006722653969, 0.0001 );

( $r, $a ) = $e->to(0.000000, 180.000000,-88.000000, 180.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(0.000000, 180.000000,-88.000000, 270.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 177.993277346031, 0.0001 );

( $r, $a ) = $e->to(0.000000, 180.000000,0.000000, 90.000000);
delta_ok( $r, 10018754.1713946 );
delta_within( $a, 270, 0.0001 );

( $r, $a ) = $e->to(0.000000, 180.000000,0.000000, 180.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(0.000000, 180.000000,0.000000, 270.000000);
delta_ok( $r, 10018754.1713946 );
delta_within( $a, 90, 0.0001 );

( $r, $a ) = $e->to(0.000000, 180.000000,88.000000, 0.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 360, 0.0001 );

( $r, $a ) = $e->to(0.000000, 180.000000,88.000000, 90.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 357.993277346031, 0.0001 );

( $r, $a ) = $e->to(0.000000, 180.000000,88.000000, 180.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(0.000000, 180.000000,88.000000, 270.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 2.00672265396903, 0.0001 );

( $r, $a ) = $e->to(0.000000, 270.000000,-88.000000, 0.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 177.993277346031, 0.0001 );

( $r, $a ) = $e->to(0.000000, 270.000000,-88.000000, 90.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(0.000000, 270.000000,-88.000000, 180.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 182.006722653969, 0.0001 );

( $r, $a ) = $e->to(0.000000, 270.000000,-88.000000, 270.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(0.000000, 270.000000,0.000000, 0.000000);
delta_ok( $r, 10018754.1713946 );
delta_within( $a, 90, 0.0001 );

( $r, $a ) = $e->to(0.000000, 270.000000,0.000000, 180.000000);
delta_ok( $r, 10018754.1713946 );
delta_within( $a, 270, 0.0001 );

( $r, $a ) = $e->to(0.000000, 270.000000,0.000000, 270.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(0.000000, 270.000000,88.000000, 0.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 2.00672265396903, 0.0001 );

( $r, $a ) = $e->to(0.000000, 270.000000,88.000000, 90.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 360, 0.0001 );

( $r, $a ) = $e->to(0.000000, 270.000000,88.000000, 180.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 357.993277346031, 0.0001 );

( $r, $a ) = $e->to(0.000000, 270.000000,88.000000, 270.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 0, 0.0001 );

( $r, $a ) = $e->to(88.000000, 0.000000,-88.000000, 0.000000);
delta_ok( $r, 19557157.3743612 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(88.000000, 0.000000,-88.000000, 90.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 134.975074649506, 0.0001 );

( $r, $a ) = $e->to(88.000000, 0.000000,-88.000000, 270.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 225.024925350494, 0.0001 );

( $r, $a ) = $e->to(88.000000, 0.000000,0.000000, 0.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(88.000000, 0.000000,0.000000, 90.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 89.9894488745546, 0.0001 );

( $r, $a ) = $e->to(88.000000, 0.000000,0.000000, 180.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 7.02101510964039e-15, 0.0001 );

( $r, $a ) = $e->to(88.000000, 0.000000,0.000000, 270.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 270.010551125445, 0.0001 );

( $r, $a ) = $e->to(88.000000, 0.000000,88.000000, 0.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(88.000000, 0.000000,88.000000, 90.000000);
delta_ok( $r, 315884.900018328 );
delta_within( $a, 45.0174567892171, 0.0001 );

( $r, $a ) = $e->to(88.000000, 0.000000,88.000000, 180.000000);
delta_ok( $r, 446774.084261806 );
delta_within( $a, 3.51050755482019e-15, 0.0001 );

( $r, $a ) = $e->to(88.000000, 0.000000,88.000000, 270.000000);
delta_ok( $r, 315884.900018328 );
delta_within( $a, 314.982543210783, 0.0001 );

( $r, $a ) = $e->to(88.000000, 90.000000,-88.000000, 0.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 225.024925350494, 0.0001 );

( $r, $a ) = $e->to(88.000000, 90.000000,-88.000000, 90.000000);
delta_ok( $r, 19557157.3743612 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(88.000000, 90.000000,-88.000000, 180.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 134.975074649506, 0.0001 );

( $r, $a ) = $e->to(88.000000, 90.000000,0.000000, 0.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 270.010551125445, 0.0001 );

( $r, $a ) = $e->to(88.000000, 90.000000,0.000000, 90.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(88.000000, 90.000000,0.000000, 180.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 89.9894488745546, 0.0001 );

( $r, $a ) = $e->to(88.000000, 90.000000,0.000000, 270.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 7.02101510964039e-15, 0.0001 );

( $r, $a ) = $e->to(88.000000, 90.000000,88.000000, 0.000000);
delta_ok( $r, 315884.900018328 );
delta_within( $a, 314.982543210783, 0.0001 );

( $r, $a ) = $e->to(88.000000, 90.000000,88.000000, 90.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(88.000000, 90.000000,88.000000, 180.000000);
delta_ok( $r, 315884.900018328 );
delta_within( $a, 45.0174567892171, 0.0001 );

( $r, $a ) = $e->to(88.000000, 90.000000,88.000000, 270.000000);
delta_ok( $r, 446774.084261806 );
delta_within( $a, 3.51050755482019e-15, 0.0001 );

( $r, $a ) = $e->to(88.000000, 180.000000,-88.000000, 90.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 225.024925350494, 0.0001 );

( $r, $a ) = $e->to(88.000000, 180.000000,-88.000000, 180.000000);
delta_ok( $r, 19557157.3743612 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(88.000000, 180.000000,-88.000000, 270.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 134.975074649506, 0.0001 );

( $r, $a ) = $e->to(88.000000, 180.000000,0.000000, 0.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 360, 0.0001 );

( $r, $a ) = $e->to(88.000000, 180.000000,0.000000, 90.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 270.010551125445, 0.0001 );

( $r, $a ) = $e->to(88.000000, 180.000000,0.000000, 180.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(88.000000, 180.000000,0.000000, 270.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 89.9894488745546, 0.0001 );

( $r, $a ) = $e->to(88.000000, 180.000000,88.000000, 0.000000);
delta_ok( $r, 446774.084261806 );
delta_within( $a, 360, 0.0001 );

( $r, $a ) = $e->to(88.000000, 180.000000,88.000000, 90.000000);
delta_ok( $r, 315884.900018328 );
delta_within( $a, 314.982543210783, 0.0001 );

( $r, $a ) = $e->to(88.000000, 180.000000,88.000000, 180.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(88.000000, 180.000000,88.000000, 270.000000);
delta_ok( $r, 315884.900018328 );
delta_within( $a, 45.0174567892171, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,-88.000000, 0.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 134.975074649506, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,-88.000000, 180.000000);
delta_ok( $r, 19688067.1507399 );
delta_within( $a, 225.024925350494, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,-88.000000, 270.000000);
delta_ok( $r, 19557157.3743612 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,0.000000, 0.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 89.9894488745546, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,0.000000, 90.000000);
delta_ok( $r, 10225352.7714424 );
delta_within( $a, 360, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,0.000000, 180.000000);
delta_ok( $r, 10001986.306231 );
delta_within( $a, 270.010551125445, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,0.000000, 270.000000);
delta_ok( $r, 9778578.68718058 );
delta_within( $a, 180, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,88.000000, 0.000000);
delta_ok( $r, 315884.900018328 );
delta_within( $a, 45.0174567892171, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,88.000000, 90.000000);
delta_ok( $r, 446774.084261806 );
delta_within( $a, 360, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,88.000000, 180.000000);
delta_ok( $r, 315884.900018328 );
delta_within( $a, 314.982543210783, 0.0001 );

( $r, $a ) = $e->to(88.000000, 270.000000,88.000000, 270.000000);
delta_within( $r, 0, 0.1 );

( $r, $a ) = $e->to(-57.934266, 269.964713,-71.038589, 313.367482);
delta_ok( $r, 2461348.49884539 );
delta_within( $a, 143.495982424711, 0.0001 );

( $r, $a ) = $e->to(13.605417, 282.887733,33.826171, 132.755857);
delta_ok( $r, 13881711.3668125 );
delta_within( $a, 329.877393304846, 0.0001 );

( $r, $a ) = $e->to(65.807118, 268.234235,-9.495920, 127.342153);
delta_ok( $r, 13080588.2844449 );
delta_within( $a, 315.487194712953, 0.0001 );

( $r, $a ) = $e->to(40.923455, 93.679920,-18.604296, 279.644382);
delta_ok( $r, 17466259.434592 );
delta_within( $a, 345.548718774953, 0.0001 );

( $r, $a ) = $e->to(60.726184, 207.283752,37.934793, 29.881529);
delta_ok( $r, 9066127.08393923 );
delta_within( $a, 357.929792828869, 0.0001 );

( $r, $a ) = $e->to(-7.774777, 39.580853,7.960132, 140.647165);
delta_ok( $r, 11347622.659524 );
delta_within( $a, 83.5147933078239, 0.0001 );

( $r, $a ) = $e->to(12.071034, 345.263922,64.718561, 58.748224);
delta_ok( $r, 8015806.76074674 );
delta_within( $a, 25.5684606529896, 0.0001 );

( $r, $a ) = $e->to(-39.510429, 93.729994,74.640675, 156.932149);
delta_ok( $r, 13475265.3194887 );
delta_within( $a, 16.1314169841382, 0.0001 );

( $r, $a ) = $e->to(50.945112, 45.942126,-73.531799, 338.631126);
delta_ok( $r, 14708043.0041568 );
delta_within( $a, 200.832170860037, 0.0001 );

( $r, $a ) = $e->to(-83.498813, 55.515935,-20.735893, 55.705212);
delta_ok( $r, 6982021.66470238 );
delta_within( $a, 0.199186799984656, 0.0001 );

( $r, $a ) = $e->to(5.162682, 315.665457,-12.212387, 95.006241);
delta_ok( $r, 15498832.2392944 );
delta_within( $a, 102.773420623229, 0.0001 );

( $r, $a ) = $e->to(-32.807368, 277.233007,-69.099205, 277.575212);
delta_ok( $r, 4037164.60019584 );
delta_within( $a, 179.793034667054, 0.0001 );

( $r, $a ) = $e->to(36.114418, 78.710277,46.075743, 148.216696);
delta_ok( $r, 5755004.21318049 );
delta_within( $a, 56.0065080486888, 0.0001 );

( $r, $a ) = $e->to(26.193521, 334.784252,0.425668, 247.478645);
delta_ok( $r, 9725471.48062948 );
delta_within( $a, 269.310665743865, 0.0001 );

( $r, $a ) = $e->to(-11.247993, 218.988327,13.474320, 227.743816);
delta_ok( $r, 2900018.49666161 );
delta_within( $a, 19.7057344431644, 0.0001 );

( $r, $a ) = $e->to(-6.437086, 227.607764,-63.660092, 345.874110);
delta_ok( $r, 10705155.2766087 );
delta_within( $a, 156.810521246297, 0.0001 );

( $r, $a ) = $e->to(-62.590000, 160.805906,-30.873135, 342.930268);
delta_ok( $r, 9642598.26135096 );
delta_within( $a, 181.824242572861, 0.0001 );

( $r, $a ) = $e->to(-24.959632, 143.354960,-70.174449, 343.830865);
delta_ok( $r, 9329151.38181234 );
delta_within( $a, 186.863601169541, 0.0001 );

( $r, $a ) = $e->to(85.292583, 207.349229,64.400817, 53.955321);
delta_ok( $r, 3335286.04587854 );
delta_within( $a, 337.144191000546, 0.0001 );

( $r, $a ) = $e->to(72.010476, 234.450903,-76.760490, 343.799779);
delta_ok( $r, 17958832.9929409 );
delta_within( $a, 136.554146907295, 0.0001 );

( $r, $a ) = $e->to(82.062247, 282.795619,53.709008, 205.651325);
delta_ok( $r, 3934034.29221557 );
delta_within( $a, 268.118556686811, 0.0001 );

( $r, $a ) = $e->to(-38.264913, 346.518379,13.987962, 157.269106);
delta_ok( $r, 17166080.1505785 );
delta_within( $a, 159.131156324152, 0.0001 );

( $r, $a ) = $e->to(-21.923233, 332.426739,-82.948909, 276.789592);
delta_ok( $r, 7146762.95726172 );
delta_within( $a, 186.481082703262, 0.0001 );

( $r, $a ) = $e->to(39.266792, 212.748966,-13.043617, 231.171501);
delta_ok( $r, 6098485.07627283 );
delta_within( $a, 157.839268087425, 0.0001 );

( $r, $a ) = $e->to(43.430240, 24.846678,-78.620089, 278.752912);
delta_ok( $r, 15048510.4598093 );
delta_within( $a, 195.726980930824, 0.0001 );

( $r, $a ) = $e->to(35.816613, 43.655923,-34.595103, 26.822827);
delta_ok( $r, 7988680.46436951 );
delta_within( $a, 194.576181045333, 0.0001 );

( $r, $a ) = $e->to(33.063322, 131.384200,40.382161, 70.051002);
delta_ok( $r, 5429684.94325662 );
delta_within( $a, 297.178412432248, 0.0001 );

( $r, $a ) = $e->to(-60.791775, 58.245260,58.472988, 198.337306);
delta_ok( $r, 17780776.1756639 );
delta_within( $a, 79.0615676823811, 0.0001 );

( $r, $a ) = $e->to(-32.182827, 189.985094,-11.752936, 76.924247);
delta_ok( $r, 11409884.6024856 );
delta_within( $a, 247.195040193053, 0.0001 );

( $r, $a ) = $e->to(40.410413, 0.492949,15.171991, 171.877678);
delta_ok( $r, 13787111.6994169 );
delta_within( $a, 9.98055464219618, 0.0001 );

( $r, $a ) = $e->to(77.415003, 274.377083,-65.518823, 5.320166);
delta_ok( $r, 16972920.1504706 );
delta_within( $a, 114.737218071592, 0.0001 );

( $r, $a ) = $e->to(-0.001169, 304.117753,61.978146, 32.763058);
delta_ok( $r, 9934772.70997968 );
delta_within( $a, 28.0963878459979, 0.0001 );

( $r, $a ) = $e->to(62.964471, 284.016319,13.811810, 35.816077);
delta_ok( $r, 9706652.75474365 );
delta_within( $a, 64.4264818092797, 0.0001 );

( $r, $a ) = $e->to(57.757522, 268.990763,71.873398, 184.371272);
delta_ok( $r, 3903360.2842862 );
delta_within( $a, 327.2750182981, 0.0001 );

( $r, $a ) = $e->to(67.683592, 346.301076,11.705901, 170.600523);
delta_ok( $r, 11191991.116299 );
delta_within( $a, 355.725079106085, 0.0001 );

( $r, $a ) = $e->to(-14.509993, 234.124251,66.915477, 210.936486);
delta_ok( $r, 9228060.1799437 );
delta_within( $a, 351.01236525307, 0.0001 );

( $r, $a ) = $e->to(-48.837869, 359.764786,-59.984409, 250.415053);
delta_ok( $r, 6372560.48179179 );
delta_within( $a, 214.202392497164, 0.0001 );

( $r, $a ) = $e->to(35.469166, 355.034035,26.153177, 235.757036);
delta_ok( $r, 10676483.2332483 );
delta_within( $a, 308.158079735, 0.0001 );

( $r, $a ) = $e->to(60.579911, 245.437140,82.746095, 119.397052);
delta_ok( $r, 3811507.31065304 );
delta_within( $a, 349.513862043143, 0.0001 );

( $r, $a ) = $e->to(52.814462, 57.371114,63.937125, 216.992405);
delta_ok( $r, 6937562.20237631 );
delta_within( $a, 9.96338244893614, 0.0001 );

( $r, $a ) = $e->to(-14.087235, 353.288548,64.925852, 167.053343);
delta_ok( $r, 14338892.5995258 );
delta_within( $a, 3.39185219099383, 0.0001 );

( $r, $a ) = $e->to(-44.555528, 304.069875,60.410717, 265.142366);
delta_ok( $r, 12160327.5620529 );
delta_within( $a, 340.693626694262, 0.0001 );

( $r, $a ) = $e->to(-64.733717, 171.649788,50.043309, 179.133361);
delta_ok( $r, 12743815.3389911 );
delta_within( $a, 5.30605565409109, 0.0001 );

( $r, $a ) = $e->to(12.112040, 159.861758,-81.799749, 119.465377);
delta_ok( $r, 10639297.4019031 );
delta_within( $a, 185.351686923878, 0.0001 );

( $r, $a ) = $e->to(-12.913136, 209.725263,-72.500921, 242.959763);
delta_ok( $r, 6970565.2838279 );
delta_within( $a, 169.270961300788, 0.0001 );

( $r, $a ) = $e->to(15.388763, 84.854820,43.057681, 345.007357);
delta_ok( $r, 9633675.3438791 );
delta_within( $a, 313.800022958026, 0.0001 );

( $r, $a ) = $e->to(64.108958, 26.794838,7.006558, 137.813405);
delta_ok( $r, 10304216.6052154 );
delta_within( $a, 67.9411483566917, 0.0001 );

( $r, $a ) = $e->to(-87.675134, 257.981187,-78.556203, 7.576067);
delta_ok( $r, 1386576.82150103 );
delta_within( $a, 119.615115520357, 0.0001 );

( $r, $a ) = $e->to(45.506762, 226.425777,75.858502, 197.258652);
delta_ok( $r, 3647257.38530206 );
delta_within( $a, 347.251530908183, 0.0001 );

( $r, $a ) = $e->to(-15.130062, 141.465980,-53.226032, 110.910346);
delta_ok( $r, 5002050.32026866 );
delta_within( $a, 205.586864367362, 0.0001 );

( $r, $a ) = $e->to(-51.171998, 219.992892,-22.538592, 57.834091);
delta_ok( $r, 11655022.9936302 );
delta_within( $a, 196.966622858705, 0.0001 );

( $r, $a ) = $e->to(-7.000668, 289.072816,-55.716970, 258.457540);
delta_ok( $r, 6040901.32754715 );
delta_within( $a, 200.751140142797, 0.0001 );

( $r, $a ) = $e->to(-4.103181, 51.031553,23.523933, 87.322753);
delta_ok( $r, 4984769.60108084 );
delta_within( $a, 50.4493441771287, 0.0001 );

( $r, $a ) = $e->to(-66.149558, 313.732597,-69.799797, 271.586522);
delta_ok( $r, 1771994.55688255 );
delta_within( $a, 237.915691067636, 0.0001 );

( $r, $a ) = $e->to(-21.017857, 200.424780,-74.230046, 135.855002);
delta_ok( $r, 7008974.69804302 );
delta_within( $a, 196.040727615166, 0.0001 );

( $r, $a ) = $e->to(22.032424, 284.263825,-13.840647, 296.727744);
delta_ok( $r, 4194939.63733736 );
delta_within( $a, 159.939176654336, 0.0001 );

( $r, $a ) = $e->to(9.137311, 262.152203,-1.968743, 94.386354);
delta_ok( $r, 18458863.0453079 );
delta_within( $a, 300.722071086073, 0.0001 );

( $r, $a ) = $e->to(-0.367684, 176.244258,-1.495746, 305.845852);
delta_ok( $r, 14423885.7606477 );
delta_within( $a, 92.254200882634, 0.0001 );

( $r, $a ) = $e->to(73.726080, 130.305234,8.059198, 217.631502);
delta_ok( $r, 9064603.78966638 );
delta_within( $a, 90.2187469853124, 0.0001 );

( $r, $a ) = $e->to(19.299877, 158.695298,36.382896, 77.814439);
delta_ok( $r, 7968239.53014342 );
delta_within( $a, 303.025906398025, 0.0001 );

( $r, $a ) = $e->to(46.759530, 110.299360,50.379077, 32.324924);
delta_ok( $r, 5497752.11729219 );
delta_within( $a, 304.633726536012, 0.0001 );

( $r, $a ) = $e->to(70.152840, 336.092025,82.259265, 222.676574);
delta_ok( $r, 2674865.39716241 );
delta_within( $a, 342.272975326945, 0.0001 );

( $r, $a ) = $e->to(-76.222244, 40.691029,22.995327, 26.717480);
delta_ok( $r, 11049527.5651963 );
delta_within( $a, 346.952142522718, 0.0001 );

( $r, $a ) = $e->to(10.103669, 84.313406,19.705372, 336.438821);
delta_ok( $r, 11469863.8693074 );
delta_within( $a, 293.141469167342, 0.0001 );

( $r, $a ) = $e->to(12.619602, 206.733155,-6.260003, 43.507509);
delta_ok( $r, 18061480.1484429 );
delta_within( $a, 290.063847557674, 0.0001 );

( $r, $a ) = $e->to(-46.431748, 359.498721,10.070717, 310.960507);
delta_ok( $r, 7899515.8975625 );
delta_within( $a, 308.625407534259, 0.0001 );

( $r, $a ) = $e->to(-37.466916, 262.779852,56.541387, 175.943954);
delta_ok( $r, 13201412.4835735 );
delta_within( $a, 320.923712804673, 0.0001 );

( $r, $a ) = $e->to(16.376357, 40.377857,-60.139286, 251.664078);
delta_ok( $r, 14535420.1203339 );
delta_within( $a, 199.941781738799, 0.0001 );

( $r, $a ) = $e->to(16.688504, 317.877537,-12.125937, 75.628131);
delta_ok( $r, 13327641.453418 );
delta_within( $a, 94.5497924966981, 0.0001 );

( $r, $a ) = $e->to(-55.936936, 247.494628,-49.609989, 95.206424);
delta_ok( $r, 8027065.67558326 );
delta_within( $a, 198.465952711615, 0.0001 );

( $r, $a ) = $e->to(-48.734356, 177.356139,-40.864142, 160.579825);
delta_ok( $r, 1584165.23370945 );
delta_within( $a, 297.225924659718, 0.0001 );

( $r, $a ) = $e->to(-46.420266, 106.843903,26.510982, 269.915143);
delta_ok( $r, 17342885.0886688 );
delta_within( $a, 140.568713323341, 0.0001 );

( $r, $a ) = $e->to(33.895806, 152.960690,45.681845, 143.422437);
delta_ok( $r, 1540155.92691393 );
delta_within( $a, 330.990801947478, 0.0001 );

( $r, $a ) = $e->to(-22.177541, 230.794842,5.952076, 323.707746);
delta_ok( $r, 10562929.9069924 );
delta_within( $a, 85.6923735369705, 0.0001 );

( $r, $a ) = $e->to(27.348830, 335.040139,-86.270375, 62.080991);
delta_ok( $r, 12999873.9526767 );
delta_within( $a, 175.804229852436, 0.0001 );

( $r, $a ) = $e->to(25.235341, 275.774114,31.035045, 277.375893);
delta_ok( $r, 661687.897454909 );
delta_within( $a, 13.3850142160344, 0.0001 );

( $r, $a ) = $e->to(44.964609, 322.536805,-49.665325, 229.175856);
delta_ok( $r, 13818296.2274252 );
delta_within( $a, 231.718750704844, 0.0001 );

( $r, $a ) = $e->to(17.105270, 224.034545,-23.725503, 25.530801);
delta_ok( $r, 17966256.4934081 );
delta_within( $a, 114.328718330763, 0.0001 );

( $r, $a ) = $e->to(-43.562030, 129.996443,-2.881152, 181.334105);
delta_ok( $r, 6763659.31279146 );
delta_within( $a, 63.3777807043478, 0.0001 );

( $r, $a ) = $e->to(-36.975702, 85.936197,28.597533, 323.170028);
delta_ok( $r, 14663447.542549 );
delta_within( $a, 277.258344365826, 0.0001 );

( $r, $a ) = $e->to(30.175209, 15.545439,59.419522, 205.929510);
delta_ok( $r, 10028999.9945253 );
delta_within( $a, 354.737516001717, 0.0001 );

( $r, $a ) = $e->to(-55.644950, 9.518430,-4.344329, 202.739897);
delta_ok( $r, 13245314.7402133 );
delta_within( $a, 195.068181346622, 0.0001 );

( $r, $a ) = $e->to(-58.450106, 219.758248,25.011231, 110.301202);
delta_ok( $r, 13467743.9379826 );
delta_within( $a, 267.404143348047, 0.0001 );

( $r, $a ) = $e->to(80.393984, 275.743098,23.935568, 24.731901);
delta_ok( $r, 7736537.16622236 );
delta_within( $a, 67.3009782129282, 0.0001 );

( $r, $a ) = $e->to(-65.005040, 272.564728,-3.463969, 257.290127);
delta_ok( $r, 6937016.52552513 );
delta_within( $a, 342.716900592903, 0.0001 );

( $r, $a ) = $e->to(-67.713271, 230.640539,-17.890516, 254.265464);
delta_ok( $r, 5784660.55802784 );
delta_within( $a, 28.9708039179722, 0.0001 );

( $r, $a ) = $e->to(49.977476, 253.823581,-40.736808, 280.971459);
delta_ok( $r, 10394371.7857178 );
delta_within( $a, 159.64985287105, 0.0001 );

( $r, $a ) = $e->to(-64.390959, 99.691638,-73.699237, 76.773535);
delta_ok( $r, 1366211.9574064 );
delta_within( $a, 211.048516722968, 0.0001 );

( $r, $a ) = $e->to(-53.488147, 222.914699,18.783198, 197.750208);
delta_ok( $r, 8363640.86128966 );
delta_within( $a, 335.33932853657, 0.0001 );

( $r, $a ) = $e->to(11.886353, 45.130760,-75.325990, 317.821511);
delta_ok( $r, 11197914.6775989 );
delta_within( $a, 194.976652815042, 0.0001 );

( $r, $a ) = $e->to(-61.023376, 203.679753,-32.274576, 120.526333);
delta_ok( $r, 6567145.63781082 );
delta_within( $a, 258.450398494753, 0.0001 );

( $r, $a ) = $e->to(-51.815775, 243.455936,-81.006002, 15.254084);
delta_ok( $r, 4976433.34000944 );
delta_within( $a, 170.437335167331, 0.0001 );

( $r, $a ) = $e->to(55.609307, 23.266927,36.573196, 147.424699);
delta_ok( $r, 8504842.30115383 );
delta_within( $a, 43.1196124880041, 0.0001 );

( $r, $a ) = $e->to(68.261410, 338.284240,-87.468266, 126.278650);
delta_ok( $r, 17811940.4191875 );
delta_within( $a, 176.004575135045, 0.0001 );

( $r, $a ) = $e->to(77.163243, 356.912286,-24.865636, 351.624329);
delta_ok( $r, 11325208.6013212 );
delta_within( $a, 184.912263586077, 0.0001 );

( $r, $a ) = $e->to(-83.363412, 122.791865,60.930467, 157.757983);
delta_ok( $r, 16131090.3340337 );
delta_within( $a, 29.30864338025, 0.0001 );

( $r, $a ) = $e->to(35.819668, 205.416787,-69.790147, 65.110415);
delta_ok( $r, 15539726.8180759 );
delta_within( $a, 200.024233150533, 0.0001 );

( $r, $a ) = $e->to(-45.720757, 246.329948,85.378805, 184.898940);
delta_ok( $r, 14804679.6574129 );
delta_within( $a, 354.403120386001, 0.0001 );

( $r, $a ) = $e->to(70.557651, 168.054555,-4.512946, 146.711647);
delta_ok( $r, 8480703.85435106 );
delta_within( $a, 201.95684320969, 0.0001 );

( $r, $a ) = $e->to(45.494490, 41.408793,-62.327500, 251.688039);
delta_ok( $r, 17322368.6031024 );
delta_within( $a, 214.896328131679, 0.0001 );

