package Net::IMAP::Simple::SSL;
# $Id: SSL.pm,v 1.2 2004/05/18 16:49:49 cwest Exp $
use strict;

use vars qw[$VERSION];
$VERSION = (qw$Revision: 1.2 $)[1];

use IO::Socket::SSL;
use base qw[Net::IMAP::Simple];

sub new {
    my ( $class, $server, %options ) = @_;
    my ( $self );

    if ( ref( $class ) ) {
        $class = ref( $class );
    }

    $self = { %options };
    $self->{count} = 0;
    $self->{sock} = new IO::Socket::SSL( "$server:993" )
        or return;
    $self->{sock}->getline();

    bless $self, $class;
    return $self;
}

1;

__END__

=head1 NAME

Net::IMAP::Simple::SSL - Subclass of Net::IMAP::Simple with SSL support

=head1 SYNOPSIS

  use Net::IMAP::Simple::SSL;
  my $imap = Net::IMAP::Simple::SSL->new($server);
  
  $imap->login($user => $pass);
  
  my $total_messages = $imap->select("perl-advocacy");

=head1 DESCRIPTION

This module is a subclass of L<Net::IMAP::SImple|Net::IMAP::Simple> that
includes SSL support. The interface is identical.

=head1 SEE ALSO

L<Net::IMAP::Simple>,
L<IO::Socket::SSL>,
L<perl>.

=head1 AUTHOR

Casey West, <F<casey@geeknest.com>>.

=head1 COPYRIGHT

  Copyright (c) 2004 Casey West.  All rights reserved.
  This module is free software; you can redistribute it and/or modify it
  under the same terms as Perl itself.

=cut
