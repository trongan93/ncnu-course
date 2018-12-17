class MultiLayer:
    def __init__(self):
        self.x = None
        self.y = None
    def forward(self, x, y):
        self.x = x
        self.y = y
        out = x*y
        return out
    def backward(self,dout):
        dx = dout * self.y
        dy = dout * self.x
        return dx, dy

# apple = 100
# apple_num = 2
# tax = 1.1

# # layer
# mul_apple_layer = MultiLayer()
# mul_tax_layer = MultiLayer()

# # forward
# apple_price = mul_apple_layer.forward(apple, apple_num)
# price = mul_tax_layer.forward(apple_price, tax)
# print(price)

# # backward
# dprice = 1
# dapple_price, dtax = mul_tax_layer.backward(dprice)
# dapple, dapple_num = mul_apple_layer.backward(dapple_price)
# print(dapple, dapple_num, dtax)

class AddLayer:
    def __init__(self):
        pass
    def forward(self,x,y):
        out = x + y
        return out
    def backward(self,dout):
        dx = dout * 1
        dy = dout * 1
        return dx, dy

apple = 100
apple_num = 2
orrange = 150
orrange_num = 3
tax = 1.1

# layer
mul_apple_layer = MultiLayer()
mul_orrange_layer = MultiLayer()
add_apple_orrange_layer = AddLayer()
mul_tax_layer = MultiLayer()

# forward
apple_price = mul_apple_layer.forward(apple, apple_num) #(1)
orrange_price = mul_orrange_layer.forward(orrange,orrange_num) #(2)
all_price = add_apple_orrange_layer.forward(apple_price,orrange_price) #(3)
price = mul_tax_layer.forward(all_price, tax) #(4)


# backward
dprice = 1
dall_price, dtax = mul_tax_layer.backward(dprice) #(4)
dapple_price, dorrange_price = add_apple_orrange_layer.backward(dall_price) #(3)
dorrange, dorrange_num = mul_orrange_layer.backward(dorrange_price) #(2)
dapple, dapple_num = mul_apple_layer.backward(dapple_price) #(1)

print(price)
print(dapple_num, dapple, dorrange, dorrange_num, dtax)
