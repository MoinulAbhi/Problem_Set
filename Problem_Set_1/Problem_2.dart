bool isPalindrome(String input) {
  // Remove spaces and convert the input string to lowercase for a case-insensitive comparison.
  String cleanInput = input.replaceAll(' ', '').toLowerCase();

  // Compare the cleaned string with its reverse to check for a palindrome.
  return cleanInput == cleanInput.split('').reversed.join('');
}

void main() {
  // Test the function with example inputs.
  print(isPalindrome("Madam")); 
  print(isPalindrome("radar")); 
  print(isPalindrome("Civic")); 
  print(isPalindrome("Hello")); // false
}
