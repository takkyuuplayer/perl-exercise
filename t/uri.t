use common::sense;

use URI;
use Test::More;

subtest 'uri w/o domain' => sub {
    my $uri = URI->new;

    $uri->scheme('tp-test');
    $uri->path('//hoge/fuga');
    $uri->query_form({ param => 'hige' });

    is $uri->as_string, 'tp-test://hoge/fuga?param=hige';

    is $$uri, $uri->as_string;
};

done_testing;

__DATA__

