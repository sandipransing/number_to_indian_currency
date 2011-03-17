## Number To Indian Currency Helper

Helper method which adds indian currency format to number

### Installation

### Rails 2.X 
    gem install number_to_indian_currency

### Using Bundler

    gem 'number_to_indian_currency'

### Usage
    number_to_indian_currency(2000, false) => "Rs.2,000"
    number_to_indian_currency(2040.50, false) => "Rs.2,040.5"
    number_to_indian_currency(1222040.54, false) => "Rs.12,22,040.54"
