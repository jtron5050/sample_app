require 'spec_helper'

describe ApplicationHelper do

  require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

  describe 'full_title' do

    it 'should include the page title' do
      full_title('foo').should =~ /foo/
    end

    it 'should include the base title' do
      full_title('foo').should =~ /^Ruby on Rails Tutorial Sample App/
    end

    it 'should not include a bar when no title is passed' do
      full_title('').should_not =~ /\|/
    end

  end
end