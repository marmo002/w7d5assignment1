ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}
         ]


def winner(array)

  candidates = {}

  array.each do |p|
    p.each do |k, v|
      unless candidates.include?(v)
        candidates[v] = 0
      end
      case k
      when 1 then candidates[v] += 3
      when 2 then candidates[v] += 2
      when 3 then candidates[v] += 1
      end
    end
  end

  pair = candidates.max_by { |name, votes| votes }

  puts "The winner is \"#{pair[0]}\" with \"#{pair[1]}\" votes "

end

winner(ballots)
