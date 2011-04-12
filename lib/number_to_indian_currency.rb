module NumberToIndianCurrency
  def self.initialize
    return if @intialized
    raise "ActionView is not available." unless defined?(ActionView)
    ActionView::Base.send :include, CurrencyHelper
    NumberToIndianCurrency.install
    @intialized = true
  end

  def self.install
    require 'fileutils'
    orig = File.join(File.dirname(__FILE__), '../public/stylesheets/.')
    dest = 'public/stylesheets'
    rupees_css = File.join(dest, 'rupees.css')
    unless File.exists?(rupees_css) && FileUtils.identical?(File.join(orig, 'rupees.css'), rupees_css)
      if File.exists?(rupees_css)
        begin
          puts "Removing..."
          FileUtils.rm rupees_css
          FileUtils.cp_r orig, dest
        rescue Exception => e
          puts e.message
        end
      else
        begin
          puts "Copying #{rupeess_css}..."
          FileUtils.cp_r orig, dest
        rescue Exception => e
          puts e.message
        end
      end
    end
  end

  module CurrencyHelper
    def number_to_indian_currency(number, html=true)
      txt = html ? content_tag(:span, 'Rs.', :class => :WebRupee) : 'Rs.'
      "#{txt} #{number.to_s.gsub(/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/, "\\1,")}" 
    end
  end
end

NumberToIndianCurrency.initialize
