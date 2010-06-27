use Test::More tests => 3;
use Cwd;
use Sys::Trace;

my $trace = Sys::Trace->new(exec => [qw(ls does-not-exist)]);
isa_ok $trace, "Sys::Trace";

$trace->start;
$trace->wait;
my $results = $trace->results;
isa_ok $results, "Sys::Trace::Results";

my @sys = $results->files(cwd . "/does-not-exist");
ok @sys;

