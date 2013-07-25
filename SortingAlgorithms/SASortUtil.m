//
//  SASortUtil.m
//  SortingAlgorithms
//
//  Created by Yi Zeng on 24/07/13.
//  Copyright (c) 2013 AFun. All rights reserved.
//

#import "SASortUtil.h"
#import "SABar.h"

@implementation SASortUtil

+ (NSMutableArray *)mergeSort:(NSArray *)inputArray
{
    int cArray[inputArray.count];
    for (int i = 0; i < inputArray.count; i++) {
        SABar *bar = [inputArray objectAtIndex:i];
        cArray[i] = bar.height;
    }
    
    mergesort(cArray, inputArray.count, sizeof(int), cmpfunc);
    
    NSMutableArray *result = [[NSMutableArray alloc] initWithArray:inputArray];
    for (int i = 0; i < inputArray.count; i++) {
        SABar *bar = result[i];
        bar.height = cArray[i];
    }
    
    return result;
}

+ (NSMutableArray *)quickSort:(NSArray *)inputArray
{
    int cArray[inputArray.count];
    for (int i = 0; i < inputArray.count; i++) {
        SABar *bar = [inputArray objectAtIndex:i];
        cArray[i] = bar.height;
    }
    
    qsort(cArray, inputArray.count, sizeof(int), cmpfunc);
    
    NSMutableArray *result = [[NSMutableArray alloc] initWithArray:inputArray];
    for (int i = 0; i < inputArray.count; i++) {
        SABar *bar = result[i];
        bar.height = cArray[i];
    }
    
    return result;
}

int cmpfunc(const void* a, const void* b)
{
    return ( *(int*)a - *(int*)b);
}


@end
