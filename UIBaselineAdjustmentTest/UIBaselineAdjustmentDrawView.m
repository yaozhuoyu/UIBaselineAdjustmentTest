//
//  UIBaselineAdjustmentDrawView.m
//  UIBaselineAdjustmentTest
//
//  Created by yaozhuoyu on 13-9-18.
//  Copyright (c) 2013年 yaozhuoyu. All rights reserved.
//

#import "UIBaselineAdjustmentDrawView.h"

const NSString *drawString = @"测试属性UIBaselineAdjustment的效果";
const CGFloat stringMaxWidth = 150.0f;

@implementation UIBaselineAdjustmentDrawView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    [[UIColor blackColor] set];
    // Drawing code
    UIFont *textFont = [UIFont systemFontOfSize:16.0f];
    CGFloat minTextFontSize = 13.0f;
    CGFloat actualFontSize;
    
    CGRect contentRect = self.bounds;
    
    CGPoint point = CGPointMake(contentRect.origin.x, 60.0f);
    
    CGSize drawSize;
    
    drawSize = [drawString drawAtPoint:point forWidth:stringMaxWidth withFont:textFont minFontSize:minTextFontSize actualFontSize:&actualFontSize lineBreakMode:NSLineBreakByTruncatingTail baselineAdjustment:UIBaselineAdjustmentAlignBaselines];
    
    //NSLog(@"UIBaselineAdjustmentAlignBaselines point %@ drawsize %@ actualFontSize %f", NSStringFromCGPoint(point), NSStringFromCGSize(drawSize), actualFontSize);
    
    point = CGPointMake(contentRect.origin.x + stringMaxWidth, 60.0f);
    drawSize = [drawString drawAtPoint:point forWidth:stringMaxWidth withFont:textFont minFontSize:minTextFontSize actualFontSize:&actualFontSize lineBreakMode:NSLineBreakByTruncatingTail baselineAdjustment:UIBaselineAdjustmentNone];
    
    //NSLog(@"UIBaselineAdjustmentNone point %@ drawsize %@ actualFontSize %f", NSStringFromCGPoint(point), NSStringFromCGSize(drawSize), actualFontSize);
    
    point = CGPointMake(contentRect.origin.x + stringMaxWidth + stringMaxWidth, 60.0f);
    drawSize = [drawString drawAtPoint:point forWidth:stringMaxWidth withFont:textFont minFontSize:minTextFontSize actualFontSize:&actualFontSize lineBreakMode:NSLineBreakByTruncatingTail baselineAdjustment:UIBaselineAdjustmentAlignCenters];
    
    //NSLog(@"UIBaselineAdjustmentAlignCenters point %@ drawsize %@ actualFontSize %f", NSStringFromCGPoint(point), NSStringFromCGSize(drawSize), actualFontSize);
    
    
}


@end
