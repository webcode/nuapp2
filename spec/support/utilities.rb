def full_title(page_title)
  base_title = "nuapp2 by chriso"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end
