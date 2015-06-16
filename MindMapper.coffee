`var gen_fingerprint = function(){ // in reference to: http://stackoverflow.com/questions/105034/create-guid-uuid-in-javascript
  return('xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {var r = Math.random()*16|0,v=c=='x'?r:r&0x3|0x8;return v.toString(16);}));
}`
str=(s)->
  s.toString()
int=(i)->
  parseInt(i)
print=(s)->
  console.log(s)
  return

String.prototype.remove_empty_lines=()->
  self=self.split("\n").join("\n")
  while "\n\n" in self
    self.split("\n\n").join("\n")

# this calculates the positioning of a mind map in order to render it.
# 0,0 is the top right corner in these calculations



class MindMap
  class MindMapNode
    constructor:(@inner_text="",@parent="root",@x=0,@y=0,@children=[])->
      @id=gen_fingerprint()
      print """node generated.
      id:#{@id}
      inner_text:#{@inner_text}
      parent:#{@parent}
      children:#{@children}
      located: #{@x},#{@y}"""
      return @
  constructor:(@root,@x,@y,@radius=100)->
    @nodes=[]
    @nodes.push(new MindMapNode(@root,"root",@x,@y))
    print "mindmap with root of #{@root} generated"
    print "located at: #{@x},#{@y}"
    print "with radius: #{@radius}px"
    return
  #gen_mindmap_data=(input_str)-> # turns a string into mindmap data



node_array=[
  color:"root"
  red:"color"
  blue:"color"
  green:"color"
]

m=new MindMap("colors",500,500,50)

return
