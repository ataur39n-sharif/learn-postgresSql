/* 
        1. BOOLEAN - true,false
        2. CHARACTER
            - char (n) - ( we can set limit for a word length. suppose we set 4 but store size 2 . here rest of 2 bytes will fill by dash.)
            - varchar (n) - (here by passing n digit , we are giving the maximum limit for this field. if we pass 4 again here but store 2, that will take only 2 byte not 4.)
            - text
        3. NUMBER
            - small int - (2 bytes) - (limit = -32768 to 32768)
            - int - (4 bytes) - (limit = -2147483648 to 2147483647)
            - serial - (auto INCREMENT)
            - float (n) - (by n we can limit how far after dot we want to take) ;
            - numeric (n1, n2) - (here by n1 and n2 we are specifically mention start and end point after dot.)
        4. DATE
            - date  - (only  date)
            - time - (only time)
            - timestamp  - (date,time,seconds)
            - timestampZ  - (date time with timezone )
        5. Json
            - jsonB
        6. UUID
 */



 