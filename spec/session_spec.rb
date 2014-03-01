require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Session" do
  it 'smoke' do
    2.should == 2
  end

  let(:session) do
    Dash::Session.new
  end

  it 'cd' do
    session.dispatch "cd /foo"
    session.current_dir.should == "/foo"
  end

  it 'cd relative' do
    session.dispatch "cd /foo"
    session.dispatch "cd bar"
    session.current_dir.should == "/foo/bar"
  end

  it 'cd back' do
    session.dispatch "cd /foo/bar"
    session.dispatch "cd .."
    session.current_dir.should == "/foo"
  end
end
