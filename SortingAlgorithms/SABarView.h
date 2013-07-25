//
//  SABarView.h
//  SortingAlgorithms
//
//  Created by Yi Zeng on 20/07/13.
//  Copyright (c) 2013 AFun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SABarView : UIView
{
    CGFloat bottomY;
}

@property (nonatomic, strong) NSArray *valueArray;
@property (nonatomic, strong) CALayer *subLayer;
@property (nonatomic, strong) NSMutableArray *barArray;

- (void)animateSort:(id)sender;
//- (void)switchLines;
@end
