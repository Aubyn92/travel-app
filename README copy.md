# LivsGem

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/livs_gem`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'livs_gem'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install livs_gem

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/livs_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/livs_gem/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LivsGem project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/livs_gem/blob/master/CODE_OF_CONDUCT.md).




# TRAVEL-APP DOCUMENTATION

Source Control Repository: https://github.com/Aubyn92/travel-app

SOFTWARE DEVELOPMENT PLAN:

(R5) This app is designed for those who are either currently traveling or planning future travel. It has an Australian based currency converter, hard coded, and is therefore intended for use by people who have that currency as their baseline currency. 

A selection of countries have been programmed which the user can choose from to organise their funds, by way of accessing the current exchange rate for any of the given countries, and then receiving their new fund amount available in their new currency. The opening question is "Which country are you visiting?" and the answer determines which currency their current money is converted to. This is then followed up by the app displaying three top rated sites to visit, and then three accommodation options, organised by category. 

It is intended to make the process of organising travel easier by compacting convenient travel information in the one resource. I often found that whilst traveling, I would frequently look for information along the likes of what is provided in this app, but I'd collect it all from various sources and it would take time and effort. So I thought having all of this information presented collectively, in one app, condensed and easy to use, would make travel logistics easier to manage, for each user. 

The target audience is travelers, either current or soon to be. As for how to use the app, the user simply opens the app and is asked initially, where are they going, and output is received by the user from the app, depending on their answer. Simple input/output interaction. All following questions given to the user by the app are succeeded by the initial opening question, after user input has gone through.

(R6) FEATURES OF APP:

*Currency and currency conversion, recommendations on sites and accommodation.

1) Error handling via if/else statements. The user is asked which country they are going to, and I've hard coded only six, so any other choice outside of those six will return a statement informing them that it is not an option and they will be re-routed to the original question and asked to input their next choice. Same goes for the following city selection.

2) Currency conversion is hard coded in the app for all six countries, with the Australian dollar used as a baseline currency. Names of the countries, currency and currency rate are written as keys within hashes, displaying the results by way of values which are then output to the user after a loop is run to determine if their input country matches one in the database file.

3) Sites and accommodation are also displayed as keys within hashes, with their values being displayed to the user upon receiving their input as to which country and city they are going to.


(R7) This app is fairly intuitive in itself when it comes to how it functions and how the user will interact with it. Mainly because of the questions that prompt the user to put forward input at every step of the way. However, I will put instructions below for more details. 

Firstly, open the app and you will be asked which country you are heading to. Type in your response, then simply preceed to do the same with all following questions after the initial one. It should run through sites and accommodation options as you move further through the app. 

Questions asked in the following flow: "Which country are you going to?"

      *App gets user input
      "What is your budget?" This will return your new amount of currency available to you based off your current currency which is in this app set to a default of Australian dollars.
      "Here are some recommended sites" This lists three hard coded sites to the user.
      "And accommodation.." Accommodation is sorted into three categories.
      "Select your preferred option."
      "1. Closest proximity to airport"
      "2. Overall highest rating"
      "3. Low to mid range budget" This allows the user to put forward their preference by way of index number. 
       
      Errors are handled via if/else statements loops/statements in the code. If the user inputs a country that is not in the code upon being asked which country they are going to, an error message is given ("Sorry you can't go to this country/city...") and they are re-routed to the original question and asked to input another answer until their answer coincides with a country that is in the code. When this is acheived, they will be asked the following question regarding what their budget is. The same type of flow has applied in the code when the user is asked about which city they are heading to. Any answer not in the code, re-routes them the same way the country code did, to the initial question and they have to input a new answer. 

R8) There's a screenshot of my workflow chart in the Docs folder.

R9) Implementation Plan

TRELLO 
![trello screenshot](./Docs/travel_app_trello.png)


R10) Help documentation

First, make sure you have Ruby installed on your computer. Then you want to go to GitHub and clone the file. Go to the Terminal and open up the file via Terminal. Run Ruby in Terminal. Access the app and run it by running the file by its name, index.rb. The initial question within the app should be displayed prompting the user for input.


LINKS to docs folder:

![trello screenshot](./docs/travel_app_trello.png)
![uml diagram](./docs/UML_screenshot.png)

ppt folder: 

![presentation](./ppt/travel-app.pdf)# AliviaSherwood_T1A2
