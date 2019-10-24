ActiveAdmin.register Info do
  permit_params :title, :content, :placement
  menu label: "Information Sections"
end
