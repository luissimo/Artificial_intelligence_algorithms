require 'colorize'

henk   =  * 9..23
bart   =  * 9..23
jan    =  * 9..23
pieter =  * 9..23

  def g1(a,b,c,d)
    (a == b && b == c && c == d)
  end

  def c1(a)
    (a > 9 || a < 23)
  end

  def c2(b)
    (b > 17)
  end

  def c3(c)
    (c > 9 && c < 21)
  end

  def c4(d)
    (d > 9)
  end

    henk.each do |q|
      bart.each do |w|
        jan.each do |e|
          pieter.each do |r|
            if g1(q,w,e,r) && c1(q) && c2(w) && c3(e) && c4(r)
              puts 'you can meet at: '.red << q.to_s.red << ':00 for sure!'.red
            end
          end
        end
      end
    end

dellist = []

  henk.each do |a|
    if a <= 9 && a > 23
      dellist.push(a)
    end
  end

  dellist.each do |a|
    henk.delete(a)
  end

  bart.each do |b|
    if b < 17
      dellist.push(b)
    end
  end

  dellist.each do |b|
    bart.delete(b)
  end

  jan.each do |c|
    if c <= 9 && c >= 21
      dellist.push(c)
    end
  end

  dellist.each do |c|
    jan.delete(c)
  end

  pieter.each do |d|
    if d <= 9
      dellist.push(d)
    end
  end

  dellist.each do |d|
    pieter.delete(d)
  end



