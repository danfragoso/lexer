class Main inherits IO{
	i: Int;
	rev: Bool;
	stack:String;
	input:String;
	temp:String;
	su:String;
	sd:String;
  pStack: String;
	evalLoop: Bool;
	c:A2I;
	main():Object{{
		c<-new A2I;
		stack<-"";
		evalLoop<-true;
  	while evalLoop loop {
  		out_string("> ");
  		input <- in_string();
			if input = "x" then {
	  		out_string("\nSaindo\n");
	  		evalLoop <- false;
	 		}	else if input = "e" then {
				temp<-stack.substr(stack.length()-2,1);
				if temp = "s" then {
					stack<-stack.substr(0,stack.length()-2);
					su<-stack.substr(stack.length()-2,1);
					sd<-stack.substr(stack.length()-4,1);
					stack<-stack.substr(0,stack.length()-6);
					stack<-stack.concat(su);
					stack<-stack.concat("\n");
					stack<-stack.concat(sd);
					stack<-stack.concat("\n");
				} else if temp = "+" then {
					stack<-stack.substr(0,stack.length()-2);
					su<-stack.substr(stack.length()-2,1);
					sd<-stack.substr(stack.length()-4,1);
					stack<-stack.substr(0,stack.length()-4);
					stack<-stack.concat(c.i2a((c.a2i(su)+c.a2i(sd))));
					stack<-stack.concat("\n");
				}else {
					1;	
				}fi fi;
	 		}	else if input = "d" then {
				i<-stack.length()-1;
				pStack<-"\n";
				pStack<-pStack.concat(stack);
				while 0 <= i loop {
					out_string(pStack.substr(i,1));
					i<-i-1;
				} pool;
			}	else { 
	  		stack<-stack.concat(input);
				stack<-stack.concat("\n");
	 		}	fi fi fi;
		} pool;	
	}};
};

