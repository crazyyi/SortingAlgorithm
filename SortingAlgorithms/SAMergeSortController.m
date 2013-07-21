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
	// Do any additional setup after loading the view.
    
    SABarView *barView = [[SABarView alloc] init];
    barView.backgroundColor = [UIColor clearColor];
    barView.translatesAutoresizingMaskIntoConstraints = NO;
    barView.valueArray = @[@20, @12, @2, @40, @88, @24, @16, @90, @46, @103, @120, @65, @30, @36, @70, @130, @42, @50, @65, @39, @72, @94, @87, @41, @29, @110, @85];
    [self.view addSubview:barView];

    CGFloat constantWidth, constantHeight;
    if (UIUserInterfaceIdiomPad == UI_USER_INTERFACE_IDIOM()) {
        constantWidth = 540.0;
        constantHeight = 400.0;
    } else {
        constantWidth = 320.0;
        constantHeight = 240.0;
    }
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:barView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:constantHeight];
    [barView addConstraint:heightConstraint];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:barView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:constantWidth];
    [barView addConstraint:widthConstraint];
    
    UIButton *startBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [startBtn setTitle:@"Start" forState:UIControlStateNormal];
    startBtn.titleLabel.textColor = [UIColor blueColor];
    startBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [startBtn addTarget:self action:@selector(startSorting) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:startBtn];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:barView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:startBtn attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:barView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:0.7 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:startBtn attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.4 constant:0]];
    
}

- (void)startSorting
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
