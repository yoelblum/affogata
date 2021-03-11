class PixelsPopulation
  attr_accessor :population
  def initialize(timeout: 5, total_pixels: 5000, base_population: 10)
    @timeout = timeout
    @population = []
    @total_pixels = 5000
    @base_population = base_population
    seed_parents
    grow_population
  end

  def grow_population
    5000.times do
      @population = @population.shuffle # i know this is wasteful, i'm going for readability :)
      random_dad = @population.first
      random_mom = @population.second
      baby = make_baby(random_dad, random_mom)
      @population.push(baby)
    end
  end

  def seed_parents
    @base_population.times do
      population.push(Pixel.new)
    end
  end

  def make_baby(father, mother)
    r_value = [father.r, mother.r].sample
    g_value = [father.g, mother.g].sample
    b_value = [father.b, mother.b].sample
    Pixel.new(r: r_value, g: g_value, b: b_value)
  end

  def inspect
    puts "["
    @population.each { |p| puts p }
    puts "]"
  end
end
