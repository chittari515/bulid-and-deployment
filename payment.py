class coffee:
    def_init_(self,name,price):
    self.name=name
    self.price=price
    class order:
        def_init_(self):
        self.items=[]
        def add_item(self,coffee):
            self.items.append(coffee)
            print(f"Added{coffee.name}to your order.")
            def total(self):
                return sum(item.price for item in self.items)
            def show_order(self):
                if not self.items:
                    print("No items in order.")
                    return
                print("\n your order:")
                for i, item in enumerate(self.items,1)
                    print(f"{i},{item.name}-${itrm.price}")
                    print(f"Total:${self.total()}\n")
                    def checkout(self):
                        if not self.itrms:
                            print("your cart is empty.")
                            return
                        self.show_order()
                        confirm=imput("proceed to check out?(yes/no):").strip().lower()
                        if confirm='yes':
print("order confirmed!THnak you.")
self.items.clear()
else:
print("checkout cna celled.")
def main()
    menu=[
        coffee("Espresso",2.5),
        coffee("Latte",3.5),
        coffee("cappuccino",3.0),
        coffee("americano",2.0),
    ]
order=order()
while True:
    print("\n----coffee menu---")
    for i, coffee in enumerate (menu,1)
    print(f"{i}.{coffee. name}-${coffee.price}")
          print("5.view order")
    print("6. checkout")
    print("7. exit")
    choice=input("choose an option:")
    if choice in ['1','2','3','4']
    order.add_item(menu[int(choice)-1])
elif choice=='5':
order.show_order()
elif choice=='6':
elif choice=='7':
print("thnaks fr visiting.Goodbye!")
break
else:
print("invalid choice.try again.")
if_name_=="_main_":
main()
