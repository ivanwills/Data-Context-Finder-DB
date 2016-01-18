use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name       => 'Data::Context::Loader::DB',
	license           => 'perl',
	dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
	dist_version_from => 'lib/Data/Context/Loader/DB.pm',
	requires          => {
		'perl'             => 5.008,
	},
	build_requires => {
		'Test::More'     => 0,
		'Test::Warnings' => 0,
	},
	add_to_cleanup     => [ 'Data-Context-Loader-DB-*' ],
	create_makefile_pl => 'traditional',
	create_license     => 1,
	meta_merge => {
		resources => {
			repository => 'git://github.com/ivanwills/Data-Context-Loader-DB.git',
			bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Data::Context::Loader::DB',
		},
	},
);

$builder->create_build_script();
