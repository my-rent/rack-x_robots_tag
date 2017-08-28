require 'spec_helper'

RSpec.describe Rack::XRobotsTag do
  it 'has a version number' do
    expect(Rack::XRobotsTag::VERSION).not_to be nil
  end

  it 'adds X-Robots-Tag header to response' do
    app = double(call: [200, {}, ''])
    _status, headers, _response = Rack::XRobotsTag.new(app).call({})
    expect(headers).to eq({'X-Robots-Tag' => 'none'})
  end
end
