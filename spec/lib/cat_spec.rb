# frozen_string_literal: true

require 'spec_helper'
require 'cat'

describe Cat do
  subject(:instance) { Cat.new(age: age, color: color) }
  let(:age) { 1 }
  let(:color) { 'black' }

  describe '#age' do
    subject { instance.age }
    it { is_expected.to eq 1 }
  end

  describe '#color' do
    subject { instance.color }
    it { is_expected.to eq 'black' }
  end
end
