# frozen_string_literal: true

require 'test_helper'

class PatternTest < ActiveSupport::TestCase
  setup do
    @pattern = patterns(:one)
  end

  test 'pattern should be valid' do
    assert @pattern.valid?
  end

  test 'name should not be blank' do
    @pattern.name = ''
    assert_not @pattern.valid?
  end
end
