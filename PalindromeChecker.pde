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
  
  if(os(na(word)).equals(reverse(os(na(word)))))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    
    for(int i = str.length(); i > 0; i--)
    {
      sNew = sNew + str.substring(i-1,i);
    }
    
    return sNew;
}
public String os(String sString){
  if(sString.length() == 0)
    return "";
  else if(Character.isLetter(sString.charAt(0)))
    return sString.charAt(0) + os(sString.substring(1));
  else
    return os(sString.substring(1));
}
public String na(String sWord){
   String sNew = new String();
  for(int i = 1; i <= sWord.length(); i++)
    {
      sNew = sNew + sWord.substring(i-1,i).toLowerCase();
    }
    return sNew;
}
