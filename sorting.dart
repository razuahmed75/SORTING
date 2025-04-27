
// //=========================SELECTION SORTING=====================

// void main() {
//   List<int> nums = [5, 3, 8, 2, 1, 4];
//   for (int i = 0; i < nums.length-1; i++) {
//     for (int j = i + 1; j < nums.length; j++) {
//       if (nums[i] > nums[j]) {
//         int temp = nums[i]; // 5 // first iteration example
//         nums[i] = nums[j]; // 3 // first iteration example
//         nums[j] = temp; // 5 // first iteration example
//       }
//     }
//   }
//   /*
//    when first outer loop iteration (i=0)
//    [3,5,8,2,1,4] // j=1
//    [3,5,8,2,1,4] // j=2
//    [2,5,8,3,1,4] // j=3
//    [1,5,8,3,2,4] // j=4
//    [1,5,8,3,2,4] // j=5
//    */
  
//    /*
//    when first outer loop iteration (i=1); it will compare to [1,5,8,3,2,4] list
//    [1,3,8,5,2,4] // j=2
//    [1,3,8,5,2,4] // j=3
//    [1,2,8,5,3,4] // j=4
//    [1,2,8,5,3,4] // j=5
//    */
  

//     print('Sorted in ascending order: $nums'); // [1, 2, 3, 4, 5, 8]
// }



//=========================BUBBLE SORTING============================
void main() {
  List<int> nums = [5, 3, 8, 2, 1, 4];
  bubbleSort(nums);
  print('Sorted in ascending order: $nums');
}

void bubbleSort(List<int> nums) {
  int n = nums.length;

  // Traverse through all elements in the list
  for (int i = 0; i < n - 1; i++) {
    // Last i elements are already in place
    for (int j = 0; j < n - 1 - i; j++) {
      // Compare adjacent elements
      if (nums[j] > nums[j + 1]) {
        // Swap if the element is greater than the next one
        int temp = nums[j];
        nums[j] = nums[j + 1];
        nums[j + 1] = temp;
      }
    }
  }
}




//==============================QUICK SORTING======================
// void main() {
//   List<int> nums = [5, 3, 8, 2, 1, 4];
//   quickSort(nums, 0, nums.length - 1);
//   print('Sorted in ascending order: $nums');
// }

// void quickSort(List<int> nums, int low, int high) {
//   if (low < high) {
//     // Partition the array and get the pivot index
//     int pivotIndex = partition(nums, low, high);

//     // Recursively sort the elements before and after the pivot
//     quickSort(nums, low, pivotIndex - 1); // Left sub-list
//     quickSort(nums, pivotIndex + 1, high); // Right sub-list
//   }
// }

// int partition(List<int> nums, int low, int high) {
//   // Select the pivot element (we choose the last element as pivot)
//   int pivot = nums[high];
  
//   // Pointer for the smaller element (initially one index before low)
//   int i = low - 1;

//   // Traverse through the list
//   for (int j = low; j < high; j++) {
//     if (nums[j] <= pivot) {
//       i++; // Increment the smaller element pointer
//       // Swap nums[i] with nums[j]
//       int temp = nums[i];
//       nums[i] = nums[j];
//       nums[j] = temp;
//     }
//   }
  
//   // Swap the pivot element with nums[i + 1]
//   int temp = nums[i + 1];
//   nums[i + 1] = nums[high];
//   nums[high] = temp;
  
//   // Return the pivot index
//   return i + 1;
// }


//==============================MERGE SORTING========================
// void mergeSort(List<int> arr) {
//   if (arr.length <= 1) {
//     return; // Base case: array is already sorted if it has 1 or no elements.
//   }

//   int mid = arr.length ~/ 2; // Find the middle index
//   List<int> left = arr.sublist(0, mid); // Left half of the array
//   List<int> right = arr.sublist(mid); // Right half of the array

//   mergeSort(left); // Recursively sort the left half
//   mergeSort(right); // Recursively sort the right half

//   merge(arr, left, right); // Merge the sorted halves back into the original array
// }

// void merge(List<int> arr, List<int> left, List<int> right) {
//   int i = 0, j = 0, k = 0;

//   // Merge the two sorted halves back into the original array
//   while (i < left.length && j < right.length) {
//     if (left[i] <= right[j]) {
//       arr[k] = left[i];
//       i++;
//     } else {
//       arr[k] = right[j];
//       j++;
//     }
//     k++;
//   }

//   // Copy remaining elements of left, if any
//   while (i < left.length) {
//     arr[k] = left[i];
//     i++;
//     k++;
//   }

//   // Copy remaining elements of right, if any
//   while (j < right.length) {
//     arr[k] = right[j];
//     j++;
//     k++;
//   }
// }

// void main() {
//   List<int> nums = [5, 3, 8, 2, 1, 4];
//   print('Before Sorting: $nums');
  
//   mergeSort(nums);
  
//   print('After Sorting: $nums');
// }




