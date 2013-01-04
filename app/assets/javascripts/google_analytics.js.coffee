
#analytics stuff
_gaq = [['_setAccount','UA-37374497-1'],['_trackPageview']]
d = window.document
l = d.location
scripts = [
  'google-analytics.com/ga.js',
  'ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js',
  l.host + '/js/site.js'
]

getScript = (src)->
  s = d.createElement 'script'
  s.async = true
  s.src = if 'http:' == d.location.protocol then 'http://' + src else 'https://' + src
  e = (d.getElementsByTagName('script')[0])
  e.parentNode.insertBefore(s,e)