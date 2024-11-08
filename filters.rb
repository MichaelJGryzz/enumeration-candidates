# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

# Takes in an id and finds a candidate with that id, if not found, returns nil
def find(id)
  @candidates.find { |candidate| candidate[:id] == id }
end

# Returns true if candidate has 2 years of eperience or more and returns false otherwise
def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

# Takes in a collection of candidates and returns a subset that meet specific criteria
def qualified_candidates(candidates)
  candidates.select do |candidate|
    experienced?(candidate) &&
    candidate[:github_points] >= 100 &&
    (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
    candidate[:date_applied] >= 15.day.ago.to_date &&
    candidate[:age] >= 18
  end
end

# Takes in a collection of candidates and returns them reordered by highest to lowest qualifications
def ordered_by_qualifications (candidates)
  candidates.sort_by! { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
end