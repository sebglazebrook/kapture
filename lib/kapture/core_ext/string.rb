class String

  def capture(regex)
    match = self.match(regex)
    if match.respond_to?(:size) && match.size > 1
      match[1..-1]
    else
      []
    end
  end

  def capture_first(regex)
    match = self.match(regex)
    if match.respond_to?(:size) && match.size > 1
      match[1]
    else
      nil
    end
  end

  def capture_last(regex)
    match = self.match(regex)
    if match.respond_to?(:size) && match.size > 1
      match[-1]
    else
      nil
    end
  end

end
