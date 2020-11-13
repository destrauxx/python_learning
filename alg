#CODE HERE
def get_strings(city):
  str = city.lower()
  printed = ''
  eq = '*'
  for s in str:
    res = 0
    for i in str:
      if s == i:
        res += 1
    if s not in printed and s != ' ':
        printed += f'{s}:{eq * res},'
  return printed[:-1]
  
      
assert get_strings("Chicago") == "c:**,h:*,i:*,a:*,g:*,o:*", 'Test failed'
assert get_strings("Bangkok") == "b:*,a:*,n:*,g:*,k:**,o:*", 'Test failed'
assert get_strings("Las Vegas") == "l:*,a:**,s:**,v:*,e:*,g:*", 'Test failed'
