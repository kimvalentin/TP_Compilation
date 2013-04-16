package tp2compile;
import java_cup.runtime.*;
import java.io.*;
public class Main {


	public static void main(String[] args) throws Exception{
		ExpressionNormal yy;
		if (args.length > 0)
			yy = new ExpressionNormal(new FileInputStream(args[0]));
		else
			yy = new ExpressionNormal(System.in);
		parser p = new parser (yy);
		Symbol result = p.parse( );
		//System.out.println("Evaluation =" +result.value);
	}

}
