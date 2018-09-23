def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "For" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  keys = dictionary.keys
    tweet = tweet.collect do |x|
            if keys.include?(x)
              x = dictionary[x]
            else
              x = x
            end
          end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
     puts word_substituter(tweet)
  end
  
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
     word_substituter(tweet)
  else
     tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
  end
end
