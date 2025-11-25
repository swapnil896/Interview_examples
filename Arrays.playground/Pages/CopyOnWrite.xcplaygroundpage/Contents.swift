import Foundation

// ==============================================================
var arr1 = [1, 2, 3]
var arr2 = arr1
print(arr1 == arr2)
// true

// ==============================================================
print("===== BEFORE MUTATION ======")
arr1.withUnsafeBufferPointer { print("arr1 buffer : ", $0.baseAddress!) }
arr2.withUnsafeBufferPointer { print("arr2 buffer : ", $0.baseAddress!) }

/*
 OUTPUT :-
 ===== Before Mutation ======
 arr1 buffer :  0x0000600001718020
 arr2 buffer :  0x0000600001718020
 */

// ==============================================================
arr1.append(4)
print(arr1 == arr2)
// false

print(arr1)
print(arr2)
/*
 OUTPUT :-
 [1, 2, 3, 4]
 [1, 2, 3]
 */

// ==============================================================
print("===== AFTER MUTATION =====")
arr1.withUnsafeBufferPointer { print("arr1 buffer : ", $0.baseAddress!) }
arr2.withUnsafeBufferPointer { print("arr2 buffer : ", $0.baseAddress!) }

/*
 ===== AFTER MUTATION =====
 arr1 buffer :  0x000060000210e370
 arr2 buffer :  0x0000600001700120
 */

// ==============================================================
arr2.append(4)
print(arr1 == arr2)
// true

print("===== AFTER MUTATION second time =====")
arr1.withUnsafeBufferPointer { print("arr1 buffer : ", $0.baseAddress!) }
arr2.withUnsafeBufferPointer { print("arr2 buffer : ", $0.baseAddress!) }

/*
===== AFTER MUTATION second time =====
arr1 buffer :  0x0000600002112ff0
arr2 buffer :  0x0000600002113360
*/
