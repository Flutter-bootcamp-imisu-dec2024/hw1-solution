void main() {
  print("============ Q1 ============");
  print(swap(1));
  print(swap(0));

  print("============ Q2 ============");

  print(checkCase("HoUse"));
  print(checkCase("DARt"));
  print(checkCase("ORAnge"));

  print("============ Q3 ============");

  countLetters("mississippi");
  print("-"*20);
  countLetters("successful");
  print("-"*20);
  countLetters(" irresistibility");

  print("============ Q4 ============");

  countLettersList("mississippi"); 
  print("-"*20);
  countLettersList("successful");
  print("-"*20);
  countLettersList("irresistibility");


}

int swap(int number) => 1 - number;

bool checkLetters(String str) {
  String toLowercase = str.toLowerCase();
  List list = toLowercase.split("");
  Set set = list.toSet();
  set.removeAll({" "});

  return set.length == 26;
}

String checkCase(String str) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    int letter = str[i].codeUnitAt(0);
    if (letter >= 65 && letter <= 92) {
      count++;
    }
  }
  return (count > str.length / 2) ? str.toUpperCase() : str.toLowerCase();
}

void countLetters(String str) {
  Map<String, int> map = {};

  str = str.trim();
  for (int i = 0; i < str.length; i++) {
    String letter = str[i];
    if (map.containsKey(letter)) {
      map[letter] = map[letter]! + 1;
    } else {
      map[letter] = 1;
    }
  }
  print(map);
}


void countLettersList(String str) {
  List<int> list = List.generate(26, (item) => item = 0);
  for (int i = 0; i < str.length; i++) {
    String letter = str[i];
    int index = letter.codeUnitAt(0) - 97;
    list[index]++;
  }

  for (int i = 0; i < list.length; i++) {
    int counter = list[i];
    String letter = String.fromCharCode(i + 97);

    if (counter > 0) {
      print("$letter : $counter");
    }
  }
}
