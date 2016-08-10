def hello(names)
    names.each do |name|
        puts "HELLO, #{name.upcase}"
    end
end

rubies = ['MRI', 'jruby', 'rubinius']

hello(rubies)

def add(a, b)
    a + b
end

add(1, 1)

def add2(a, b)
    return a + b

    puts '이 문자열은 출력되지 않는다'
end

add2(1, 1)

