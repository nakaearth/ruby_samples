$:.unshift(File.dirname(__FILE__))

require 'openssl'

class Angou
  def encrypt(salt, password)
    enc = OpenSSL::Cipher.new("aes-256-cbc")
    enc.encrypt
    enc.pkcs5_keyivgen(password, salt)
    @key = enc.random_key
    @iv = enc.random_iv
    return enc.update("01234567") + enc.final
  end

  def decrypt(salt, password, encrypt_msg)
    dec = OpenSSL::Cipher.new("aes-256-cbc")
    dec.decrypt
    dec.pkcs5_keyivgen(password, salt)
    # dec.key = @key
    # dec.iv = @iv
    return dec.update(encrypt_msg) + dec.final
  end
end

ango = Angou.new
salt = OpenSSL::Random.random_bytes(8)
encrypt_msg =  ango.encrypt("saltsalt", "abcd")
p encrypt_msg
p ango.decrypt("saltsalt", "abcd", encrypt_msg)
# http://tkyk.name/blog/2009/04/15/Ruby-Programming-Encryption-ruby_openssl/
