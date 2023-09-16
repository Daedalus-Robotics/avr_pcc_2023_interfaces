std_msgs/Header header

uint8 width
uint8 length

uint8 step              # Full row length in bytes
float64[] data          # actual matrix data, size is (step * rows)