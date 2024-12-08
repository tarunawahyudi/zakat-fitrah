# 🌾 Zakat Fitrah Calculator

Welcome to the **Zakat Fitrah Calculator**, a simple yet powerful program written in **NASM Assembly** to help calculate zakat fitrah in kilograms of rice based on the number of family members. Designed with a modular structure, this project demonstrates how assembly code can be clean, reusable, and professional.

---

## ✨ Features
- **Interactive Input**: User-friendly input to enter the number of family members.
- **Accurate Calculation**: Calculates the zakat amount based on 2.5 kg of rice per person.
- **Modular Design**: Organized into separate files for input, calculation, and output, ensuring maintainability.
- **Optimized Performance**: Built with assembly for speed and efficiency.
- **Professional Documentation**: Perfect for learning or showcasing your assembly skills.

---

## 🏗️ Project Structure
```plaintext
zakat-fitrah/
├── src/
│   ├── input.asm           # Handles user input
│   ├── calculation.asm     # Performs zakat calculation
│   ├── output.asm          # Displays results
│   └── main.asm            # Main entry point
├── build/
│   ├── zakat.o             # Object files after compilation
│   └── zakat               # Final executable
├── Makefile                # Automates build process
├── README.md               # Project documentation
└── LICENSE                 # License information
```

---

## 🚀 Getting Started

Follow these steps to build and run the program:

### 1️⃣ Prerequisites
- **NASM**: Ensure you have the NASM assembler installed.  
  Install it using your package manager:
  ```bash
  sudo apt install nasm  # For Debian/Ubuntu
  ```
- **GCC**: Required for linking object files to create the executable.

---

### 2️⃣ Build the Project
Navigate to the project directory and run:
```bash
make
```
This will assemble the source files and generate the executable in the `build/` folder.

---

### 3️⃣ Run the Program
Execute the program:
```bash
./build/zakat
```
Follow the on-screen instructions to input the number of family members and get the zakat calculation.

---

## 🖼️ Example Output
```
=== Zakat Fitrah Calculator ===
Masukkan jumlah anggota keluarga: 4
Jumlah zakat fitrah yang harus dibayar: 10.0 kg
Created by Taruna Wahyudi | GitHub: https://github.com/tarunawahyudi
```

---

## 📂 Modular Code Design
The project is divided into the following modules for maintainability:

- **`input.asm`**: Handles user input from the terminal.
- **`calculation.asm`**: Contains the logic for calculating zakat.
- **`output.asm`**: Displays output messages to the terminal.
- **`main.asm`**: The entry point that ties all modules together.

Each module can be modified or extended independently without affecting the others.

---

## 🌐 About the Author

This project was created with love and care by **Taruna Wahyudi**.  
Feel free to check out more of my work on [GitHub](https://github.com/tarunawahyudi).

---

## 📝 License
This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## ❤️ Contributions
Contributions are always welcome! If you have ideas for improvements or features, feel free to fork the repository and submit a pull request.

---

## ⭐ Why Assembly?

This project is a showcase of how low-level programming can still be relevant, fun, and insightful in understanding how computers work. It's a great addition to your portfolio and a way to demonstrate expertise in performance-critical programming.

Happy coding! 🚀
