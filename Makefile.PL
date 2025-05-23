use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'App::Dapper',
    AUTHOR           => q{Mark Benson <mark@jayber.org>},
    VERSION_FROM     => 'lib/App/Dapper.pm',
    ABSTRACT_FROM    => 'lib/App/Dapper.pm',
    LICENSE          => 'mit',
    PL_FILES         => {},
    EXE_FILES         => ['bin/dapper'],
    MIN_PERL_VERSION => '5.8.0',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 6.88,
    },
    BUILD_REQUIRES => {
        'Test::More'                   => 0.98,
    },
    TEST_REQUIRES => {
        'YAML::PP'                     => 0,
    },
    PREREQ_PM => {
        'CGI'                          => 0,
        'Data::Dumper'                 => 0,
        'Data::Dumper::HTML'           => 0,
        'DateTime'                     => 1.52, 
        'DateTime::Format::XSD'        => 0,
        'Exporter'                     => 0,
        'ExtUtils::MakeMaker'          => 0,
        'File::Find'                   => 0,
        'File::Monitor'                => 0,
        'File::Path'                   => 0,
        'File::Spec::Functions'        => 0,
        'FindBin'                      => 0,
        'Getopt::Mixed'                => 0,
        'IO::Dir'                      => 0,
        'JSON'                         => 0,
        'Net::HTTPServer'              => 0,
        'POSIX'                        => 0,
        'Pod::Usage'                   => 0,
        'Template::Alloy'              => 0,
        'Template::Constants'          => 0,
        'Test::More'                   => 0,
        'Test'                         => 0,
        'CommonMark'                   => 0,
        'Unicode::Normalize'           => 0,
        'YAML::PP'                     => 0,
    },
    'META_MERGE' => {
        'resources' => {
            'repository' => 'https://github.com/taboege/dapper',
        },
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'App-Dapper-*' },
);

