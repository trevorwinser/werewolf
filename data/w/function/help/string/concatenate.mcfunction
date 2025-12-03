# Example: function w:help/string/concatenate {source:"w:temp",path:"string",string1:"A",string2:"B"}
$return run data modify storage $(source) $(path) set value "$(string1)$(string2)"
$say $(string1)$(string2)