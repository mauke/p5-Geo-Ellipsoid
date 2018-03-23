#!/usr/local/bin/perl
# Test Geo::Ellipsoid create
use Test::More tests => 154;
use Test::Number::Delta relative => 1e-6;
use Geo::Ellipsoid;
use blib;
use strict;
use warnings;

my $e1 = Geo::Ellipsoid->new(ell => 'AIRY');
isnt($e1, undef);
isa_ok($e1, 'Geo::Ellipsoid');
is( $e1->{ellipsoid}, 'AIRY' );
delta_ok( $e1->{equatorial}, 6377563.396 );
delta_ok( $e1->{polar}, 6356256.90923729 );
delta_ok( $e1->{flattening}, 0.00334085064149708 );
ok( exists $Geo::Ellipsoid::ellipsoids{'AIRY'} );

my $e2 = Geo::Ellipsoid->new(ell => 'AIRY-MODIFIED');
isnt($e2, undef);
isa_ok($e2, 'Geo::Ellipsoid');
is( $e2->{ellipsoid}, 'AIRY-MODIFIED' );
delta_ok( $e2->{equatorial}, 6377340.189 );
delta_ok( $e2->{polar}, 6356034.44793853 );
delta_ok( $e2->{flattening}, 0.00334085064149708 );
ok( exists $Geo::Ellipsoid::ellipsoids{'AIRY-MODIFIED'} );

my $e3 = Geo::Ellipsoid->new(ell => 'AUSTRALIAN');
isnt($e3, undef);
isa_ok($e3, 'Geo::Ellipsoid');
is( $e3->{ellipsoid}, 'AUSTRALIAN' );
delta_ok( $e3->{equatorial}, 6378160 );
delta_ok( $e3->{polar}, 6356774.71919531 );
delta_ok( $e3->{flattening}, 0.00335289186923722 );
ok( exists $Geo::Ellipsoid::ellipsoids{'AUSTRALIAN'} );

my $e4 = Geo::Ellipsoid->new(ell => 'BESSEL-1841');
isnt($e4, undef);
isa_ok($e4, 'Geo::Ellipsoid');
is( $e4->{ellipsoid}, 'BESSEL-1841' );
delta_ok( $e4->{equatorial}, 6377397.155 );
delta_ok( $e4->{polar}, 6356078.96281819 );
delta_ok( $e4->{flattening}, 0.00334277318217481 );
ok( exists $Geo::Ellipsoid::ellipsoids{'BESSEL-1841'} );

my $e5 = Geo::Ellipsoid->new(ell => 'CLARKE-1880');
isnt($e5, undef);
isa_ok($e5, 'Geo::Ellipsoid');
is( $e5->{ellipsoid}, 'CLARKE-1880' );
delta_ok( $e5->{equatorial}, 6378249.145 );
delta_ok( $e5->{polar}, 6356514.86954978 );
delta_ok( $e5->{flattening}, 0.00340756137869933 );
ok( exists $Geo::Ellipsoid::ellipsoids{'CLARKE-1880'} );

my $e6 = Geo::Ellipsoid->new(ell => 'EVEREST-1830');
isnt($e6, undef);
isa_ok($e6, 'Geo::Ellipsoid');
is( $e6->{ellipsoid}, 'EVEREST-1830' );
delta_ok( $e6->{equatorial}, 6377276.345 );
delta_ok( $e6->{polar}, 6356075.41314024 );
delta_ok( $e6->{flattening}, 0.00332444929666288 );
ok( exists $Geo::Ellipsoid::ellipsoids{'EVEREST-1830'} );

my $e7 = Geo::Ellipsoid->new(ell => 'EVEREST-MODIFIED');
isnt($e7, undef);
isa_ok($e7, 'Geo::Ellipsoid');
is( $e7->{ellipsoid}, 'EVEREST-MODIFIED' );
delta_ok( $e7->{equatorial}, 6377304.063 );
delta_ok( $e7->{polar}, 6356103.03899315 );
delta_ok( $e7->{flattening}, 0.00332444929666288 );
ok( exists $Geo::Ellipsoid::ellipsoids{'EVEREST-MODIFIED'} );

