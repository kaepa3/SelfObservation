require "spec_helper"
require "test_class"

describe "torima yarude" do
  # => テスト名称とそのブロック
  it "initial" do
    # => 初期設定とか
    @obj = Testing.new
    a_v, b_V = @obj.get_val

    # => 値のチェック
    expect(a_v).to eq(2000)
  end

  it "method" do
    # => 初期設定とか
    @obj = Testing.new
    @obj.change_price 1000
    a_v, b_V = @obj.get_val

    # => 値のチェック
    expect(a_v).to eq(1000)
  end
end
