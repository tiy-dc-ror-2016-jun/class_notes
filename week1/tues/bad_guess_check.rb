def bad_guess(inputs, current_input, target)
  lower_elements = inputs.select do |e|
    e < target
  end

  upper_elements = inputs.select do |e|
    e > target
  end

  lower_bound = upper_elements[0]
  upper_bound = lower_elements[-1]

  current_input > lower_bound || current_input < upper_bound
end

bad_guess([15, 17, 58], 3, 40)
bad_guess([15, 17, 41, 58, 96], 16, 40)
bad_guess([15, 58], 69, 40)
bad_guess([15, 58], 30, 40)
