import java.util.HashMap;
import java.util.Map;

public class Programa {

	 static String texto="<html lang=\"en\">\n"
	 		+ "<head>\n"
	 		+ "    <meta charset=\"UTF-8\">\n"
	 		+ "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
	 		+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
	 		+ "    <title>Document</title>\n"
	 		+ "</head>\n"
	 		+ "<body> \n";
	   
	   
	   public static void concatenar(String symbol, String palabra) {
		   System.out.println("simbolo" + symbol +"  "+ palabra);
		   switch (symbol){
           case "*":  
        	   		texto +=  "<b>"+palabra+"</b> \n";
                    break;
           case "**":  
        	   		texto += "<i>"+palabra+"</i> \n";
                    break;
           case "***":  
        	   		texto += "<i><b>"+palabra+"</b></i> \n";
                    break;
           case ">":  
        	   		texto += "<dd/>" + palabra;
                    break;
           case "#":  
        	   		texto += "<h1>" + palabra + "</h1> \n";
                    break;
           case "-":  
        	   		texto += "	<li>" + palabra + "</li> \n";
                    break;
           default:
        	   System.out.println(symbol);
        	   if (symbol.matches("/ [0-9]*/")) {
                   texto+="<li>"+ palabra +"</li> \n";
               }
        	   texto+="<hola/>";
        	   	System.out.println(texto);
                break;
       }
		
	   }
	   
	   public static void fin()	{
			texto+= "</body></html>";
			System.out.print(texto);
		}
}
