#!/usr/local/bin/perl
# Test Geo::Ellipsoid create
use Test::More tests => 264;
use Test::Number::Delta relative => 1e-6;
use Geo::Ellipsoid;
#use blib;
use strict;
use warnings;
my $e0 = Geo::Ellipsoid->new(ell=>'AIRY');
ok( defined $e0 );
ok( $e0->isa( 'Geo::Ellipsoid' ) );
ok( $e0->{ellipsoid} eq 'AIRY' );
delta_ok( $e0->{equatorial}, 6377563.396 );
delta_ok( $e0->{polar}, 6356256.90923729 );
delta_ok( $e0->{flattening}, 0.00334085064149708 );
my $e0a = Geo::Ellipsoid->new;
ok( $e0a->{ellipsoid} eq 'AIRY' );
delta_ok( $e0a->{equatorial}, 6377563.396 );
delta_ok( $e0a->{polar}, 6356256.90923729 );
delta_ok( $e0a->{flattening}, 0.00334085064149708 );
ok( exists $Geo::Ellipsoid::ellipsoids{'AIRY'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'AIRY' );

my $e1 = Geo::Ellipsoid->new(ell=>'AIRY-MODIFIED');
ok( defined $e1 );
ok( $e1->isa( 'Geo::Ellipsoid' ) );
ok( $e1->{ellipsoid} eq 'AIRY-MODIFIED' );
delta_ok( $e1->{equatorial}, 6377340.189 );
delta_ok( $e1->{polar}, 6356034.44793853 );
delta_ok( $e1->{flattening}, 0.00334085064149708 );
my $e1a = Geo::Ellipsoid->new;
ok( $e1a->{ellipsoid} eq 'AIRY-MODIFIED' );
delta_ok( $e1a->{equatorial}, 6377340.189 );
delta_ok( $e1a->{polar}, 6356034.44793853 );
delta_ok( $e1a->{flattening}, 0.00334085064149708 );
ok( exists $Geo::Ellipsoid::ellipsoids{'AIRY-MODIFIED'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'AIRY-MODIFIED' );

my $e2 = Geo::Ellipsoid->new(ell=>'AUSTRALIAN');
ok( defined $e2 );
ok( $e2->isa( 'Geo::Ellipsoid' ) );
ok( $e2->{ellipsoid} eq 'AUSTRALIAN' );
delta_ok( $e2->{equatorial}, 6378160 );
delta_ok( $e2->{polar}, 6356774.71919531 );
delta_ok( $e2->{flattening}, 0.00335289186923722 );
my $e2a = Geo::Ellipsoid->new;
ok( $e2a->{ellipsoid} eq 'AUSTRALIAN' );
delta_ok( $e2a->{equatorial}, 6378160 );
delta_ok( $e2a->{polar}, 6356774.71919531 );
delta_ok( $e2a->{flattening}, 0.00335289186923722 );
ok( exists $Geo::Ellipsoid::ellipsoids{'AUSTRALIAN'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'AUSTRALIAN' );

my $e3 = Geo::Ellipsoid->new(ell=>'BESSEL-1841');
ok( defined $e3 );
ok( $e3->isa( 'Geo::Ellipsoid' ) );
ok( $e3->{ellipsoid} eq 'BESSEL-1841' );
delta_ok( $e3->{equatorial}, 6377397.155 );
delta_ok( $e3->{polar}, 6356078.96281819 );
delta_ok( $e3->{flattening}, 0.00334277318217481 );
my $e3a = Geo::Ellipsoid->new;
ok( $e3a->{ellipsoid} eq 'BESSEL-1841' );
delta_ok( $e3a->{equatorial}, 6377397.155 );
delta_ok( $e3a->{polar}, 6356078.96281819 );
delta_ok( $e3a->{flattening}, 0.00334277318217481 );
ok( exists $Geo::Ellipsoid::ellipsoids{'BESSEL-1841'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'BESSEL-1841' );

my $e4 = Geo::Ellipsoid->new(ell=>'CLARKE-1880');
ok( defined $e4 );
ok( $e4->isa( 'Geo::Ellipsoid' ) );
ok( $e4->{ellipsoid} eq 'CLARKE-1880' );
delta_ok( $e4->{equatorial}, 6378249.145 );
delta_ok( $e4->{polar}, 6356514.86954978 );
delta_ok( $e4->{flattening}, 0.00340756137869933 );
my $e4a = Geo::Ellipsoid->new;
ok( $e4a->{ellipsoid} eq 'CLARKE-1880' );
delta_ok( $e4a->{equatorial}, 6378249.145 );
delta_ok( $e4a->{polar}, 6356514.86954978 );
delta_ok( $e4a->{flattening}, 0.00340756137869933 );
ok( exists $Geo::Ellipsoid::ellipsoids{'CLARKE-1880'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'CLARKE-1880' );

my $e5 = Geo::Ellipsoid->new(ell=>'EVEREST-1830');
ok( defined $e5 );
ok( $e5->isa( 'Geo::Ellipsoid' ) );
ok( $e5->{ellipsoid} eq 'EVEREST-1830' );
delta_ok( $e5->{equatorial}, 6377276.345 );
delta_ok( $e5->{polar}, 6356075.41314024 );
delta_ok( $e5->{flattening}, 0.00332444929666288 );
my $e5a = Geo::Ellipsoid->new;
ok( $e5a->{ellipsoid} eq 'EVEREST-1830' );
delta_ok( $e5a->{equatorial}, 6377276.345 );
delta_ok( $e5a->{polar}, 6356075.41314024 );
delta_ok( $e5a->{flattening}, 0.00332444929666288 );
ok( exists $Geo::Ellipsoid::ellipsoids{'EVEREST-1830'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'EVEREST-1830' );

my $e6 = Geo::Ellipsoid->new(ell=>'EVEREST-MODIFIED');
ok( defined $e6 );
ok( $e6->isa( 'Geo::Ellipsoid' ) );
ok( $e6->{ellipsoid} eq 'EVEREST-MODIFIED' );
delta_ok( $e6->{equatorial}, 6377304.063 );
delta_ok( $e6->{polar}, 6356103.03899315 );
delta_ok( $e6->{flattening}, 0.00332444929666288 );
my $e6a = Geo::Ellipsoid->new;
ok( $e6a->{ellipsoid} eq 'EVEREST-MODIFIED' );
delta_ok( $e6a->{equatorial}, 6377304.063 );
delta_ok( $e6a->{polar}, 6356103.03899315 );
delta_ok( $e6a->{flattening}, 0.00332444929666288 );
ok( exists $Geo::Ellipsoid::ellipsoids{'EVEREST-MODIFIED'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'EVEREST-MODIFIED' );

my $e7 = Geo::Ellipsoid->new(ell=>'FISHER-1960');
ok( defined $e7 );
ok( $e7->isa( 'Geo::Ellipsoid' ) );
ok( $e7->{ellipsoid} eq 'FISHER-1960' );
delta_ok( $e7->{equatorial}, 6378166 );
delta_ok( $e7->{polar}, 6356784.28360711 );
delta_ok( $e7->{flattening}, 0.00335232986925913 );
my $e7a = Geo::Ellipsoid->new;
ok( $e7a->{ellipsoid} eq 'FISHER-1960' );
delta_ok( $e7a->{equatorial}, 6378166 );
delta_ok( $e7a->{polar}, 6356784.28360711 );
delta_ok( $e7a->{flattening}, 0.00335232986925913 );
ok( exists $Geo::Ellipsoid::ellipsoids{'FISHER-1960'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'FISHER-1960' );

my $e8 = Geo::Ellipsoid->new(ell=>'FISHER-1968');
ok( defined $e8 );
ok( $e8->isa( 'Geo::Ellipsoid' ) );
ok( $e8->{ellipsoid} eq 'FISHER-1968' );
delta_ok( $e8->{equatorial}, 6378150 );
delta_ok( $e8->{polar}, 6356768.33724438 );
delta_ok( $e8->{flattening}, 0.00335232986925913 );
my $e8a = Geo::Ellipsoid->new;
ok( $e8a->{ellipsoid} eq 'FISHER-1968' );
delta_ok( $e8a->{equatorial}, 6378150 );
delta_ok( $e8a->{polar}, 6356768.33724438 );
delta_ok( $e8a->{flattening}, 0.00335232986925913 );
ok( exists $Geo::Ellipsoid::ellipsoids{'FISHER-1968'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'FISHER-1968' );

my $e9 = Geo::Ellipsoid->new(ell=>'GRS80');
ok( defined $e9 );
ok( $e9->isa( 'Geo::Ellipsoid' ) );
ok( $e9->{ellipsoid} eq 'GRS80' );
delta_ok( $e9->{equatorial}, 6378137 );
delta_ok( $e9->{polar}, 6356752.31414035 );
delta_ok( $e9->{flattening}, 0.00335281068118367 );
my $e9a = Geo::Ellipsoid->new;
ok( $e9a->{ellipsoid} eq 'GRS80' );
delta_ok( $e9a->{equatorial}, 6378137 );
delta_ok( $e9a->{polar}, 6356752.31414035 );
delta_ok( $e9a->{flattening}, 0.00335281068118367 );
ok( exists $Geo::Ellipsoid::ellipsoids{'GRS80'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'GRS80' );

my $e10 = Geo::Ellipsoid->new(ell=>'HAYFORD');
ok( defined $e10 );
ok( $e10->isa( 'Geo::Ellipsoid' ) );
ok( $e10->{ellipsoid} eq 'HAYFORD' );
delta_ok( $e10->{equatorial}, 6378388 );
delta_ok( $e10->{polar}, 6356911.94612795 );
delta_ok( $e10->{flattening}, 0.00336700336700337 );
my $e10a = Geo::Ellipsoid->new;
ok( $e10a->{ellipsoid} eq 'HAYFORD' );
delta_ok( $e10a->{equatorial}, 6378388 );
delta_ok( $e10a->{polar}, 6356911.94612795 );
delta_ok( $e10a->{flattening}, 0.00336700336700337 );
ok( exists $Geo::Ellipsoid::ellipsoids{'HAYFORD'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'HAYFORD' );

my $e11 = Geo::Ellipsoid->new(ell=>'HOUGH-1956');
ok( defined $e11 );
ok( $e11->isa( 'Geo::Ellipsoid' ) );
ok( $e11->{ellipsoid} eq 'HOUGH-1956' );
delta_ok( $e11->{equatorial}, 6378270 );
delta_ok( $e11->{polar}, 6356794.34343434 );
delta_ok( $e11->{flattening}, 0.00336700336700337 );
my $e11a = Geo::Ellipsoid->new;
ok( $e11a->{ellipsoid} eq 'HOUGH-1956' );
delta_ok( $e11a->{equatorial}, 6378270 );
delta_ok( $e11a->{polar}, 6356794.34343434 );
delta_ok( $e11a->{flattening}, 0.00336700336700337 );
ok( exists $Geo::Ellipsoid::ellipsoids{'HOUGH-1956'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'HOUGH-1956' );

my $e12 = Geo::Ellipsoid->new(ell=>'IAU76');
ok( defined $e12 );
ok( $e12->isa( 'Geo::Ellipsoid' ) );
ok( $e12->{ellipsoid} eq 'IAU76' );
delta_ok( $e12->{equatorial}, 6378140 );
delta_ok( $e12->{polar}, 6356755.28815753 );
delta_ok( $e12->{flattening}, 0.00335281317789691 );
my $e12a = Geo::Ellipsoid->new;
ok( $e12a->{ellipsoid} eq 'IAU76' );
delta_ok( $e12a->{equatorial}, 6378140 );
delta_ok( $e12a->{polar}, 6356755.28815753 );
delta_ok( $e12a->{flattening}, 0.00335281317789691 );
ok( exists $Geo::Ellipsoid::ellipsoids{'IAU76'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'IAU76' );

my $e13 = Geo::Ellipsoid->new(ell=>'KRASSOVSKY-1938');
ok( defined $e13 );
ok( $e13->isa( 'Geo::Ellipsoid' ) );
ok( $e13->{ellipsoid} eq 'KRASSOVSKY-1938' );
delta_ok( $e13->{equatorial}, 6378245 );
delta_ok( $e13->{polar}, 6356863.01877305 );
delta_ok( $e13->{flattening}, 0.00335232986925913 );
my $e13a = Geo::Ellipsoid->new;
ok( $e13a->{ellipsoid} eq 'KRASSOVSKY-1938' );
delta_ok( $e13a->{equatorial}, 6378245 );
delta_ok( $e13a->{polar}, 6356863.01877305 );
delta_ok( $e13a->{flattening}, 0.00335232986925913 );
ok( exists $Geo::Ellipsoid::ellipsoids{'KRASSOVSKY-1938'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'KRASSOVSKY-1938' );

my $e14 = Geo::Ellipsoid->new(ell=>'NAD27');
ok( defined $e14 );
ok( $e14->isa( 'Geo::Ellipsoid' ) );
ok( $e14->{ellipsoid} eq 'NAD27' );
delta_ok( $e14->{equatorial}, 6378206.4 );
delta_ok( $e14->{polar}, 6356583.79999999 );
delta_ok( $e14->{flattening}, 0.00339007530392992 );
my $e14a = Geo::Ellipsoid->new;
ok( $e14a->{ellipsoid} eq 'NAD27' );
delta_ok( $e14a->{equatorial}, 6378206.4 );
delta_ok( $e14a->{polar}, 6356583.79999999 );
delta_ok( $e14a->{flattening}, 0.00339007530392992 );
ok( exists $Geo::Ellipsoid::ellipsoids{'NAD27'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'NAD27' );

my $e15 = Geo::Ellipsoid->new(ell=>'NWL-9D');
ok( defined $e15 );
ok( $e15->isa( 'Geo::Ellipsoid' ) );
ok( $e15->{ellipsoid} eq 'NWL-9D' );
delta_ok( $e15->{equatorial}, 6378145 );
delta_ok( $e15->{polar}, 6356759.76948868 );
delta_ok( $e15->{flattening}, 0.00335289186923722 );
my $e15a = Geo::Ellipsoid->new;
ok( $e15a->{ellipsoid} eq 'NWL-9D' );
delta_ok( $e15a->{equatorial}, 6378145 );
delta_ok( $e15a->{polar}, 6356759.76948868 );
delta_ok( $e15a->{flattening}, 0.00335289186923722 );
ok( exists $Geo::Ellipsoid::ellipsoids{'NWL-9D'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'NWL-9D' );

my $e16 = Geo::Ellipsoid->new(ell=>'SOUTHAMERICAN-1969');
ok( defined $e16 );
ok( $e16->isa( 'Geo::Ellipsoid' ) );
ok( $e16->{ellipsoid} eq 'SOUTHAMERICAN-1969' );
delta_ok( $e16->{equatorial}, 6378160 );
delta_ok( $e16->{polar}, 6356774.71919531 );
delta_ok( $e16->{flattening}, 0.00335289186923722 );
my $e16a = Geo::Ellipsoid->new;
ok( $e16a->{ellipsoid} eq 'SOUTHAMERICAN-1969' );
delta_ok( $e16a->{equatorial}, 6378160 );
delta_ok( $e16a->{polar}, 6356774.71919531 );
delta_ok( $e16a->{flattening}, 0.00335289186923722 );
ok( exists $Geo::Ellipsoid::ellipsoids{'SOUTHAMERICAN-1969'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'SOUTHAMERICAN-1969' );

my $e17 = Geo::Ellipsoid->new(ell=>'SOVIET-1985');
ok( defined $e17 );
ok( $e17->isa( 'Geo::Ellipsoid' ) );
ok( $e17->{ellipsoid} eq 'SOVIET-1985' );
delta_ok( $e17->{equatorial}, 6378136 );
delta_ok( $e17->{polar}, 6356751.30156878 );
delta_ok( $e17->{flattening}, 0.00335281317789691 );
my $e17a = Geo::Ellipsoid->new;
ok( $e17a->{ellipsoid} eq 'SOVIET-1985' );
delta_ok( $e17a->{equatorial}, 6378136 );
delta_ok( $e17a->{polar}, 6356751.30156878 );
delta_ok( $e17a->{flattening}, 0.00335281317789691 );
ok( exists $Geo::Ellipsoid::ellipsoids{'SOVIET-1985'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'SOVIET-1985' );

my $e18 = Geo::Ellipsoid->new(ell=>'WGS72');
ok( defined $e18 );
ok( $e18->isa( 'Geo::Ellipsoid' ) );
ok( $e18->{ellipsoid} eq 'WGS72' );
delta_ok( $e18->{equatorial}, 6378135 );
delta_ok( $e18->{polar}, 6356750.52001609 );
delta_ok( $e18->{flattening}, 0.0033527794541675 );
my $e18a = Geo::Ellipsoid->new;
ok( $e18a->{ellipsoid} eq 'WGS72' );
delta_ok( $e18a->{equatorial}, 6378135 );
delta_ok( $e18a->{polar}, 6356750.52001609 );
delta_ok( $e18a->{flattening}, 0.0033527794541675 );
ok( exists $Geo::Ellipsoid::ellipsoids{'WGS72'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'WGS72' );

my $e19 = Geo::Ellipsoid->new(ell=>'WGS84');
ok( defined $e19 );
ok( $e19->isa( 'Geo::Ellipsoid' ) );
ok( $e19->{ellipsoid} eq 'WGS84' );
delta_ok( $e19->{equatorial}, 6378137 );
delta_ok( $e19->{polar}, 6356752.31414035 );
delta_ok( $e19->{flattening}, 0.00335281068118367 );
my $e19a = Geo::Ellipsoid->new;
ok( $e19a->{ellipsoid} eq 'WGS84' );
delta_ok( $e19a->{equatorial}, 6378137 );
delta_ok( $e19a->{polar}, 6356752.31414035 );
delta_ok( $e19a->{flattening}, 0.00335281068118367 );
ok( exists $Geo::Ellipsoid::ellipsoids{'WGS84'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'WGS84' );

my $e20 = Geo::Ellipsoid->new();
$e20->set_custom_ellipsoid('CUSTOM',6378000,300);
ok( defined $e20 );
ok( $e20->isa( 'Geo::Ellipsoid' ) );
ok( $e20->{ellipsoid} eq 'CUSTOM' );
delta_ok( $e20->{equatorial}, 6378000 );
delta_ok( $e20->{polar}, 6356740 );
delta_ok( $e20->{flattening}, 0.00333333333333333 );
my $e20a = Geo::Ellipsoid->new;
ok( $e20a->{ellipsoid} eq 'CUSTOM' );
delta_ok( $e20a->{equatorial}, 6378000 );
delta_ok( $e20a->{polar}, 6356740 );
delta_ok( $e20a->{flattening}, 0.00333333333333333 );
ok( exists $Geo::Ellipsoid::ellipsoids{'CUSTOM'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'CUSTOM' );

my $e21 = Geo::Ellipsoid->new();
$e21->set_custom_ellipsoid('sphere',6378137,0);
ok( defined $e21 );
ok( $e21->isa( 'Geo::Ellipsoid' ) );
ok( $e21->{ellipsoid} eq 'SPHERE' );
delta_ok( $e21->{equatorial}, 6378137 );
delta_ok( $e21->{polar}, 6378137 );
delta_ok( $e21->{flattening}, 0 );
my $e21a = Geo::Ellipsoid->new;
ok( $e21a->{ellipsoid} eq 'SPHERE' );
delta_ok( $e21a->{equatorial}, 6378137 );
delta_ok( $e21a->{polar}, 6378137 );
delta_ok( $e21a->{flattening}, 0 );
ok( exists $Geo::Ellipsoid::ellipsoids{'SPHERE'} );
ok( $Geo::Ellipsoid::defaults{'ellipsoid'} eq 'SPHERE' );
