//
//  SAMergeSortController.m
//  SortingAlgorithms
//
//  Created by Yi Zeng on 20/07/13.
//  Copyright (c) 2013 AFun. All rights reserved.
//

#import "SAMergeSortController.h"
#import "Logging.h"
#import "SABarView.h"

@interface SAMergeSortController ()

@end

@implementation SAMergeSortController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)startSorting
{
    [barView animateSort:self];
//    [barView switchLines];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
