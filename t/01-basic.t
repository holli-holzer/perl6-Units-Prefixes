use Test;
#use Test::Color sub { :ok("0,255,0 on_64,64,255") };

plan 3;

subtest {
  use Units::Prefixes :long;

  ok 1exa   == 10**18;
  ok 1peta  == 10**15;
  ok 1tera  == 10**12;
  ok 1giga  == 10**9;
  ok 1mega  == 10**6;
  ok 1kilo  == 10**3;
  ok 1hecto == 10**2;
  ok 1deca  == 10**1;
  ok 1deci  == 10**−1;
  ok 1centi == 10**−2;
  ok 1milli == 10**−3;
  ok 1micro == 10**−6;
  ok 1nano  == 10**-9;
  ok 1pico  == 10**−12;
  ok 1femto == 10**−15;
  ok 1atto  == 10**−18;
}, "long operators";

subtest {
  use Units::Prefixes :short;

  ok 1E == 10**18;
  ok 1P == 10**15;
  ok 1T == 10**12;
  ok 1G == 10**9;
  ok 1M == 10**6;
  ok 1k == 10**3;
  ok 1h == 10**2;
  ok 1da== 10**1;
  ok 1d == 10**−1;
  ok 1c == 10**−2;
  ok 1mi == 10**−3;
  ok 1μ == 10**−6;
  ok 1n == 10**-9;
  ok 1p == 10**−12;
  ok 1f == 10**−15;
  ok 1a == 10**−18;
}, "short operators";

subtest {
  use Units::Prefixes :short;

  ok ((1.Rat)k).^name ~~ "Rat";
  ok ((1.Num)k).^name ~~ "Num";
  ok ((1.Int)k).^name ~~ "Int";
}, "types";

done-testing;
