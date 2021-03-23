import java.util.Scanner;
class Main {
  public static void main(String[] args) {
  String s="ABCDEFGHIJKLMNOPQRSTUVWXYZ";    
    for(int i=0; i<s.length();i++){  //stores the values of the string into an index
        char c = s.charAt(i);  
        System.out.println("char at "+i+" index is: "+c);  
  }
 while(true) {
  Scanner MyValue = new Scanner(System.in);//char c = s.charAt(25); //converts chosen string letter into char
  System.out.println("Give An index to convert");
  int IndexToCon = MyValue.nextInt();
  char c = s.charAt(IndexToCon);
  System.out.println(c);
  char character = c;
  int ascii = (int) character;
  System.out.println(ascii); //gives ascii value
  int HexinDec = ascii - 54;
  System.out.println(HexinDec); //gives the Hex location of letter in Decimal form
  System.out.println("0x" + Integer.toHexString(HexinDec)); //gives Hex location of letter in Hex Java Hex
 }
}
}