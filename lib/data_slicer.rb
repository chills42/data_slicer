# monkey-patching to add a data_slice string extension method
class String
  def data_slice(*args)
    index = 0
    args.map do |length|
      start = index
      index += length
      slice(start, length).strip
    end
  end
end
