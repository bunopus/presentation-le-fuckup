void main() {
  persist();
}

var count = 0;
void persist() {
  try {
    if (++count == 5) {
      throw Exception("Fuck you");
    }
    print('sending data to postgres');
    new Future.delayed(Duration(seconds: 1), persist);
  } catch (e) {
    print(e);
  }
}
