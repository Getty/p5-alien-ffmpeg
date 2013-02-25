use strict;
use warnings;

use lib '../../lib';

use Alien::Base::ModuleBuild;

my $builder = Alien::Base::ModuleBuild->new(
  module_name => 'Alien::ffmpeg',
  dist_abstract => 'Easy installation of ffmpeg',
  license => 'perl',
  configure_requires => {
    'Alien::Base' => 0,
  },
  requires => {
    'perl' => '5.8.1',
    'Alien::Base' => 0,
  },
  dist_author => 'Torsten Raudssus <torsten@raudss.us>',
  alien_name => 'ffmpeg',
  alien_repository => {
    protocol => 'http',
    host     => 'ffmpeg.org',
    location => '/releases',
    pattern  => qr/^ffmpeg-([\d\.]+)\.tar\.gz$/,
  },
);
$builder->create_build_script;


