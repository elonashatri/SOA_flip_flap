# Module that can be included (mixin) to take and output TSV data
module TsvBuddy
  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv a String in TSV format
  def take_tsv(tsv)
    nl = "\n"
    tab = "\t"

    e_row = tsv.split(nl).map { |line| line.split(tab) }
    header = e_row[0]
    tuple = e_row[1..-1]
    @data = tuple.map do |record|
      next(record.map.with_index { |item, idx| [header[idx], item] }.to_h)
    end
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv
    nl = "\n"
    tab = "\t"

    header = @data.first.keys
    tuple = @data.map { |record| record.values.join(tab) }

    ([header.join(tab)] + tuple).join(nl) + nl
  end
end
