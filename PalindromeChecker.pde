public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public String noCapitals(String sWord){
  String noCap = "";
  noCap = sWord.toLowerCase();
  return noCap;
}

public String noSpaces(String sWord){
  String noSpace = "";
  for(int i = 0; i < sWord.length(); i++){
   if(sWord.substring(i, i+1).equals(" ") == false)
   noSpace += sWord.substring(i,i+1);
  }
  return noSpace;
}

public int numLetters(String sString){
  int letter = 0;
  for(int i = 0; i < sString.length(); i++){
   if (Character.isLetter(sString.charAt(i)) == true)
   letter++;
}
return letter;
}

public String onlyLetters(String sString){
  String letter = new String("");
  for (int i = 0; i < sString.length(); i++){
   if(Character.isLetter(sString.charAt(i)) == true)
     letter += sString.substring(i, i+1);
  }
  return letter;
}

public boolean palindrome(String word)
{
   String backward = reverse(onlyLetters(noSpaces(noCapitals(word))));
    String word2 = (onlyLetters(noSpaces(noCapitals(word))));
  if (backward.equals(word2) == true)
   return true;
  else
//your code here
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--){
     sNew += str.substring(i-1, i);
  }
  //your code here
    return sNew;
}
