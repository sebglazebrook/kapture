# Kapture

Simple string core extension to help out when working with regex capture groups.
Saves checking for size or nil every time you might have a capture group.

## Installation

Add this line to your application's Gemfile:

    gem 'kapture'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kapture

## Usage

Check the unit tests for details.

Currently 3 instance methods are added to String, #capture, #capture_first, #capture_last

    example_string = 'one potato, two potato, three potato, four'
    
    # String#capture
    
    example_string.capture(/(one).*(two).*(three)/) => ['one', 'two', 'three']
  
    example_string.capture(/(five)/) => []
   
    # String#capture_first
    
    example_string.capture_first(/(one).*(two).*(three)/) => 'one'
    
    example_string.capture_first(/(five)/) => nil
   
    # String#capture_last
    
    example_string.capture_last(/(one).*(two).*(three)/) => 'three'
    
    example_string.capture_last(/(five)/) => nil

## Contributing

1. Fork it ( https://github.com/[my-github-username]/kapture/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
