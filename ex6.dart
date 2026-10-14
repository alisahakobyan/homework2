
Future<int> getNumber(int value) async {
  if (value <= 0) {
    throw Exception("Value must be positive");
  }

  await Future.delayed(Duration(milliseconds: 100));
  return value;
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    return 0;
  }
}

void main() async {
  print(await safeGetNumber(5));
  print(await safeGetNumber(-3));
}
