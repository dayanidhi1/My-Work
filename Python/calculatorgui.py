import tkinter as tk

class Calculator:
    def __init__(self, master):
        self.master = master
        master.title("Calculator")

        # Create the entry widget
        self.display = tk.Entry(master, width=35, borderwidth=5)
        self.display.grid(row=0, column=0, columnspan=4, padx=10, pady=10)

        # Create the buttons
        button_list = [
            "7", "8", "9", "+",
            "4", "5", "6", "-",
            "1", "2", "3", "*",
            "0", ".", "=", "/",
            "C"
        ]

        r = 1
        c = 0
        for button_text in button_list:
            button = tk.Button(master, text=button_text, padx=40, pady=20, command=lambda button_text=button_text: self.button_click(button_text))
            button.grid(row=r, column=c)
            c += 1
            if c > 3:
                c = 0
                r += 1

    def button_click(self, button_text):
        if button_text == "C":
            self.display.delete(0, tk.END)
        elif button_text == "=":
            try:
                result = str(eval(self.display.get()))
                self.display.delete(0, tk.END)
                self.display.insert(0, result)
            except:
                self.display.delete(0, tk.END)
                self.display.insert(0, "Error")
        else:
            self.display.insert(tk.END, button_text)

root = tk.Tk()
calculator = Calculator(root)
root.mainloop()
