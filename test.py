# -*- coding: utf-8 -*-
# @Time    : 2020/12/14 10:52
# @Author  : han04
# @FileName: test.py
# @Software: PyCharm
# 课上片段练习


'''
list and tuple 练习
'''
# s=['CPP','JavaScript','C']
# tuple=('Java','PHP',s)
# tuple[2][1]='Golang'
# print(id(s[1]))


'''
条件判断条件判断条件判断条件判断
'''
# age = int(input('Your age is '))
# if age >= 18:
#     print('You are an adult.')
# else:
#     print('You are a teenager.')


''' 
1-4求和
'''
# sum = 0
# for x in list(range(5)):
#     sum += x
# print(sum)
#print(list(range(5)))


# for i in range(10,20):
#     print(i)


'''
输出九九乘法表
'''
# for x in range(1,10):
#     for y in range(1,10):
#         if x >= y:
#             print(x,'×',y,'=',x * y,end=" ")
#         else:
#             x += 1
#     print()


'''
dict字典练习 
'''
# d = {'Michael': 95, 'Bob': 75, 'Tracy': 85}
# print(d['Michael'])
# print('get' in d)
# print(d.get('Bob'))


'''
根据大小猜数字的游戏
'''
# import random
# count = 0
# x = random.randint(1,100)
# while 1:
#     y = int(input('请输入本局幸运数字： '))
#     count += 1
#     if y > 100:
#         print('Error：输入数字超出范围！请重新开始！')
#     elif x > y:
#         print('输入的数字较小！')
#     elif x < y:
#         print('输入的数字较大！')
#     elif x == y:
#         print('恭喜你，猜对了！',end=" ")
#         print('一共猜了{0}次！'.format(count))
#         break


'''
返回多值时，只是一个tuple，按位置赋值
'''
# import math
# def move(x,y,step,angle=0):
#     nx = x + step * math.cos(angle)
#     ny = y + step * math.sin(angle)
#     return nx,ny
# r = move(100,100,60,math.pi/6)
# print (r)


'''
随机生成幸运儿
'''
# import random
# name = ['001','002','003','004','005','006']
# for x in range(4):
#     Index = random.randint(0,len(name)-1)
#     print(name[Index])
#     name.pop(Index)


'''
显示商品、名称价格
'''
# item = [['Huawei Mate40','8999'],['iPhone 12 pro max ','10999'],['Mi 10','6999']]
# for num in range(len(item)):
#     print('商品名称为 ',item[num][name])
#     print('商品价格为 {0}元'.format(item[num][price]))
#     print()
'''
方法二 只做显示
'''
# item = [['Huawei Mate40','8999',18],['iPhone 12 pro max ','10999',20],['Mi 10','6999',20]]
# for  num in item:
#     for x in num:
#         print(x,end=" ")
#     print()


'''
商品仓库信息添加
'''
# item = [['Huawei Mate40','8999'],['iPhone 12 pro max ','10999'],['Mi 10','6999']]
# num = 0
# name = 0
# price = 1
# for num in range(len(item)):
#     print('商品名称为 ' + item[num][name])
#     print('商品价格为 {0}元'.format(item[num][price]))
#     print()
# while 1:
#     selection = input("是否需要输入手机商品信息,输入'y'继续输入,输入'q'退出")
#     if selection == 'y':
#         NewName = input('请输入新手机名称： ')
#         NewPrice = input('请输入新手机价格： ')
#         item.append([NewName, NewPrice])
#         print("输入成功！")
#     elif selection == 'q':
#             print('退出成功！')
#             break
#     else:
#         print('输入错误！请重新输入！')
# for num1 in range(len(item)):
#     print('现仓库有以下商品及其价格： ')
#     print('商品名称为 ' + item[num1][name])
#     print('商品价格为 {0}元'.format(item[num1][price]))
#     print()
#     print('现共有{0}件商品!'.format(len(item)))

# 删除某编号商品
# remove = input('想要删除的商品编号')
# if int(remove) > len(item):
#     print("没有该编号商品")
# else:
#     item.pop(int(remove))
# print(item)


'''
可变参数
'''
# def test2(name='22',age=123):
#     print(name,age)
# test2(age=2)
#
# def test(*a):
#     print(a)
# test(1,2)
#
# def test1(**a):
#     print(a)
# test1(name = 1,age = 12)


'''
初始坐标出发，输入行进方向和行进距离，退出后输出现坐标
'''
# x = 0
# y = 0
# f = ['u','d','l','r']
# while True:
#     location = [x,y]
#     direction = input('输入行动方向： ')
#     if direction in f:
#         length = input('输入行动长度： ')
#         if direction == 'u':
#             y += int(length)
#         elif direction == 'd':
#             y = y - int(length)
#         elif direction == 'l':
#             x = x - int(length)
#         elif direction == 'r':
#             x = x + int(length)
#     elif direction == 'q':
#         print('退出成功！当前坐标为',location)
#         break
#     else:
#         print('输入错误！请重新输入!')


'''
模拟地铁票收费
'''
stop = ['青岛北站','仓安路','永年路','兴国路','南岭','遵义路','瑞金路','仙家寨','流亭']
start = input('上车站为： ')
finish = input('下车站为： ')

if start in stop:
    sIndex = stop.index(start)
    fIndex = stop.index(finish)
    num = fIndex - sIndex
    print(f"从{start}到{finish}一共经过{num}站")
else:
    print("你所输入的站名有误！")


