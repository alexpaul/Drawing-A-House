//
//  HouseView.m
//  Drawing a House.
//
//  Created by Alex Paul on 11/21/13.
//  Copyright (c) 2013 Alex Paul. All rights reserved.
//

#import "HouseView.h"

@implementation HouseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    UIBezierPath *houseBezierPath = [UIBezierPath bezierPath];
    houseBezierPath.lineWidth = 2.0;
    
    [houseBezierPath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)]; // bottom left point
    [houseBezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)]; // bottom right point
    [houseBezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 2/5.0 * self.bounds.size.height)]; // bottom roof right
    [houseBezierPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 1/6.0 * self.bounds.size.height)]; // roof top
    [houseBezierPath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 2/5.0 * self.bounds.size.height)]; // bottom roof left
    [houseBezierPath closePath];
    [houseBezierPath stroke];
    
    UIBezierPath *doorBezierPath = [UIBezierPath bezierPathWithRect:CGRectMake((self.bounds.size.width/2.0) -  1/12.0 * self.bounds.size.width,
                                                                               2/3.0 * self.bounds.size.height,
                                                                               1/6.0 * self.bounds.size.width,
                                                                               (self.bounds.size.height/2.0) - (2/3.0 * self.bounds.size.height))];
    [[UIColor redColor]setFill];
    [doorBezierPath fill];
    
    UIBezierPath *windowBezierPath = [UIBezierPath bezierPathWithRect:CGRectMake(5/8.0 * self.bounds.size.width,
                                                                                 3.5/6.0 * self.bounds.size.height,
                                                                                 1/6.0 * self.bounds.size.width,
                                                                            ((self.bounds.size.height/2.0) - (2/3.0 * self.bounds.size.height))/2.0)];
    [[UIColor greenColor] setFill];
    [windowBezierPath fill];
    
    UIBezierPath *roofBezierPath = [UIBezierPath bezierPath];
    roofBezierPath.lineWidth = 2.0;
    [roofBezierPath moveToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 2/5.0 * self.bounds.size.height)]; // bottom roof right
    [roofBezierPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 1/6.0 * self.bounds.size.height)]; // roof top
    [roofBezierPath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 2/5.0 * self.bounds.size.height)]; // bottom roof left
    [roofBezierPath closePath];
    [roofBezierPath stroke];
    [[UIColor brownColor] setFill];
    [roofBezierPath fill];
    
    UIBezierPath *chimneyBezierPath = [UIBezierPath bezierPathWithRect:CGRectMake(2/3.0 * self.bounds.size.width,
                                                                                  1.3/5.0 * self.bounds.size.height,
                                                                                  1/18.0 * self.bounds.size.width,
                                                                                  40)];
    [[UIColor brownColor] setFill];
    [chimneyBezierPath fill];
    [chimneyBezierPath stroke];
    
    
                                      
}

@end
