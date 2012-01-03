#!/usr/bin/env ruby
# array_join.rb
class Array
   def my_join(separator1=', ', separator2=' and ')
    modified_join(separator1, separator2)
  end
   protected # we used protected, because the self.dup won't allow to call private method on it by this object...
   def modified_join!(separator1, separator2)
    last_one = self.pop()
    join(separator1) + separator2 + last_one.to_s
  end
   def modified_join(separator1, separator2)
  # We get a duplicate of the calling object simply by using the dup method.
    self.dup.modified_join!(separator1, separator2)
  end
end