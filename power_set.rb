def power_set(set)
    result = []

    (0 .. (2 ** set.length) - 1).each do |row|
        subset = []

        set.each_with_index do |element, column|
            subset << element if include? row, column
        end

        result << subset
    end

    return result
end

def include?(row, column)
    include_from_index = 2 ** column
    exclude_from_index = 2 ** column * 2
    bounded_row = row % exclude_from_index
    return bounded_row >= include_from_index && bounded_row < exclude_from_index
end

p power_set([:x, :y, :z])