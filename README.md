# PrimeTime

Command line program that prints out a table of primes with each cell containing the product of the primes.
The first row and column of the table should have the primes, with each cell containing the product of the primes for the corresponding row and column.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'prime_time'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prime_time

## Usage

    $ primetime 10
    x    2   3   5   7  11  13  17  19  23  29
    2    4   6  10  14  22  26  34  38  46  58
    3    6   9  15  21  33  39  51  57  69  87
    5   10  15  25  35  55  65  85  95 115 145
    7   14  21  35  49  77  91 119 133 161 203
    11  22  33  55  77 121 143 187 209 253 319
    13  26  39  65  91 143 169 221 247 299 377
    17  34  51  85 119 187 221 289 323 391 493
    19  38  57  95 133 209 247 323 361 437 551
    23  46  69 115 161 253 299 391 437 529 667
    29  58  87 145 203 319 377 493 551 667 841

## Notes

### Complexity
  The algorithm used to determine if a number is prime has a worst-case complexity of:

  *O(sqrt(n)/2)*

  The coplexity of building the multiplication table is:

  *O(n^2)*

### Runtime

    $ time primetime 10
    primetime 10  0.03s user 0.02s system 57% cpu 0.082 total

    $ time primetime 20
    primetime 20  0.05s user 0.01s system 92% cpu 0.064 total

    $ time primetime 40
    primetime 40  0.28s user 0.01s system 98% cpu 0.296 total

    $ time primetime 80
    primetime 80  2.63s user 0.04s system 99% cpu 2.677 total

    $ time primetime 160
    primetime 160  37.01s user 0.54s system 99% cpu 37.586 total

    $ time primetime 320
    primetime 320  562.49s user 13.22s system 99% cpu 9:36.11 total


## Contributing

1. Fork it ( https://github.com/[my-github-username]/prime_time/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
