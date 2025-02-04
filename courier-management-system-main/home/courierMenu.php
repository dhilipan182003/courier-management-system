#include <stdio.h>

void merge(int arr[], int left, int middle, int right) {
    int n1 = middle - left + 1, n2 = right - middle;
    int leftArray[n1], rightArray[n2];
    for (int i = 0; i < n1; i++) leftArray[i] = arr[left + i];
    for (int i = 0; i < n2; i++) rightArray[i] = arr[middle + 1 + i];
    for (int i = 0, j = 0, k = left; i < n1 || j < n2; k++) {
        if (i < n1 && (j >= n2 || leftArray[i] <= rightArray[j])) arr[k] = leftArray[i++];
        else arr[k] = rightArray[j++];
    }
}

void mergeSort(int arr[], int left, int right) {
    if (left < right) {
        int middle = left + (right - left) / 2;
        mergeSort(arr, left, middle);
        mergeSort(arr, middle + 1, right);
        merge(arr, left, middle, right);
    }
}

int main() {
    int count, arr[25];
    printf("How many elements? ");
    scanf("%d", &count);
    printf("Enter %d elements: ", count);
    for (int i = 0; i < count; i++) scanf("%d", &arr[i]);
    mergeSort(arr, 0, count - 1);
    printf("Sorted elements: ");
    for (int i = 0; i < count; i++) printf("%d ", arr[i]);
    return 0;
}