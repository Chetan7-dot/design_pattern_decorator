class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{object.name} #{object.surname}"
  end

  def full_address
    "#{object.country} #{object.city} #{object.street}"
  end
end