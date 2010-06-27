use Test::More tests => 1;

use Sys::Trace;

my $trace = Sys::Trace->new;
isa_ok $trace, "Sys::Trace";

