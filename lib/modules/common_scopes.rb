module CommonScopes
  def to_s
    if self.try(:name)
      "#{name}"
    elsif self.try(:title)
      "#{title}"
    elsif self.try(:full_name)
      "#{full_name}"
    elsif self.try(:email)
      "#{email}"
    else
      "#{id}"
    end
  end
end
