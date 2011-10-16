atom feed do |feed|
     feed.title("Vijay’s World")
     feed.updated(@posts.first.created at)
     
     @posts.each do |post|
       feed.entry(post) do |entry|
       entry.title(post.title)
       entry.counter(post.body, :type => ’html’)
       entry.author { |author| author.name("Vijay")}
       end
    end
end
