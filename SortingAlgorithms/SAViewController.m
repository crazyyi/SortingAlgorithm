//
//  SAViewController.m
//  SortingAlgorithms
//
//  Created by Yi Zeng on 20/07/13.
//  Copyright (c) 2013 AFun. All rights reserved.
//

#import "SAViewController.h"
#import "SAMergeSortController.h"

@interface SAViewController ()

@end

@implementation SAViewController

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

    NSMutableDictionary *views = [[NSMutableDictionary alloc] init];
    _mergeSortBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_mergeSortBtn setTitle:@"Merge Sort" forState:UIControlStateNormal];
    _mergeSortBtn.titleLabel.textColor = [UIColor blackColor];
    [_mergeSortBtn setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_mergeSortBtn addTarget:self action:@selector(mergeSort) forControlEvents:UIControlEventTouchUpInside];
    
    [views setObject:_mergeSortBtn forKey:@"mergeSortBtn"];
    [self.view addSubview:_mergeSortBtn];
    
    _quickSortBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_quickSortBtn setTitle:@"Quick Sort" forState:UIControlStateNormal];
    _quickSortBtn.titleLabel.textColor = [UIColor blackColor];
    [_quickSortBtn setTranslatesAutoresizingMaskIntoConstraints:NO];
    [views setObject:_quickSortBtn forKey:@"quickSortBtn"];
    [self.view addSubview:_quickSortBtn];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_mergeSortBtn attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_quickSortBtn attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_mergeSortBtn attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:0.9 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_quickSortBtn attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.1 constant:0]];
    
}

- (void)mergeSort
{
    SAMergeSortController *msController = [[SAMergeSortController alloc] init];
    msController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [self presentViewController:msController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
