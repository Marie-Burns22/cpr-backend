class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :fee
end
