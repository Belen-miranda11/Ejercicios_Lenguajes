#include <stdio.h>
#include <malloc.h>

const int SIZE_ARRAY = 10;

void print_array(int *arreglo,int size){
    int* end_ptr = arreglo+size;
    while(arreglo < end_ptr) {
        printf("%i ",*arreglo);
        arreglo++;
    }
    printf("\n");
}

void copy_array(int *source_ptr, int *dest_ptr, int size){
    int* end_ptr = source_ptr+size;
    while(source_ptr < end_ptr) {
        *dest_ptr = *source_ptr;
        source_ptr++;
        dest_ptr++;
    }
}

int insert_array(int* source_ptr, int elem, int posic, int size) {
    int *end_pos = source_ptr+size;
    int *futu_pos = &source_ptr[posic];
    while (end_pos != futu_pos){
        *end_pos = *(end_pos-1);
        end_pos--;
    }
    *end_pos = elem;
    return size+1;
}

int main() {
    int arreglo[SIZE_ARRAY];
    int *arreglo2 = (int*) malloc(SIZE_ARRAY*sizeof(int)) ;
    arreglo[0]=9; arreglo[1]=8; arreglo[2]=7; arreglo[3]=6; arreglo[4]=5;
    arreglo[5]=4; arreglo[6]=3; arreglo[7]=2; arreglo[8]=1; arreglo[9]=0;

    print_array(arreglo,SIZE_ARRAY);
    copy_array(arreglo,arreglo2,SIZE_ARRAY);

    int new_size = 0;
    new_size = insert_array(arreglo2,100, 5,SIZE_ARRAY);
    print_array(arreglo2,new_size);
    return 0;
}
