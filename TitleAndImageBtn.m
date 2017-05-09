//
//  TitleAndImageBtn.m
//  test
//
//  Created by xiaozhenyang on 14-10-8.
//  Copyright (c) 2014年 mac iko. All rights reserved.
//

#import "TitleAndImageBtn.h"

@implementation TitleAndImageBtn

- (id)initWithFrame:(CGRect)frame andTitleFrame:(CGRect)titleFrame  andImageFrame:(CGRect)imageFrame;
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _titleCGrect=titleFrame;
        _imageCGrect=imageFrame;
        self.clipsToBounds = YES;
        [self  setExclusiveTouch:YES];

    
    }
    return self;
}


- (CGRect)backgroundRectForBounds:(CGRect)bounds{
    
    return bounds;
    
    
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    
    
    return _titleCGrect;
    
}
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    
    return _imageCGrect;
}
-(void)setBackgroundColor:(UIColor *)backColor forState:(UIControlState)state{
    
    
    [self setBackgroundImage:[self createImageWithColor:backColor] forState:state];
}


- (UIImage *) createImageWithColor: (UIColor *) color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
- (void)setImageWithColor: (UIColor *) color frame:(CGRect)frame
{
    CGRect rect=frame;
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self setBackgroundImage:theImage forState:UIControlStateNormal];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
