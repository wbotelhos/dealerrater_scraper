# A Dealer For the People

[![CI](https://github.com/wbotelhos/dealerrater_scraper/workflows/CI/badge.svg)](https://github.com/wbotelhos/dealerrater_scraper/actions?query=workflow:CI)

It's a tool to scrape date from [dealerrater.com](https://www.dealerrater.com).

## Features

It can extracts and print reviews on the console, by default, from the **Dealer** [McKaig Chevrolet Buick - A Dealer For The People](McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685).

## How it works?

We'll fetch the "overly positive" reviews. Each review has the following data with weight and rules:

|Data             |Description                             |Priority|Rule
|-----------------|----------------------------------------|--------|-
|Recommended?     |if customer recommends the Dealer       |1       |When recommended is 1 point otherwise 0 points
|Dealership Rating|A general rating from the customer      |2       |The value is used as point, for example: 4.2
|Features Rating  |A rating given for each Dealer's feature|3       |The sum of all values is used as point, for example: 2.1 + 2.1
|Content          |Customer opinion                        |4       |When has good words, sum 1 point but when has bad word, decrease 1 point
|Employee Rating  |Employees involved on deal              |5       |The sum of all values is used as point, for example: 2.1 + 2.1

**Good and Bad words**

The good and bad words are detected in the `content` of customer's review. You can find the words in the `.env` file.

## Docker Setup

To avoid install the [Ruby](https://www.ruby-lang.org) on your machine, you can [install](https://docs.docker.com/engine/install) and use [Docker](https://www.docker.com).

Now let's create an image containing the application:

```sh
docker build . -t dealer_rater
```

## Run

Now we can run the code from this image:

```sh
docker run -t dealer_rater ruby scraper.rb --display=3 --pages=5 --slug=McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685 --source=dealer
```

**Options**

Attribute|Description
---------|-
`pages`  |Quantity of page to be scraped
`display`|Number of the best reviews to be displayed
`slug`   |The slug of the dealer
`source` |The page type

## Test

To make sure all test is passing, run:

```sh
docker run dealer_rater bundle exec rspec
```
