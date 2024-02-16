/*Given : table with tweet_id and content as column 
          tweet_id = primary key
          
To find: invalid tweet id 
invalid tweet:Length(content)>15/char_length(content)
*/

SELECT tweet_id fROM Tweets
WHERE CHAR_LENGTH(content)>15;
