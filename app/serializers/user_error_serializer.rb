class UserErrorSerializer < ActiveModel::Serializer
  attributes :id, :session, :message, :line_number, :file, :stack_url
end
