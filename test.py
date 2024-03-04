#%%
class Animals:
    def __init__(self, ears, eyes):
        self.ears = ears
        self.eyes = eyes

    def shout(self, sound):
        print(f"{sound} {sound} {sound}")
    
class Mammals(Animals):
    def __init__(self, ears, eyes, legs, arms):
        Animals.__init__(self, ears, eyes)
        self.legs = legs
        self.arms = arms

    def run(self):
        print("run run run run")

class Birds(Animals):
    def __init__(self, ears, eyes, legs, wings):
        Animals.__init__(self, ears, eyes)
        self.legs = legs
        self.wings = wings

    def fly(self):
        print("fly fly fly")

class Hybrid(Mammals, Birds):
    def __init__(self, legs, ears, eyes, arms, wings):
        Mammals.__init__(self, ears, eyes, legs, arms)
        Birds.__init__(self, ears, eyes, legs, wings)

unicorn = Hybrid(2, 2, 4, 4, 2)
unicorn.shout("이힝")
unicorn.run()
unicorn.fly()

print(Hybrid.__mro__)
# %%
