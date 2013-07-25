//
//  SAQuickSortController.m
//  SortingAlgorithms
//
//  Created by Yi Zeng on 24/07/13.
//  Copyright (c) 2013 AFun. All rights reserved.
//

#import "SAQuickSortController.h"

@interface SAQuickSortController ()

@end

@implementation SAQuickSortController

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
	// Do any additional setup after loading the view.
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
