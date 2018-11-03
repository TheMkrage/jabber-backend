class UserErrorSerializer < ActiveModel::Serializer
  attributes :id, :session_id, :message, :line_number, :file, :stack_url

  def session_id
    object.session.id
  end
end
