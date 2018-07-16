require 'spec_helper'
java_import 'pl.wavesoftware.examples.rspec.java.Adder'

describe Adder do
  let(:instance) { Adder.new(val) }
  subject { instance.add(other) }
  context 'with adder of value 42' do
    let(:val) { 42 }
    context 'with other value of 42' do
      let(:other) { 42 }

      it { expect(subject.intValue).to eq 84 }
    end
    context 'with other value of -42' do
      let(:other) { -42 }

      it { expect(subject.longValue).to eq 0 }
    end
  end
  context 'with adder of value 1' do
    let(:val) { 1 }
    let(:other) { 1 }
    it { expect(subject.doubleValue).to eq 2.0 }
  end
end
