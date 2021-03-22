import java.util.Scanner;
class Main {
  
  public static void main(String[] args) {
 while (true) {
  Scanner myStr = new Scanner(System.in);
  System.out.println("Enter All Caps String");
  String s= myStr.nextLine();
    for(int i=0; i<s.length();i++){  //stores the values of the string into an index
        char c = s.charAt(i);  
  }
  int Ind = 0;
  while(Ind < s.length()){
  int IndexToCon = Ind;
  char c = s.charAt(IndexToCon);
  char character = c;
  int ascii = (int) character; //gives ascii value
  if (ascii > 64 && ascii < 91) {
    int HexinDec = ascii - 54; 
    System.out.print("0x" + Integer.toHexString(HexinDec)); 
    }
  else if (ascii == 32) {
    int HexinDec = ascii - 32;
    System.out.print("0x" + Integer.toHexString(HexinDec)); 
  }
  else if (ascii > 47 && ascii < 58) {
    int HexinDec = ascii - 47;
    System.out.print("0x" + Integer.toHexString(HexinDec));
  }
      if (Ind < s.length() - 1){
        System.out.print(", ");
      }
        else {
          System.out.print("\n");
    }

  Ind++; 
 }
 int dex = s.length() - 1; //System.out.println(dex) 
 int LenOfS = s.length();
 int ShdNotXst = LenOfS;
 if (LenOfS> 20) {
  dex = 20;
  while (s.charAt(dex) != ' '){
  dex -= 1;
  }
  while (LenOfS < 40) {
    System.out.println(",0x0 ");
    LenOfS++;
 }
 System.out.println("FYI: you're probably gonna want to indent at line " + dex);
}
else {
  while (LenOfS < 20) {
    System.out.println (",0x0 ");
    LenOfS++;
  }
 }
System.out.println("By the way, your string length is " + s.length());

}
}
}