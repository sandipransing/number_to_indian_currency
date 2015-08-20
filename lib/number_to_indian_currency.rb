require "number_to_indian_currency/version"
require "number_to_indian_currency/currency_helper"
require 'fileutils'

module NumberToIndianCurrency
  def self.initialize
    return if @intialized
    if defined?(ActionView)
      ActionView::Base.send :include, CurrencyHelper
      NumberToIndianCurrency.install
      @intialized = true
    else
      puts "ActionView is not available."
    end
  end

  def self.install
    filename = 'rupees.css'
    sourcefile = File.join('lib/assets/stylesheets', filename)
    destfile = File.join(File.dirname(__FILE__), '../app/assets/stylesheets/', filename)
    unless File.exists?(destfile) &&
      FileUtils.identical?(destfile, sourcefile)
      begin
        FileUtils.mkdir_p File.dirname(destfile)
        FileUtils.cp sourcefile, destfile
      rescue Exception => e
        puts e.message
      end
    end
  end
end

NumberToIndianCurrency.initialize
