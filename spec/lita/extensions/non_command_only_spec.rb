require "spec_helper"

class TestHandler < Lita::Handler

  route /test/, :test, non_command_only: true
  def test(response)
    response.reply('test')
  end

end

describe TestHandler, lita_handler: true do

  before do
    allow(Lita).to receive(:handlers).and_return([described_class])
  end

  it { is_expected.to     route("test").to(:test) }
  it { is_expected.to_not route_command("test").to(:test) }

  it 'responds to message' do
    send_message('test')
    expect(replies.count).to eq(1)
    expect(replies.last).to eq('test')
  end

  it 'does not respond to command' do
    send_command('test')
    expect(replies).to be_empty
  end

end
