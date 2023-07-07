module Md5Password
  extend ActiveSupport::Concern

  class_methods do
    attr_accessor :password_field

    def set_password_field(field)
      self.password_field = field
    end
  end

  def password=(value)
    return if value.blank?

    self[self.class.password_field] = encrypt_password(value)
  end

  private

  def encrypt_password(password)
    Digest::MD5.hexdigest(password.to_s)
  end
end