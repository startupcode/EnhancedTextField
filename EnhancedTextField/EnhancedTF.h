//
//  UITextField+EnhancedTF.h
//  EnhancedTextField
//
//  Created by Rakesh Kumar on 19/01/16.
//  Copyright © 2016 com.enhanced.tf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EnhancedTFDelegate.h"

@interface EnhancedTF : UITextField <UITextFieldDelegate>
{
    UIColor *txtColor;
    UIFont *txtFont;
}

@property(nonatomic,assign) id<EnhancedTFDelegate> txtDelegate;
@property(nonatomic,retain) UIColor *txtColor;
@property(nonatomic) NSInteger ktitleCharacterMaximumLimit;

- (id)initWithFrame:(CGRect)frame;
@end
