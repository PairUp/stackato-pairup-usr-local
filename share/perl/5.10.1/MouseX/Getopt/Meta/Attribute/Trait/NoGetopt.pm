package MouseX::Getopt::Meta::Attribute::Trait::NoGetopt;
BEGIN {
  $MouseX::Getopt::Meta::Attribute::Trait::NoGetopt::AUTHORITY = 'cpan:STEVAN';
}
{
  $MouseX::Getopt::Meta::Attribute::Trait::NoGetopt::VERSION = '0.34';
}
# ABSTRACT: Optional meta attribute trait for ignoring params

use Mouse::Role;
no Mouse::Role;

# register this as a metaclass alias ...
package # stop confusing PAUSE
    Mouse::Meta::Attribute::Custom::Trait::NoGetopt;
sub register_implementation { 'MouseX::Getopt::Meta::Attribute::Trait::NoGetopt' }

1;


__END__
=pod

=encoding utf-8

=head1 NAME

MouseX::Getopt::Meta::Attribute::Trait::NoGetopt - Optional meta attribute trait for ignoring params

=head1 SYNOPSIS

  package App;
  use Mouse;

  with 'MouseX::Getopt';

  has 'data' => (
      traits  => [ 'NoGetopt' ],  # do not attempt to capture this param
      is      => 'ro',
      isa     => 'Str',
      default => 'file.dat',
  );

=head1 DESCRIPTION

This is a custom attribute metaclass trait which can be used to
specify that a specific attribute should B<not> be processed by
C<MouseX::Getopt>. All you need to do is specify the C<NoGetopt>
metaclass trait.

  has 'foo' => (traits => [ 'NoGetopt', ... ], ... );

=head1 AUTHORS

=over 4

=item *

NAKAGAWA Masaki <masaki@cpan.org>

=item *

FUJI Goro <gfuji@cpan.org>

=item *

Stevan Little <stevan@iinteractive.com>

=item *

Brandon L. Black <blblack@gmail.com>

=item *

Yuval Kogman <nothingmuch@woobling.org>

=item *

Ryan D Johnson <ryan@innerfence.com>

=item *

Drew Taylor <drew@drewtaylor.com>

=item *

Tomas Doran <bobtfish@bobtfish.net>

=item *

Florian Ragwitz <rafl@debian.org>

=item *

Dagfinn Ilmari Mannsaker <ilmari@ilmari.org>

=item *

Avar Arnfjord Bjarmason <avar@cpan.org>

=item *

Chris Prather <perigrin@cpan.org>

=item *

Mark Gardner <mjgardner@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Infinity Interactive, Inc.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

