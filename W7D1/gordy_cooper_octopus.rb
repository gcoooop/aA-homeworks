def sluggish_octopus(fishes)
  biggest_fish = ""

  fishes.each do |fish_1|
    fishes.each do |fish_2|
      biggest_fish = fish_2 if fish_2.length >= fish_1.length
    end
  end

  biggest_fish
end

def dominant_octopus(fishes)
  sort_fish(fishes).last
end

def sort_fish(fishes)
  return fishes if fishes.empty?
  pivot_fish = fishes.first

  left = []
  pivots = []
  right = []

  fishes.each do |fish|
    case fish.length <=> pivot_fish.length
    when -1
      left << fish
    when 0
      pivots << fish
    when 1
      right << fish
    end
  end

  sort_fish(left) + pivots + sort_fish(right)
end

def clever_octopus(fishes)
  biggest_fish = ""

  fishes.each do |fish|
    if fish.length > biggest_fish.length
      biggest_fish = fish
    end
  end

  biggest_fish
end

def slow_dance(dir, tiles_array)
  tentacle = nil

  tiles_array.each_with_index do |tile, idx|
    tentacle = idx if tile == dir
  end

  tentacle
end

def fast_dance(dir, new_tiles_data_structure)
  new_tiles_data_structure[dir]
end

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p sluggish_octopus(fishes)
p dominant_octopus(fishes)
p clever_octopus(fishes)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up"]

p slow_dance("right-down", tiles_array)

new_tiles_data_structure = {}
  tiles_array.each_with_index do |tile, idx|
    new_tiles_data_structure[tile] = idx
  end

p fast_dance("right-down", new_tiles_data_structure)