#!/Users/guillermopolito/work/temp/scriptable/scale

('/Users/guillermopolito/work/temp/scriptable/resultado' asFileReference openWritable: true) writeStream nextPutAll: 'oh si, aca funciona'.

system stdout << 'you fayou'.
system stdout cr.
system stderr << 'sos un puto'.
system stderr cr.
system exit: 2.