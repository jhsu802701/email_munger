BADGES for README.md
* Version Badge: http://badge.fury.io/

Convert every character in an email address into unicode.
Put the "@" and "." in the email address inside italics (<i> tag).

For every character in a string:
1.  If it's "@", ".", a numeral, or a lowercase letter, get the ascii code.
2.  Replace this character with &#[number]; ('a' becomes '&#97')

AT http://wbwip.com/wbw/emailencoder.html
abcdefghijklmnopqrstuvwxyz0123456789@example.com becomes
&#97;&#98;&#99;&#100;&#101;&#102;&#103;&#104;&#105;&#106;&#107;&#108;&#109;&#110;&#111;&#112;&#113;&#114;&#115;&#116;&#117;&#118;&#119;&#120;&#121;&#122;&#48;&#49;&#50;&#51;&#52;&#53;&#54;&#55;&#56;&#57;<i>&#64;</i>&#101;&#120;&#97;&#109;&#112;&#108;&#101;<i>&#46;</i>&#99;&#111;&#109;

EMAIL ADDRESS OBFUSCATION
1.  Use mail_to (https://github.com/reed/actionview-encoded_mail_to)
2.  Testing example: http://blog.ivanstorck.com/unttesting-ruby-on-rails-obfuscated-email-addresses-with-rspecitled/
