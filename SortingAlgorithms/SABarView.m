//
//  SABarView.m
//  SortingAlgorithms
//
//  Created by Yi Zeng on 20/07/13.
//  Copyright (c) 2013 AFun. All rights reserved.
//

#import "SABarView.h"
#import "Logging.h"
#import "SABar.h"
#import "SASortUtil.h"
#import "SAMergeSortController.h"
#import "SAQuickSortController.h"
#import <QuartzCore/QuartzCore.h>

@implementation SABarView
{
    SABar *line1, *line2;
    BOOL notSwitched;
}
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
    _barArray = [[NSMutableArray alloc] init];
    notSwitched = YES;
}

//- (void)drawRect:(CGRect)rect
//{
//    if (notSwitched) {
//        line1 = [[SABar alloc] init];
//        line1.height = 10;
//        line1.startingX = 20;
//        
//        line2 = [[SABar alloc] init];
//        line2.height = 11;
//        line2.startingX = 25;
//        
//    }
//    LogDebug(@"Line1 height/StartingX = %d/%g, Line2 height/StartingX = %d/%g", line1.height, line1.startingX, line2.height, line2.startingX);
//    [self drawLineAtX:line1.startingX withHeight:line1.height
//           usingColor:[UIColor redColor]];
//    [self drawLineAtX:line2.startingX withHeight:line2.height
//           usingColor:[UIColor blackColor]];
//    
//}
//
//- (void)switchLines
//{
//    SABar *line = [[SABar alloc] init];
//    line.height = line1.height;
////    line.startingX = line1.startingX;
//    
//    line1.height = line2.height;
////    line1.startingX = line2.startingX;
//    
//    line2.height = line.height;
////    line2.startingX = line.startingX;
//    
//    notSwitched = NO;
//    [self setNeedsDisplay];
//}

- (void)drawRect:(CGRect)rect
{
    if (self.barArray.count == 0) {
        for (int i = 0; i < valueArray.count; i++) {
            SABar *newBar = [[SABar alloc] init];
            newBar.height = [valueArray[i] floatValue];
            newBar.startingX = 20 + 5 * (i + 1);
            newBar.color = [UIColor blueColor];
            [self.barArray addObject:newBar];
            [self drawLineAtX:newBar.startingX withHeight:newBar.height usingColor:newBar.color];
        }
    } else {
        for (int i = 0; i < self.barArray.count; i++) {
            SABar *bar = [self.barArray objectAtIndex:i];
            [self drawLineAtX:bar.startingX withHeight:bar.height usingColor:bar.color];
        }
    }


}

- (void)drawLineAtX:(CGFloat)startingX withHeight:(NSInteger)height
              usingColor:(UIColor *)color
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 3.0);
    CGContextSetStrokeColorWithColor(ctx, color.CGColor);
    CGContextBeginPath(ctx);
    CGContextMoveToPoint(ctx, startingX, bottomY);
    CGContextAddLineToPoint(ctx, startingX, bottomY - height);
    CGContextStrokePath(ctx);
}

- (void)animateSort:(id)sender
{
    LogInfo(@"Start sorting...");
    
    if ([sender isKindOfClass:SAMergeSortController.class]) {
        self.barArray = [SASortUtil mergeSort:self.barArray];
    } else if ([sender isKindOfClass:SAQuickSortController.class]) {
        self.barArray = [SASortUtil quickSort:self.barArray];
    }
    
    
    for (int i = 0; i < self.barArray.count; i++) {
        SABar *bar = self.barArray[i];
        LogDebug(@"Bar height: %d", bar.height);
    }
    
    [self setNeedsDisplay];
}

-(void)moveLayer:(CALayer*)layer to:(CGPoint)point{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.fromValue = [layer valueForKey:@"position"];
    animation.toValue = [NSValue valueWithCGPoint:point];
    layer.position = point;
    [layer addAnimation:animation forKey:@"position"];
}
@end
