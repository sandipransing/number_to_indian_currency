require 'test_helper'

class NumberToIndianCurrencyTest < Minitest::Test

  def subject
    @subject ||= begin
      object = Object.new
      object.extend(::NumberToIndianCurrency::CurrencyHelper)
      object
    end
  end

  def test_that_it_has_a_version_number
    refute_nil ::NumberToIndianCurrency::VERSION
  end

  def test_number_to_indian_currency_format
    assert_equal "Rs.12", subject.number_to_indian_currency(12)
    assert_equal "Rs.12,000", subject.number_to_indian_currency(12000)
    assert_equal "Rs.1,20,000", subject.number_to_indian_currency(120000)
    assert_equal "Rs.12,00,000", subject.number_to_indian_currency(1200000)
  end

  def test_number_to_indian_currency_when_text_option
    assert_equal "Rupees:12", subject.number_to_indian_currency(12, text: 'Rupees:')
  end

  def test_number_to_indian_currency_when_web_rupee_option
    subject.stubs(:content_tag).with(:span, 'Rs.', {:class => :WebRupee}).returns("<span class='WebRupee'>Rs.</span>")

    assert_equal "<span class='WebRupee'>Rs.</span>12", subject.number_to_indian_currency(12, web_rupee: true)
  end
end
