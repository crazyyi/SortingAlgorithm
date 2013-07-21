//
//  SABarView.m
//  SortingAlgorithms
//
//  Created by Yi Zeng on 20/07/13.
//  Copyright (c) 2013 AFun. All rights reserved.
//

#import "SABarView.h"
#import <QuartzCore/QuartzCore.h>

@implementation SABarView
@synthesize valueArray;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (void)layoutSubviews
{
    bottomY = self.frame.size.height - 5;
}

- (void)drawRect:(CGRect)rect
{
    for (int i = 0; i < valueArray.count; i++) {
        [self drawLineAtX:(20 + 5 * (i + 1)) withHeight:[valueArray[i] floatValue]];
    }
}

- (void)drawLineAtX:(CGFloat)startingX withHeight:(CGFloat)height
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 3.0);
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, startingX, bottomY);
    CGContextAddLineToPoint(context, startingX, bottomY - height);
    CGContextStrokePath(context);
}

@end
