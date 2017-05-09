//
//  TitleAndImageBtn.h
//  test
//
//  Created by xiaozhenyang on 14-10-8.
//  Copyright (c) 2014年 mac iko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TitleAndImageBtn : UIButton
{
    UIImage * _backGroundColor;
    UIImage * _backGroundSelectColor;
}

@property(nonatomic,assign)CGRect   titleCGrect;
@property(nonatomic,assign)CGRect   imageCGrect;
- (CGRect)imageRectForContentRect:(CGRect)contentRect;

/**
 UIButton的自定义

 @param frame button 的 frame
 @param titleFrame button 的 title frame
 @param imageFrame button 的 image frame
 @return 返回按钮
 */
- (id)initWithFrame:(CGRect)frame andTitleFrame:(CGRect)titleFrame  andImageFrame:(CGRect)imageFrame;
-(void)setBackgroundColor:(UIColor *)backColor forState:(UIControlState)state;

- (void)setImageWithColor: (UIColor *) color frame:(CGRect)frame;
@end
