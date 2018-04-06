Select * From tables
Where (segment_start <= previous_start AND segment_end >= previous_start) 
      OR (segment_start >= previous_start AND segment_end <= previous_end) 
      OR (segment_start <= previous_end AND segment_end >= previous_end )