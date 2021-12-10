#include <iostream>

int main() {
  for (int i {0}; i <= 50; i++) {

    std::string fun {""};

    fun =  ( i % 3 == 0 ? "Fizz" : "" );
    fun += ( i % 5 == 0 ? "Buzz" : "" );
    fun =  ( fun.empty() ? std::to_string(i) : fun);

    std::cout << fun << "\n";

  }
}
