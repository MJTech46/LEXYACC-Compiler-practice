# 🧠 LEXYACC Compiler Practice

Welcome to **LEXYACC-Compiler-practice** — a collection of my **college lab experiments and practice programs** based on **Lex and Yacc**, the powerful tools used for building compilers and language processors.

---

## 🧩 About This Repository

This repository serves as a **personal learning and experimentation space** for compiler design concepts, focusing mainly on:
- **Lex (Lexical Analyzer Generator)**
- **Yacc (Yet Another Compiler Compiler)**

Each folder or file here represents a **lab exercise** or a **custom program** I created to explore how compilers work — from tokenizing input to parsing syntax rules.

---

## ⚙️ Topics Covered

Here are some of the compiler concepts practiced in this repo:

- 🔡 Lexical Analysis (Token generation)
- 🧾 Syntax Analysis using Yacc
- 🧮 Regular Expressions
- 🧰 Parser Types (LR, LALR, SLR)
- 🧠 Grammar (CFGs, FIRST and FOLLOW sets)
- 🧪 Language pattern recognition using Lex
- ⚖️ Expression evaluation and validation

---

## 📂 Repository Structure

```
LEXYACC-Compiler-practice/
│
├── Programs_Name/
│   ├── program.l
│   ├── program.y
│   └── ...
│
├── Programs_Name/
│   ├── program.l
│   ├── program.y
│   └── ...
│
└── README.md
```

---

## 🖥️ Requirements

Make sure the following are installed on your system before running the programs:

- **Lex/Flex**
- **Yacc/Bison**
- **GCC compiler**
- **Linux/Ubuntu environment (recommended)**

### 🔧 Install on Ubuntu

```bash
sudo apt update
sudo apt install flex bison gcc
```

---

## ▶️ How to Run

To compile and execute a Lex program:
```bash
lex filename.l
gcc lex.yy.c -o output
./output
```

To compile and execute a Lex + Yacc program:
```bash
lex filename.l
yacc -d filename.y
gcc lex.yy.c y.tab.c -o output
./output
```

---

## 💡 Example Output

```bash
Input: 001100
Output: valid string!
```

---

## 🎓 Purpose

This repository was created as part of my **Compiler Design Laboratory** coursework.  
It helps me:
- Organize and version-control my lab exercises 🧾  
- Understand the internals of compilers 🧠  
- Practice Lex and Yacc programming for real use cases ⚙️

---

## 📜 License

This project is open-source and free to use for learning purposes.

---

## 🌟 Support

If you find these programs helpful, feel free to ⭐ **star** this repository!  
Your support motivates me to keep improving and adding more experiments!

---

**Created with ❤️ by [Abin (MJ Tech)](https://github.com/MJ-Tech)**  
*“Learning compilers one token at a time.”*
