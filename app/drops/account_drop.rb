class AccountDrop < BaseDrop
  def name
    @obj&.name
  end
end
