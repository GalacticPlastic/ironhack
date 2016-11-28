# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

superman = User.create!(first_name: "Clark", last_name: "Kent", email: "clark@dailyplanet.com", password: "lamestsuperhero", password_confirmation: "lamestsuperhero")
ironman = User.create!(first_name: "Tony", last_name: "Stark", email: "tony@stark.sexy", password: "pepper4lyfe", password_confirmation: "pepper4lyfe")
batman = User.create!(first_name: "Bruce", last_name: "Wayne", email: "bruce@wayneenterprises.co", password: "iamthenight", password_confirmation: "iamthenight")

superman.comics.create!(title: "Sandman", publisher: "Vertigo")
superman.comics.create!(title: "Preacher", publisher: "Vertigo")

ironman.comics.create!(title: "Saga", publisher: "Image Comics")
ironman.comics.create!(title: "Grimm Fairy Tales", publisher: "Zenescope")

batman.comics.create!(title: "V for Vendetta", publisher: "Vertigo")
batman.comics.create!(title: "Y! The Last Man", publisher: "Vertigo")