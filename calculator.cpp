#include <iostream>
#include <string>

int getChoice(std::string const& s)
{
	try
	{
		return std::stoi(s);
	}
	catch (std::invalid_argument const&)
	{
		return 0;
	}
}

int main() {
	std::string buffer;

	std::cout
		<< "Select a Mode:\n"
		<< "1. Add\n"
		<< "2. Subtract\n"
		<< "3. Multiply\n"
		<< "4. Divide\n";

	std::getline(std::cin, buffer);
	int choice = getChoice(buffer);

	if (!choice)
	{
		std::cout << "no u" << std::endl;
		return 1;
	}

	// get numbers
	std::cout << "First Number:\n";
	std::getline(std::cin, buffer);

	auto firstn = getChoice(buffer);

	std::cout << "Second Number:\n";
	std::getline(std::cin, buffer);

	auto secondn = getChoice(buffer);

	if (choice == 4 &&
		secondn == 0) {
		std::cout << "you can't DIVIDE BY 0 GAMER" << std::endl;
		return 1;
	}

	switch (choice) {
	case 1:
		std::cout << firstn + "+" << secondn << "=" << (firstn + secondn) << std::endl;
		break;

	case 2:
		std::cout << firstn + "-" << secondn << "=" << (firstn - secondn) << std::endl;
		break;

	case 3:
		std::cout << firstn + "*" << secondn << "=" << (firstn * secondn) << std::endl;
		break;

	case 4:
		std::cout << firstn + "/" << secondn << "=" << (firstn / secondn) << std::endl;
		break;
	default:
		std::cout << "how are u here xd" << std::endl;
		break;
	}

	return 0;
}
