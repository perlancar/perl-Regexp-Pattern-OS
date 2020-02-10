package Regexp::Pattern::OS;

# AUTHORITY
# DATE
# DIST
# VERSION

use Perl::osnames;

our %RE = (
    os_is_known => {
        summary => 'Check that operating system ($^O) is a known value',
        pat => $Perl::osnames::RE_OS_IS_KNOWN,
        examples => [
            {str=>'linux', matches=>1},
            {str=>'MSWin32', matches=>1},
            {str=>'foo', matches=>0},
        ],
    },
    os_is_unix => {
        summary => 'Check that operating system ($^O) is a Unix',
        pat => $Perl::osnames::RE_OS_IS_UNIX,
        examples => [
            {str=>'linux', matches=>1},
            {str=>'MSWin32', matches=>0},
        ],
    },
    os_is_posix => {
        summary => 'Check that operating system ($^O) is (mostly) POSIX compatible',
        pat => $Perl::osnames::RE_OS_IS_POSIX,
        examples => [
            {str=>'linux', matches=>1},
            {str=>'MSWin32', matches=>0},
        ],
    },
);

1;
# ABSTRACT: Regexp patterns related to OS names and Perl's $^O

=head1 SEE ALSO

L<Perl::osnames>
