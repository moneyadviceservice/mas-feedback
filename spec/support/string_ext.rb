class String
  def has_tag?(tag)
    Capybara::RSpecMatchers::HaveSelector.new(tag)
  end
end