# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Test code for your methods

# Find a candidate by ID
puts "\nTesting find method with ID 11:"
candidate = find(11)
pp candidate

# Get qualified candidates
puts "\nTesting qualified_candidates method:"
pp qualified_candidates(@candidates)

# Order candidates by quaifications
puts "\nTesting ordered_by_qualifications method:"
pp ordered_by_qualifications(@candidates)

# Pretty print the candidates array
puts "\nAll Candidates:"
pp @candidates