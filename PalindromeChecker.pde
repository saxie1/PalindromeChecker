public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(reverse(noCapitals(onlyLetters(noSpaces(word)))).equals(noCapitals(onlyLetters(noSpaces(word)))))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i=str.length()-1;i>=0;i--){
      sNew+=str.substring(i,i+1);
    }
    return sNew;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String onlyLetters(String sString){
    String a="";
  for(int i=0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))==true)
      a+=sString.substring(i,i+1);
  }
  return a;
}
public String noSpaces(String sWord){
  String a="";
  for(int i=0;i<sWord.length();i++){
    if(Character.isLetter(sWord.charAt(i))==true)
      a+=sWord.substring(i,i+1);
  }
  return a;
}
