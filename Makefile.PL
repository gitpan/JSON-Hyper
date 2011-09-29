use strict;
use warnings;

use inc::Module::Install;

my $dist = 'JSON-Hyper';
my $fn   = "lib/$dist.pm"; $fn =~ s#-#/#g;

name                $dist;
perl_version_from   $fn;
version_from        $fn;
abstract_from       $fn;
readme_from         $fn;
author              'Toby Inkster <tobyink@cpan.org>';
license             'perl';

requires            'Carp'               => '1.00';
requires            'common::sense'      => 0;
requires            'JSON'               => '2.00';
requires            'JSON::Path'         => 0;
requires            'LWP::UserAgent'     => 0;
requires            'Scalar::Util'       => 0;
requires            'Storable'           => 0;
test_requires       'Test::More'         => '0.61';
requires            'URI'                => '1.30';
requires            'URI::Escape'        => 0;

resources(
	'homepage'   => "https://metacpan.org/release/$dist",
	'repository' => "http://goddamn.co.uk/svn-web/perlmods/browse/$dist/",
	'bugtracker' => "http://rt.cpan.org/Dist/Display.html?Queue=$dist",
	);

keywords 'JSON', 'schema', 'hyperlink';
	
write_doap_changes;
write_doap_changes_xml;

auto_install;
WriteAll(
	'meta' => 1,
	'sign' => 1,
	);
