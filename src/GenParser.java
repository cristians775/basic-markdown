public class GenParser {

	public static void main(String[] args) throws Exception {
		String opciones[] = new String[] {"-destdir", "src/" , "-parser", "Parser", "src/parser.cup"};
		java_cup.Main.main(opciones);
	}

}