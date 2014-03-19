//
//  PolygoneView.m
//  Polygones
//
//  Created by Hugo Poissonnet on 19/03/2014.
//  Copyright (c) 2014 Hugo Poissonnet. All rights reserved.
//

#import "PolygoneView.h"

@implementation PolygoneView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setNumberOfSides:(int)numberOfSides
{
    _numberOfSides = numberOfSides;
    [self setNeedsDisplay];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    float alpha = 2 * M_PI / _numberOfSides;
    float mX = self.bounds.size.width/2;
    float mY = self.bounds.size.height/2;
    float r = MIN(mX,mY);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    
    CGPoint startPoint;
    startPoint.x = (cosf(0)*r)+mX;
    startPoint.y = (sinf(0)*r)+mY;
    
    CGContextMoveToPoint(context, startPoint.x, startPoint.y);
    
    for (int i = 1 ; i < _numberOfSides ; i++) {
        CGPoint nextPoint;
        nextPoint.x = (cosf(alpha*i)*r) + mX;
        nextPoint.y = (sinf(alpha*i)*r) + mY;
        
        CGContextAddLineToPoint(context, nextPoint.x, nextPoint.y);
    }
    
    CGContextClosePath(context);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    
    CGContextDrawPath(context, kCGPathEOFillStroke);
}

@end
