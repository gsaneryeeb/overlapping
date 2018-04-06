# Overlapping

Checks if the time of a segment overlaps with the times of existing segments.

There are three situation will overlap:

Suppose you have a existing segment (pre_start, pre_end) and the time of a segment (astart,end) 
```
example: previous_segment(300,700), a test segment(start,end)
         |<-start-S1-end-> |                      |<-start-S3-end->|
         |                 |                      |                |
-100----200------300-----400------500--------600----700-----800------
                 |        |                  |       |
             pre_start    |                  |    pre_end
                          |<--start-S2-end-->|
```                  
Checks if the time of a segment(start,end) overlaps with the times of existing segements (pre_start, pre_end).
1. S1:(start <= pre_start and end >= pre_start) example:(215,409),overlapping
2. S2:(start >= pre_start and end <= pre_end)   example:(410,625),overlapping
3. S3:(start <= pre_end and end >= pre_end)     example:(650,823),overlapping

## Implement
- *overlapping.py*  a python version
- *overlapping.sql* a SQL script

 