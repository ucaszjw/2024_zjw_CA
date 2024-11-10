import struct

# 将十进制数转换单/双精度数
numbers1 = [0, 116.25, -4.375]
numbers2 = [-0, 116.25, -2049.5]

# 打印每个数的单精度表示和16进制表示
for number in numbers1:
    single_precision = struct.unpack('>f', struct.pack('>f', float(number)))[0]
    hex_representation = struct.unpack('>I', struct.pack('>f', single_precision))[0]
    print(f"{number} 转换为单精度数: {single_precision}, 16进制表示: 0x{hex_representation:08x}")

# 打印每个数的双精度表示和16进制表示
for number in numbers2:
    double_precision = float(number)
    hex_representation = struct.unpack('>Q', struct.pack('>d', double_precision))[0]
    print(f"{number} 转换为双精度数: {double_precision}, 16进制表示: 0x{hex_representation:016x}")

# 将16进制表示的单精度和双精度浮点数转换回十进制数
hex_numbers_double = [0x8008000000000000, 0x7065020000000000]
hex_numbers_single = [0xff800000, 0x7fe00000]

# 打印每个16进制表示的双精度数转换回的十进制数
for hex_number in hex_numbers_double:
    double_precision = struct.unpack('>d', struct.pack('>Q', hex_number))[0]
    print(f"16进制表示: 0x{hex_number:016x} 转换回十进制数: {double_precision}")

# 打印每个16进制表示的单精度数转换回的十进制数
for hex_number in hex_numbers_single:
    single_precision = struct.unpack('>f', struct.pack('>I', hex_number))[0]
    print(f"16进制表示: 0x{hex_number:08x} 转换回十进制数: {single_precision}")