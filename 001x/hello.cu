#include <stdio.h>

// create a kernel function
__global__ void ping() {
    printf("ping from [block: %d](thread: %d)\n", blockIdx.x, threadIdx.x);
}

int main() {
    // <<< numBlocks, numThreadsPerBlock >>>
    ping<<<2,5>>>();

    // used to join and synchronize threads
    cudaDeviceSynchronize();
    return 0;
}
