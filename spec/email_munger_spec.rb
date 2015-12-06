require 'spec_helper'

describe EmailMunger do
  it 'has a version number' do
    expect(EmailMunger::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end

  it 'encodes an email address' do
    str_input = 'abcdefghijklmnopqrstuvwxyz0123456789@example.com'
    str1 = '&#97;&#98;&#99;&#100;&#101;&#102;&#103;&#104;&#105;&#106;'
    str2 = '&#107;&#108;&#109;&#110;&#111;&#112;&#113;&#114;&#115;'
    str3 = '&#116;&#117;&#118;&#119;&#120;&#121;&#122;&#48;&#49;&#50;'
    str4 = '&#51;&#52;&#53;&#54;&#55;&#56;&#57;<i>&#64;</i>&#101;&#120;'
    str5 = '&#97;&#109;&#112;&#108;&#101;<i>&#46;</i>&#99;&#111;&#109;'
    str_output = str1 + str2 + str3 + str4 + str5
    expect(EmailMunger.decode(str_input)).to eq(str_output)
  end
end
