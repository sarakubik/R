library(httr)
library(jsonlite)
#from tutorial here https://www.dataquest.io/blog/r-api-tutorial/
# this is about requesting API data

res = GET("http://api.open-notify.org/iss-now.json")
# Open notify of where ISS space station is right now
# http://open-notify.org/Open-Notify-API/ISS-Location-Now/
res

#look for status: 200 which means a successful request

rawToChar(res$content)

data = fromJSON(rawToChar(res$content))
names(data)

#to look at iss_position
data$iss_position

# to see how may people are in the space station
res = GET("http://api.open-notify.org/astros.json")
res

data = fromJSON(rawToChar(res$content))
names(data)

#to look at people
data$people
