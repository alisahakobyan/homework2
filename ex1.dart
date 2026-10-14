
void main() {
  List<String> shoppingList = ["Scandic", "Squeshy", "Lays"];

  shoppingList.add("Cheese");

  shoppingList.insert(1, "Milk");

  shoppingList.removeAt(2);

  shoppingList[0] = "Coffee";

  print("First product: ${shoppingList.first}");
  print("Last product: ${shoppingList.last}");

  print("Is the list empty? ${shoppingList.isEmpty}");

  print(shoppingList);
}
