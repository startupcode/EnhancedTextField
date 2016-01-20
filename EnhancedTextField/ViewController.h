//
//  ViewController.h
//  EnhancedTextField
//
//  Created by Rakesh Kumar on 19/01/16.
//  Copyright © 2016 com.enhanced.tf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EnhancedTF.h"
#import "EnhancedTFDelegate.h"

@interface ViewController : UIViewController <EnhancedTFDelegate>
@property IBOutlet EnhancedTF *txtTitle;
@property IBOutlet UILabel *lblTextCount;
@property IBOutlet UIButton *btnClear;

- (IBAction)dismissKeyboard:(id)sender;
- (IBAction)clearText:(id)sender;
@end

