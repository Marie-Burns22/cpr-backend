ActiveAdmin.register Teacher do
  menu label: "Instructors"
  permit_params :name, :description, :img
end
