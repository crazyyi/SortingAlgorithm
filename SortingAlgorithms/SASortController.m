//
//  SASortControllerViewController.m
//  SortingAlgorithms
//
//  Created by Yi Zeng on 23/07/13.
//  Copyright (c) 2013 AFun. All rights reserved.
//

#import "SASortController.h"

@interface SASortController ()

@end

@implementation SASortController

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
    if (UIUserInterfaceIdiomPad == UI_USER_INTERFACE_IDIOM()) {
        constantWidth = 540.0;
        constantHeight = 400.0;
    } else {
        constantWidth = 320.0;
        constantHeight = 240.0;
    }
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setImage:[UIImage imageNamed:@"leftArrow.png"] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(backToPreviousScreen) forControlEvents:UIControlEventTouchUpInside];
    backButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:backButton];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:backButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:0.1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:backButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:0.2 constant:0]];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    barView = [[SABarView alloc] init];
    barView.backgroundColor = [UIColor clearColor];
    barView.translatesAutoresizingMaskIntoConstraints = NO;
    barView.valueArray = @[@20, @12, @2, @87, @40, @88, @24, @16, @90, @46, @103, @120, @65, @30, @36, @70, @130, @42, @169, @127, @8, @102, @168, @50, @179, @182, @39, @74, @65, @39, @72, @94, @87, @41, @29, @110, @85, @57, @99, @150, @19, @76, @148];
    [self.view addSubview:barView];
    
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

- (void)backToPreviousScreen
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
