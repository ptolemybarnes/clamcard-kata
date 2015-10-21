# ClamCard

Implement a system for a contactless travel card for the London underground.

* The card does not need to be topped up.
* The card charges the owner's bank account directly when used.
* The card is used by touching in and out at train stations.
* The train system accepting this card has two categorical zones of stations, Zone A and Zone B.
* The stations within the zones are as follows:   

| Zone A  | Zone B  |
|---------|---------|
|Asterisk |Bison      |
|Antelope |Bugel       |
|Aldgate  |Balham       |
|Angel    |Bullhead        |
|Aardvark    |Barbican        |

* Travelling within Zone B is more expensive than travelling in Zone A.
* The price of Zone B is inclusive of travelling within Zone A.

#### The fares are as described below:
|   | Single  |  Day | Week  |Month|
|---|---|---|---|---|
|Zone A|£2.50|£7.00|  £40.00|£145.00|
|Zone B|£3.00|£8.00|£47.00|£165.50|

- A Single is a journey from one station to another
- A Day fare includes all single journies made within a single day.
- A Week fare includes all single journies made within a single week.
- A month fare includes all single journies made within a single month.
- If one of the stations is within Zone B at any point in a journey, the price for Zone B will be charged.
- No matter how many journies are made within one of the time boundaries within a particular zone, the price will cap at that time period's fare.

### User Stories
##### Please implement the following:

Given Michael has a ClamCard,  
And Michael travels from Asterisk to Aldgate,  
Michael will be charged £2.50 for his journey.

Given Michael has a ClamCard,  
And Michael travels from Asterisk to Aldgate,  
And Michael travels from Aldgate to Antelope,  
Then Michael will be charged a total of 5.00

Given Michael has a ClamCard,  
And Michael travels from Asterisk to Barbican,  
And Michael travels from Barbican to Balham,  
Michael will be charged £3.00 for his first journey  
And a further £3.00 for his second journey.

Given Michael has a ClamCard,  
And Michael travels from Asterisk To Barbican,  
And Michael travels from Barbican to Balham,  
And Michael travels from Balham to Bison,
Michael will be charged £3 for his first journey,  
And a further £3.00 for his second journey,  
And a further £2 for his third journey. (As he will have reached his day cap)    
And a further £0.00 for any additional journies within the day

Credit for the original design of this kata to [Amir Bazazi](https://github.com/amiralibazazi)

Bonus scenarios [here](https://gist.github.com/amiralibazazi/a9d57d40886604887d8e)
