use ExtUtils::MakeMaker;

WriteMakefile (
               AUTHOR        => 'Casey West <casey@geeknest.com>',
               ABSTRACT      => "Connect to IMAPS",
               NAME          => 'Net::IMAP::SImple::SSL',
               PREREQ_PM     => {
                                 'Test::More' => '',
                                 'IO::Socket::SSL' => '',
                                 'Net::IMAP::Simple' => '',
                                },
               VERSION_FROM  => 'lib/Net/IMAP/Simple/SSL.pm',
              );
