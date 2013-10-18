class FakeHelper
  include ActionView::Helpers
  attr_accessor :output_buffer

  def config
    OpenStruct.new(asset_path: "")
  end
end
