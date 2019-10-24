class InfoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :placement
end
