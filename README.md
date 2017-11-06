NAME
====

Units::Prefixes - Unit prefix operators

SYNOPSIS
========

    use Units::Prefixes :short;
    say 2k; # says 2000

    use Units::Prefixes :long;
    say 3milli; # says 0.003

DESCRIPTION
===========

This module exports prefix operators for SI-Units from 1e-18 to to 1e24.

These are meant to be used alongside with the Units::* family of modules, so you can write code like:

    my $high-voltage = 2kV;

But of course you can also use this if you happen to have to type lots of zeroes for some reason.

OPERATORS
=========

The following prefixes are defined:

    long form        | short form       | Exponent
    ==============================================
    yotta            | Y                | 10**24
    zetta            | Z                | 10**21
    exa              | E                | 10**18
    peta             | P                | 10**15
    tera             | T                | 10**12
    giga             | G                | 10**9
    mega             | M                | 10**6
    kilo             | k                | 10**3
    hecto            | h                | 10**2
    deca             | da               | 10**1
    deci             | d                | 10**-1
    centi            | k                | 10**-2
    milli            | mi               | 10**-3
    mikro            | μ                | 10**-6
    nano             | n                | 10**-9
    pico             | p                | 10**-12
    femto            | f                | 10**-15
    atto             | a                | 10**-18

Please note the short form form for milli is `mi` and not `m` to avoid a collission with `Units::Metre`.

AUTHOR
======

    Markus 'Holli' Holzer

COPYRIGHT AND LICENSE
=====================

Copyright © Markus Holzer ( holli.holzer@gmail.com )

License GPLv3: The GNU General Public License, Version 3, 29 June 2007 <https://www.gnu.org/licenses/gpl-3.0.txt>

This is free software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law.
