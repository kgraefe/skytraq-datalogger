There are two kind of entries, a long 18 byte entry and a short 8 byte entry. AN0008 describes when a long entry instead of the usual short entry is written.

The first byte of a record determines the kind of entry.

![http://skytraq-datalogger.googlecode.com/svn/wiki/binary_protocol_first_byte.png](http://skytraq-datalogger.googlecode.com/svn/wiki/binary_protocol_first_byte.png)


The long entry contains this information:
  * speed (km/h) 8 bit
  * number of week (GPS time) 12 bit
  * time of week (GPS time) 20 bit
  * [ECEF](http://en.wikipedia.org/wiki/ECEF) x-axis 24 bit
  * ECEF y-axis 24 bit
  * ECEF z-axis 24 bit

![http://skytraq-datalogger.googlecode.com/svn/wiki/binary_protocol_long.png](http://skytraq-datalogger.googlecode.com/svn/wiki/binary_protocol_long.png)

A short entry contains the speed and differences to its preceding entry (short or long):
  * speed (km/h) 8 bit
  * time difference 16 bit
  * ECEF x-axis difference
  * ECEF y-axis difference
  * ECEF z-axis difference

![http://skytraq-datalogger.googlecode.com/svn/wiki/binary_protocol_short.png](http://skytraq-datalogger.googlecode.com/svn/wiki/binary_protocol_short.png)