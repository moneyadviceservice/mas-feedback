class String
  def has_tag?(tag)
    Capybara::RSpecMatchers::HaveSelector.new(tag).matches?(to_s)
  end
end