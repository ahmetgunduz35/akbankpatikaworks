# 1- Bir listeyi düzleştiren (flatten) fonksiyon yazın. 
# Örnek:
# input: [[1,'a',['cat'],2],[[[3]],'dog'],4,5]
# output: [1,'a','cat',2,3,'dog',4,5]

def flatten(lst):
    result = []
    for item in lst:
        if isinstance(item, list):
            result.extend(flatten(item))
        else:
            result.append(item)
    return result

inp1 = [[1,'a',['cat'],2],[[[3]],'dog'],4,5]
print(flatten(inp1))


# 2- Verilen listenin içindeki elemanları tersine döndüren bir fonksiyon yazın. 
# Eğer listenin içindeki elemanlar da liste içeriyorsa onların elemanlarını da tersine döndürün.
# Örnek:
# input: [[1, 2], [3, 4], [5, 6, 7]]
# output: [[[7, 6, 5], [4, 3], [2, 1]]]

def reverse_nested(lst):
    result = []
    for item in reversed(lst):
        if isinstance(item, list):
            result.append(reverse_nested(item))
        else:
            result.append(item)
    return result

inp2 = [[1, 2], [3, 4], [5, 6, 7]]
print(reverse_nested(inp2))