my $e8 = Geo::Ellipsoid->new(ell => 'FISHER-1960');
isnt($e8, undef);
isa_ok($e8, 'Geo::Ellipsoid');
is( $e8->{ellipsoid}, 'FISHER-1960' );
delta_ok( $e8->{equatorial}, 6378166 );
delta_ok( $e8->{polar}, 6356784.28360711 );
delta_ok( $e8->{flattening}, 0.00335232986925913 );
ok( exists $Geo::Ellipsoid::ellipsoids{'FISHER-1960'} );

my $e9 = Geo::Ellipsoid->new(ell => 'FISHER-1968');
isnt($e9, undef);
isa_ok($e9, 'Geo::Ellipsoid');
is( $e9->{ellipsoid}, 'FISHER-1968' );
delta_ok( $e9->{equatorial}, 6378150 );
delta_ok( $e9->{polar}, 6356768.33724438 );
delta_ok( $e9->{flattening}, 0.00335232986925913 );
ok( exists $Geo::Ellipsoid::ellipsoids{'FISHER-1968'} );

my $e10 = Geo::Ellipsoid->new(ell => 'GRS80');
isnt($e10, undef);
isa_ok($e10, 'Geo::Ellipsoid');
is( $e10->{ellipsoid}, 'GRS80' );
delta_ok( $e10->{equatorial}, 6378137 );
delta_ok( $e10->{polar}, 6356752.31414035 );
delta_ok( $e10->{flattening}, 0.00335281068118367 );
ok( exists $Geo::Ellipsoid::ellipsoids{'GRS80'} );

my $e11 = Geo::Ellipsoid->new(ell => 'HAYFORD');
isnt($e11, undef);
isa_ok($e11, 'Geo::Ellipsoid');
is( $e11->{ellipsoid}, 'HAYFORD' );
delta_ok( $e11->{equatorial}, 6378388 );
delta_ok( $e11->{polar}, 6356911.94612795 );
delta_ok( $e11->{flattening}, 0.00336700336700337 );
ok( exists $Geo::Ellipsoid::ellipsoids{'HAYFORD'} );

my $e12 = Geo::Ellipsoid->new(ell => 'HOUGH-1956');
isnt($e12, undef);
isa_ok($e12, 'Geo::Ellipsoid');
is( $e12->{ellipsoid}, 'HOUGH-1956' );
delta_ok( $e12->{equatorial}, 6378270 );
delta_ok( $e12->{polar}, 6356794.34343434 );
delta_ok( $e12->{flattening}, 0.00336700336700337 );
ok( exists $Geo::Ellipsoid::ellipsoids{'HOUGH-1956'} );

my $e13 = Geo::Ellipsoid->new(ell => 'IAU76');
isnt($e13, undef);
isa_ok($e13, 'Geo::Ellipsoid');
is( $e13->{ellipsoid}, 'IAU76' );
delta_ok( $e13->{equatorial}, 6378140 );
delta_ok( $e13->{polar}, 6356755.28815753 );
delta_ok( $e13->{flattening}, 0.00335281317789691 );
ok( exists $Geo::Ellipsoid::ellipsoids{'IAU76'} );

my $e14 = Geo::Ellipsoid->new(ell => 'KRASSOVSKY-1938');
isnt($e14, undef);
isa_ok($e14, 'Geo::Ellipsoid');
is( $e14->{ellipsoid}, 'KRASSOVSKY-1938' );
delta_ok( $e14->{equatorial}, 6378245 );
delta_ok( $e14->{polar}, 6356863.01877305 );
delta_ok( $e14->{flattening}, 0.00335232986925913 );
ok( exists $Geo::Ellipsoid::ellipsoids{'KRASSOVSKY-1938'} );

my $e15 = Geo::Ellipsoid->new(ell => 'NAD27');
isnt($e15, undef);
isa_ok($e15, 'Geo::Ellipsoid');
is( $e15->{ellipsoid}, 'NAD27' );
delta_ok( $e15->{equatorial}, 6378206.4 );
delta_ok( $e15->{polar}, 6356583.79999999 );
delta_ok( $e15->{flattening}, 0.00339007530392992 );
ok( exists $Geo::Ellipsoid::ellipsoids{'NAD27'} );

