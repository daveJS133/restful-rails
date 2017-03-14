# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Porridge.delete_all

[
 { 
  name: 'Traditional Scottish porridge',
  description:'A savoury Oatmeal gruel (made with water) flavoured with salt and pepper',
  prep_time:'',
  cooking_time:'' },
  {
    name: 'Modern Scottish porridge',
    description:'',
    prep_time:'',
    cooking_time:'Typically unsweetened Porridge made with milk' },
  {
    name: 'English porridge',
  description:'',
  prep_time:'',
  cooking_time:'Oatmeal Porridge typically made with milk and sweetened' },
  {
    name: 'Grits',
  description:'',
  prep_time:'',
  cooking_time:'An American cornmeal Porridge often eaten savoury made with chicken stock and eaten with chicken' },
  {
    name: 'Hominy',
  description:'A sweet Carribean cornmeal porridge similar to grits',
  prep_time:'',
  cooking_time:'' },
  {
    name: 'Pease porridge',
  description:'A British porridge made from ground pease, similar to Pease Pudding',
  prep_time:'',
  cooking_time:'' },
  {
    name: 'Champurrado',
  description:'Mexican porridge made from corn, sugar, milk and chocolate.',
  prep_time:'',
  cooking_time:'' }
].each {|p| Porridge.create(p)}