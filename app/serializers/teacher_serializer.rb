class TeacherSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :img
end
