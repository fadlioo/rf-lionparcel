def test_arr (arr) :
    hasil = []
    ganjil = []
    genap = []
    for angka in arr :
        if angka % 2 == 0:
            genap.append(angka)
            genap.sort(reverse=True)
        else:
            ganjil.append(angka)
            ganjil.sort(reverse=True)
    hasil = genap + ganjil
    return hasil

input_array = [3, 2, 5, 1, 8, 9, 6]
output_array = test_arr(input_array)
print(output_array)
