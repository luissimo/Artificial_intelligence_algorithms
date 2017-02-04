## PATH CLASS
class Path
  def initialize
    @contents = Array.new
  end

  def contents
    @contents
  end
end

## NODE CLASS
class Node
  def initialize(c)
    @contents = c
    @children = Array.new
  end

  def contents
    @contents
  end

  def children
    @children
  end
end

## PICK PATH HELPER
def pickpath(f)
  position = 0
  ret = f.at(position)
  f.delete_at(position)
  for i in f
    puts i
  end
  ret
end

## CHECK IF LAST NODE IN PATH IS A SOLUTION
def hasgoal(s,p)
  p.contents.each do |i|
    if i.contents == s
      true
    end
    false
  end
end

###############################
## FRONTIER SEARCH ALGORITHM ##
###############################
def search(query, start)
  ## - frontier: = {new array of Nodes}
  frontier = Array,new

  ## create a new path and put the start node in it
  p = Path.new
  p.contents.push(start)

  ## put the new path into the frontier
  frontier.push(p)

  unless frontier.empty?
    ## - select and remove a path from frontier
    ## use helper function pickPath())
    pick = pickPath(frontier)

    ## if node(sk) is a goal, return selected Path
    if hasgoal(query, pick)
      pick
    else
      size = pick.contents.count
      last = pick.contents[size - 1]
      for n in last.children
        toadd = Path.new
        toadd.contents.concat pick_contents
        toadd.contents.push(n)
        frontier.push(toadd)
      end
    end
  end
  ## Indicate 'NO SOLUTION' if frontier empties
  false
end


def printer(p)
  if p == false
    "Note: No Solutions Found"
  else
    s = "Solutions Found! Path: "
    for i in p.contents
      s += i.contents + ","
    end
    s
  end
end

$a = Node.new("a")
$b = Node.new("b")
$c = Node.new("c")
$d = Node.new("d")

cp = children.push
$a.cp($b) && $a.cp($c) && $c.cp($d)



## test search
pa = search('a', $a)
pc = search('c', $a)
pd = search('d', $a)
pg = search('g', $a)



puts printer(pa)