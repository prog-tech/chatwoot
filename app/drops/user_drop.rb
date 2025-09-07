class UserDrop < BaseDrop
  def name
    fullname.map(&:capitalize).join(' ')
  end

  def available_name
    @obj&.available_name
  end

  def first_name
    fullname.first&.capitalize if fullname.size > 1
  end

  def last_name
    fullname.last&.capitalize if fullname.size > 1
  end

  private

  def fullname
    @fullname ||= Array.wrap(@obj&.name&.split)
  end
end
