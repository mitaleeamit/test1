#global variable
$global_variable ='Sue'

  #method
  def method_hello(name)
  	
  	 #The global variable should not be maintained inside of the method.  
  	 #'"Why hello there ' + name +','+ ' my name is ' + $global_variable +'."'
     '"Why hello there ' + name +','+ ' my name is '
  end

  #call Method and writes to the screen
  puts(method_hello('Bob')+$global_variable+'."')

