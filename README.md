# Learn Elixir by Testing

Welcome to **Learn Elixir by Testing**! This project is designed to teach you Elixir by solving exercises through test-driven learning. You'll be given failing tests, and your goal is to write code to make them pass.

## 📂 Project Structure
Each lesson is organized into a separate folder with:

- A test file (`lesson_test.exs`) containing exercises.
- A solution file (`lesson.ex`) where you write your implementations.

```
learn_elixir_by_testing/
│── lessons/
│   ├── 01_basics/
│   │   ├── basics_test.exs  # Test file with exercises
│   │   ├── basics.ex        # Your solution file
│   ├── 02_pattern_matching/
│   │   ├── pattern_matching_test.exs
│   │   ├── pattern_matching.ex
│   ├── 03_recursion/
│   │   ├── recursion_test.exs
│   │   ├── recursion.ex
│── mix.exs
│── README.md
```

---

## 🛠 Getting Started

### 1️⃣ Install Dependencies
Run the following command to install the necessary dependencies:
```sh
mix deps.get
```

### 2️⃣ Running Tests for a Lesson
To run all exercises in a specific lesson, use:
```sh
mix test lessons/01_basics/basics_test.exs
```
This will run only the tests inside the **Basics** lesson.

### 3️⃣ Running a Specific Exercise
Each test is **tagged** by lesson and exercise. You can run an individual exercise using:
```sh
mix test --only exercise:greet
```
For example, if you're working on `greet/1`, this will run only that test.

### 4️⃣ Running an Entire Lesson
To test all exercises in a lesson, run:
```sh
mix test --only lesson:basics
```
This runs all exercises tagged as part of the **Basics** lesson.

### 5️⃣ Running Everything
To run all lessons:
```sh
mix test
```

---

## 🏆 How to Complete a Lesson
1️⃣ Open the lesson folder (e.g., `lessons/01_basics/`).  
2️⃣ Open the `lesson.ex` file (e.g., `basics.ex`).  
3️⃣ Implement the missing functions based on the test file.  
4️⃣ Run the test file using `mix test lessons/01_basics/basics_test.exs`.  
5️⃣ Keep improving your solution until all tests pass! 🎉  

Example of a **test file** (`basics_test.exs`):
```elixir
@tag lesson: :basics, exercise: :greet
test "greets a person" do
  assert Basics.greet("Alice") == "Hello, Alice!"
  assert Basics.greet("Bob") == "Hello, Bob!"
end
```

Example of an **incomplete solution file** (`basics.ex`):
```elixir
defmodule Lessons.Basics do
  def greet(name) do
    # TODO: Implement this function
  end
end
```

After writing the function in `basics.ex`:
```elixir
defmodule Lessons.Basics do
  def greet(name) do
    "Hello, #{name}!"
  end
end
```
The test will pass! ✅

---

## 🚀 Advanced Filtering

Run only a specific lesson and exercise:
```sh
mix test --only lesson:basics --only exercise:add
```
This runs only the `add/2` function test inside the Basics lesson.

To run tests at a specific **line number**, use:
```sh
mix test lessons/01_basics/basics_test.exs:12
```

---

## 📌 Contributing
If you'd like to add new lessons or fix issues:
1. Fork the repository.
2. Create a new lesson folder following the existing structure.
3. Submit a pull request with your changes.

---

## 🎯 Goal
This project is designed to **improve your Elixir skills** through a **hands-on, test-driven approach**. By the time you complete these exercises, you'll have a solid understanding of Elixir's core features.

🚀 Happy coding!

