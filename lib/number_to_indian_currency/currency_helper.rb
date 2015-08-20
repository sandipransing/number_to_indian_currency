module NumberToIndianCurrency
  module CurrencyHelper
    def number_to_indian_currency(number, options={})
      web_rupee = options.fetch(:web_rupee, false)
      text = options.fetch(:text, 'Rs.')
      text = content_tag(:span, text, class: :WebRupee) if web_rupee
      formatted_number = number.to_s.gsub(/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/, "\\1,")
      return [text, formatted_number].join
    end
  end
end
