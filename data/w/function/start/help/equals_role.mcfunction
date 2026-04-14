#say Checking duplicate
data modify storage w:temp string1 set from storage w:temp role1.name
data modify storage w:temp string2 set from storage w:temp role2.name
return run function w:help/string/equals with storage w:temp