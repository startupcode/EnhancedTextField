//
//  UITextField+EnhancedTF.m
//  EnhancedTextField
//
//  Created by Rakesh Kumar on 19/01/16.
//  Copyright © 2016 com.enhanced.tf. All rights reserved.
//

#import "EnhancedTF.h"

//#define kTitleCharacterMaximumLimit 21

@implementation EnhancedTF
@synthesize txtDelegate, txtColor,ktitleCharacterMaximumLimit;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:(CGRect)frame];
    self.delegate = self;
    if (self) {
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];

    UIColor *hexTextColor = [UIColor blackColor];
    
    self.font = [UIFont fontWithName:@"Helvetica" size:21];
    self.textColor = hexTextColor;
    
    self.adjustsFontSizeToFitWidth = YES;
    self.minimumFontSize = 7.0;
    
    [self addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
}

-(void)textFieldDidChange:(EnhancedTF *)theTextField
{
    NSString *substring = [NSString stringWithString:theTextField.text];
    NSInteger nTextCount = (ktitleCharacterMaximumLimit - [substring length]);
    
    NSString *strCount = [NSString stringWithFormat:@"%ld", (long)(nTextCount < 0 ? 0:nTextCount)];
    
    if (txtDelegate) {
        [txtDelegate remainingTextCount:theTextField rTxtCount:strCount];
    }
    
    if(nTextCount <= 0)
        theTextField.text = [theTextField.text substringWithRange:NSMakeRange(0, ktitleCharacterMaximumLimit)];
}

@end
