require 'date'
d = [ '08-07-2016', '07-10-2017','06-09-2016' ]
p d.sort_by! { |blk|
	Date.parse(blk)
}