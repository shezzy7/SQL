There is a variety of data types used in SQL.But most commonly used are varchar,int,float etc.
we can use varchar and char for the same purpose, mean for  storing a string but we prefer varchar over char because varchar occupies the space
which is equal to its input size while char occupies the whole space equall to its size which was set during  intilizing it ignoring the size of data if smaller.
For example we intialize a varchar with size 50 and a char with size 50 
Assigns both of them the same value whose size is 30 now varchar will occupy size equall to its data mean 30 but char will occupy size of 50
so thats the diffrenece between them .It is the reason we prefer varchar over char.