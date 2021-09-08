#!/usr/bin/env perl
use strict;

use Pandoc::Filter;
use Pandoc::Filter::ImagesFromCode;

pandoc_filter 'CodeBlock.graphviz' => Pandoc::Filter::ImagesFromCode->new(
    from => 'dot',
    to   => sub { $_[0] =~ /latex|beamer/ ? 'pdf' : 'png' },
    run  => [ 'dot', '-T$to$', '-o$outfile$', '$infile$' ],
);