my $e16 = Geo::Ellipsoid->new(ell => 'NWL-9D');
isnt($e16, undef);
isa_ok($e16, 'Geo::Ellipsoid');
is( $e16->{ellipsoid}, 'NWL-9D' );
delta_ok( $e16->{equatorial}, 6378145 );
delta_ok( $e16->{polar}, 6356759.76948868 );
delta_ok( $e16->{flattening}, 0.00335289186923722 );
ok( exists $Geo::Ellipsoid::ellipsoids{'NWL-9D'} );

my $e17 = Geo::Ellipsoid->new(ell => 'SOUTHAMERICAN-1969');
isnt($e17, undef);
isa_ok($e17, 'Geo::Ellipsoid');
is( $e17->{ellipsoid}, 'SOUTHAMERICAN-1969' );
delta_ok( $e17->{equatorial}, 6378160 );
delta_ok( $e17->{polar}, 6356774.71919531 );
delta_ok( $e17->{flattening}, 0.00335289186923722 );
ok( exists $Geo::Ellipsoid::ellipsoids{'SOUTHAMERICAN-1969'} );

my $e18 = Geo::Ellipsoid->new(ell => 'SOVIET-1985');
isnt($e18, undef);
isa_ok($e18, 'Geo::Ellipsoid');
is( $e18->{ellipsoid}, 'SOVIET-1985' );
delta_ok( $e18->{equatorial}, 6378136 );
delta_ok( $e18->{polar}, 6356751.30156878 );
delta_ok( $e18->{flattening}, 0.00335281317789691 );
ok( exists $Geo::Ellipsoid::ellipsoids{'SOVIET-1985'} );

my $e19 = Geo::Ellipsoid->new(ell => 'WGS72');
isnt($e19, undef);
isa_ok($e19, 'Geo::Ellipsoid');
is( $e19->{ellipsoid}, 'WGS72' );
delta_ok( $e19->{equatorial}, 6378135 );
delta_ok( $e19->{polar}, 6356750.52001609 );
delta_ok( $e19->{flattening}, 0.0033527794541675 );
ok( exists $Geo::Ellipsoid::ellipsoids{'WGS72'} );

my $e20 = Geo::Ellipsoid->new(ell => 'WGS84');
isnt($e20, undef);
isa_ok($e20, 'Geo::Ellipsoid');
is( $e20->{ellipsoid}, 'WGS84' );
delta_ok( $e20->{equatorial}, 6378137 );
delta_ok( $e20->{polar}, 6356752.31424518 );
delta_ok( $e20->{flattening}, 0.00335281066474748 );
ok( exists $Geo::Ellipsoid::ellipsoids{'WGS84'} );

my $e21 = Geo::Ellipsoid->new();
$e21->set_custom_ellipsoid('CUSTOM', 6378000, 300);
isnt($e21, undef);
isa_ok($e21, 'Geo::Ellipsoid');
is( $e21->{ellipsoid}, 'CUSTOM' );
delta_ok( $e21->{equatorial}, 6378000 );
delta_ok( $e21->{polar}, 6356740 );
delta_ok( $e21->{flattening}, 0.00333333333333333 );
ok( exists $Geo::Ellipsoid::ellipsoids{'CUSTOM'} );

diag "\n\n\tWarning about 'Infinite flattening' OK here\n\n";
my $e22 = Geo::Ellipsoid->new();
$e22->set_custom_ellipsoid('sphere', 6378137, 0);
isnt($e22, undef);
isa_ok($e22, 'Geo::Ellipsoid');
is( $e22->{ellipsoid}, 'SPHERE' );
delta_ok( $e22->{equatorial}, 6378137 );
delta_ok( $e22->{polar}, 6378137 );
delta_within( $e22->{flattening}, 0, 1e-6 );
ok( exists $Geo::Ellipsoid::ellipsoids{'SPHERE'} );
