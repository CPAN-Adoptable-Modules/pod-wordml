BEGIN {
	@classes = qw(
		Pod::WordML
		Pod::WordML::AddisonWesley
		);
	}

use Test::More tests => scalar @classes;

foreach my $class ( @classes )
	{
	print "Bail out! $class did not compile\n" unless use_ok( $class );
	}
