# (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2018.
# See the LICENSE file for more details.

use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
  module_name        => 'EPFL::Net::ipv6Test',
  license            => 'apache_2_0',
  dist_author        => q{William Belle <william.belle@gmail.com>},
  dist_version_from  => 'lib/EPFL/Net/ipv6Test.pm',
  release_status     => 'stable',
  configure_requires => {
    'Module::Build' => '0.4224',
  },
  build_requires => {
    'File::Copy::Recursive' => '0.44',
    'File::Find::Rule'      => '0.34',
    'Test::Deep'            => '1.128',
    'Test::MockModule'      => '0.15',
    'Test::More'            => '0',
  },
  requires => {
    'JSON'            => '2.97',
    'LWP::UserAgent'  => '6.34',
    'Readonly'        => '2.05',
    'Term::ANSIColor' => '4.06',
  },
  add_to_cleanup => ['EPFL-Net-ipv6Test-*'],
);

$builder->create_build_script();
