students = {}

def add_student():
    name = input("Enter student name: ")
    marks = int(input("Enter marks: "))
    students[name] = marks
    print(f"✅ {name} added successfully!\n")

def view_students():
    if not students:
        print("⚠️ No students found.\n")
    else:
        print("\n--- Student List ---")
        for name, marks in students.items():
            print(f"{name} : {marks}")
        print()

def search_student():
    name = input("Enter student name to search: ")
    if name in students:
        print(f"🎯 {name} scored {students[name]} marks\n")
    else:
        print("❌ Student not found\n")

def delete_student():
    name = input("Enter student name to delete: ")
    if name in students:
        del students[name]
        print(f"🗑️ {name} deleted successfully!\n")
    else:
        print("❌ Student not found\n")

def update_marks():
    name = input("Enter student name to update marks: ")
    if name in students:
        new_marks = int(input("Enter new marks: "))
        students[name] = new_marks
        print(f"✏️ Marks updated for {name}!\n")
    else:
        print("❌ Student not found\n")

def highest_marks():
    if not students:
        print("⚠️ No data available.\n")
    else:
        highest = max(students.values())   # Find highest marks
        toppers = [name for name, marks in students.items() if marks == highest]

        print(f"\n🏆 Highest Marks: {highest}")
        print("🎯 Topper(s):")
        for t in toppers:
            print(f"- {t}")
        print()

def lowest_marks():
    if not students:
        print("⚠️ No data available.\n")
    else:
        lowest = min(students.values())   # Find lowest marks
        weakest = [name for name, marks in students.items() if marks == lowest]

        print(f"\n📉 Lowest Marks: {lowest}")
        print("😢 Weakest Student(s):")
        for w in weakest:
            print(f"- {w}")
        print()

def average_marks():
    if not students:
        print("⚠️ No data available.\n")
    else:
        avg = sum(students.values()) / len(students)
        print(f"📊 Class Average = {avg:.2f}\n")

def pass_fail_report():
    if not students:
        print("⚠️ No data available.\n")
    else:
        print("\n--- Pass/Fail Report ---")
        for name, marks in students.items():
            if marks >= 35:
                print(f"✅ {name} PASSED with {marks}")
            else:
                print(f"❌ {name} FAILED with {marks}")
        print()

def show_menu():
    print("===== Student Marks Management System =====")
    print("1. Add Student")
    print("2. View Students")
    print("3. Search Student")
    print("4. Delete Student")
    print("5. Update Marks")
    print("6. Show Highest Marks")
    print("7. Show Lowest Marks")
    print("8. Show Average Marks")
    print("9. Pass/Fail Report")
    print("10. Exit")

# Main program loop
while True:
    show_menu()
    choice = input("Enter your choice (1-10): ")

    if choice == "1":
        add_student()
    elif choice == "2":
        view_students()
    elif choice == "3":
        search_student()
    elif choice == "4":
        delete_student()
    elif choice == "5":
        update_marks()
    elif choice == "6":
        highest_marks()
    elif choice == "7":
        lowest_marks()
    elif choice == "8":
        average_marks()
    elif choice == "9":
        pass_fail_report()
    elif choice == "10":
        print("👋 Exiting program. Goodbye!")
        break
    else:
        print("⚠️ Invalid choice. Try again!\n")
