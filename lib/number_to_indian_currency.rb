module NumberToIndianCurrency
  def number_to_indian_currency(number, html=false)
    number = number.to_s.gsub(/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/, "\\1,")
    "Rs.#{number}"
  end
end
ActionView::Base.send :include, NumberToIndianCurrency
