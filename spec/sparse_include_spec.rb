# frozen_string_literal: true

RSpec.describe SparseInclude do
  let(:klass) do
    Class.new
  end

  let(:source_module) do
    Module.new do
      def foo
        42
      end
    end
  end

  before do
    klass.include SparseInclude[source_module, foo: :bar]
    klass.extend SparseInclude[source_module, foo: :bazz]
  end

  it 'includes selected methods with alias to the class' do
    expect(klass.new).to be_respond_to(:bar)
    expect(klass.new.bar).to eql 42

    expect(klass).to be_respond_to(:bazz)
    expect(klass.bazz).to eql 42
  end
end
