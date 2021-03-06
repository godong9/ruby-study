proc_obj = Proc.new { |a| a }

p proc_obj.call(1)

def proc_factory
  Proc.new
end

block_proc = proc_factory { 'method block' }
p block_proc.call


def what_class(obj)
  case obj
    when proc { |x| x.kind_of? String }
      String
    when proc { |x| x.kind_of? Numeric }
      Numeric
    else
      Class
  end
end

p what_class "string"
p what_class 1
p what_class []


def convert_proc(&block)
  block
end

proc_obj = convert_proc { 1 }
p proc_obj.call


def yield_proc
  yield
end

proc_obj = Proc.new { 1 }
yield_proc &proc_obj


add = Proc.new { |x, y| x + y }
inc = add.curry.(1)

inc.(2)

append_prefix_atmark = add.curry.("@")
append_prefix_atmark.("takkanm")

add = Proc.new { |x, y| x + y }
inc = Proc.new { |y| add.(1, y) }

inc.(1)


lambda_obj = lambda { 1 }

p lambda_obj.class
p lambda_obj.call

inc_labmda = ->(x) { x + 1 }

p inc_labmda.(1)



def wrap_method(proc_or_lambda)
  x = proc_or_lambda.call(1)
  x.to_s
end

p wrap_method proc { |x| next x; x.succ }
p wrap_method lambda { |x| next x; x.succ }


