class MessageDrop < BaseDrop
  include MessageFormatHelper

  def sender_display_name
    @obj.sender&.available_name
  end

  def text_content
    content = @obj&.content || ''
    render_message_content(transform_user_mention_content(content))
  end
end
