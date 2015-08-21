## Number To Indian Currency Helper

[![Gem Version](https://badge.fury.io/rb/number_to_indian_currency.svg)](http://badge.fury.io/rb/number_to_indian_currency)
[![Build Status](https://secure.travis-ci.org/sandipransing/number_to_indian_currency.svg?branch=master)](http://travis-ci.org/sandipransing/number_to_indian_currency)
[![Dependency Status](https://gemnasium.com/sandipransing/number_to_indian_currency.svg)](https://gemnasium.com/sandipransing/number_to_indian_currency)
[![License](http://img.shields.io/:license-mit-green.svg?style=flat)](http://opensource.org/licenses/MIT)

This gem adds `number_to_indian_currency` helper method which formats number to the indian style.
Also provides css support to show rupee symbol along-with the formatted number.

### Installation
```
gem install number_to_indian_currency
```
### Using Bundler
```
gem 'number_to_indian_currency'
```
### Add following line to the layout
```
stylesheet_link_tag 'rupees'
```

### Example Usage
```
number_to_indian_currency(2000) => "Rs.2,000"
number_to_indian_currency(2040.50, text: 'Rs. ') => "Rs. 2,040.5"
number_to_indian_currency(1222040.54, text: 'Rupee: ') => "Rupee: 12,22,040.54"
number_to_indian_currency(9921, web_rupee: true) => "<span class="WebRupee">Rs.</span> 9,921"
```

thats, all

any sugestions? email me **sandip at funonrails.com** released under the MIT license
