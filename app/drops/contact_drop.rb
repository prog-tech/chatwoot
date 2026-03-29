class ContactDrop < BaseDrop
  def name
    fullname.map(&:capitalize).join(' ')
  end

  def email
    @obj&.email
  end

  def phone_number
    @obj&.phone_number
  end

  def first_name
    fullname.first&.capitalize if fullname.size > 1
  end

  def last_name
    fullname.last&.capitalize if fullname.size > 1
  end

  def custom_attribute
    custom_attributes = @obj&.custom_attributes || {}
    custom_attributes.transform_keys(&:to_s)
  end

  private

  def fullname
    @fullname ||= Array.wrap(@obj&.name&.split)
  end
end
