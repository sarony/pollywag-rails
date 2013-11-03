# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

PollywogRanchRailsRuby003::Application.load_tasks

namespace :db do 
  task :seed do

    # create ponds

    p1 = Pond.create(
      :name => 'Silver Frost',
      :water_type => 'Glass')

    p2 = Pond.create(
      :name => 'Sunny Meadow',
      :water_type => 'Blue')

    p3 = Pond.create(
      :name => 'Greenwood',
      :water_type => 'Murky')

    # create frogs

    f1 = Frog.create(
      :name => 'Sammy',
      :color => 'Green',
      :pond_id => Pond.find_by(:name => 'Silver Frost').id)

    f2 = Frog.create(
      :name => 'Aaron',
      :color => 'Yellow',
      :pond_id => Pond.find_by(:name => 'Sunny Meadow').id)

    f3 = Frog.create(
      :name => 'Betty',
      :color => 'Brown',
      :pond_id => Pond.find_by(:name => 'Greenwood').id)

    f3 = Frog.create(
      :name => 'Alice',
      :color => 'Blue',
      :pond_id => Pond.find_by(:name => 'Sunny Meadow').id)

    f4 = Frog.create(
      :name => 'Dilbert',
      :color => 'Yellow',
      :pond_id => Pond.find_by(:name => 'Silver Frost').id)

    # create tadpoles

    t1 = Tadpole.create(
      :name => 'Simon',
      :color => 'Green',
      :frog_id => Frog.find_by(:name => 'Sammy').id)

    t2 = Tadpole.create(
      :name => 'Beth',
      :color => 'Yellow',
      :frog_id => Frog.find_by(:name => 'Aaron').id)

     t3 = Tadpole.create(
      :name => 'Brad',
      :color => 'Blue',
      :frog_id => Frog.find_by(:name => 'Alice').id)

     t4 = Tadpole.create(
      :name => 'Lewis',
      :color => 'Yellow',
      :frog_id => Frog.find_by(:name => 'Dilbert').id)

     t5 = Tadpole.create(
      :name => 'Jenn',
      :color => 'Brown',
      :frog_id => Frog.find_by(:name => 'Betty').id)

     t6 = Tadpole.create(
      :name => 'Friendly',
      :color => 'Green',
      :frog_id => Frog.find_by(:name => 'Sammy').id)

     t7 = Tadpole.create(
      :name => 'Jessica',
      :color => 'Brown',
      :frog_id => Frog.find_by(:name => 'Betty').id)

  end
end