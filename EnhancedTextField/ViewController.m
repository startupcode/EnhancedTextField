//
//  ViewController.m
//  EnhancedTextField
//
//  Created by Rakesh Kumar on 19/01/16.
//  Copyright © 2016 com.enhanced.tf. All rights reserved.
//

#import "ViewController.h"
#define GIVE_ME_TITLE @"Enter text here"
#define kTitleCharacterMaximumLimit 21

@interface ViewController ()
{
    UITextField *currentResponder;
}
@end

@implementation ViewController
@synthesize txtTitle, lblTextCount, btnClear;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Set Default Value
    txtTitle.txtDelegate = self;
    txtTitle.placeholder = GIVE_ME_TITLE;
    txtTitle.ktitleCharacterMaximumLimit = kTitleCharacterMaximumLimit;
    txtTitle.autocorrectionType = UITextAutocorrectionTypeNo;
    lblTextCount.text = [NSString stringWithFormat:@"%d", kTitleCharacterMaximumLimit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Text field delegate
-(void)remainingTextCount:(EnhancedTF *)txtField rTxtCount:(NSString *)_count
{
    lblTextCount.text = _count;
}

- (void) textFieldDidBeginEditing:(UITextField *)textField
{
    currentResponder = textField;
    [currentResponder becomeFirstResponder];
    
    //If want to move scrollview up on keyboard display
    /*
     resetScrollView = TRUE;
     [scrlTextFieldScroll setContentOffset:CGPointMake(0,50) animated:YES];
     */
}

- (void) textFieldDidEndEditing:(UITextField *)textField
{
    [currentResponder resignFirstResponder];
}

-(BOOL)textFieldShouldEndEditing:(UITextField *) textField
{
    //Reset scrollview on keyboard hide
    /*
     if (resetScrollView)
     {
     resetScrollView = FALSE;
     BOOL animated = scrlTextFieldScroll.frame.size.height > scrlTextFieldScroll.contentOffset.y;
     if (animated)
     {
     [UIView beginAnimations:nil context:nil];
     [UIView setAnimationDuration:.3];
     [UIView setAnimationBeginsFromCurrentState:TRUE];
     }
     [scrlTextFieldScroll setContentOffset:CGPointZero animated:FALSE];
     if (animated)
     {
     [UIView commitAnimations];
     }
     }
     */
    return TRUE;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    //resetScrollView = FALSE;
    return YES;
}

- (IBAction)dismissKeyboard:(id)sender
{
    [txtTitle resignFirstResponder];
}

- (IBAction)clearText:(id)sender
{
    //Reset parameters
    txtTitle.text = @"";
    txtTitle.placeholder = GIVE_ME_TITLE;
    lblTextCount.text = [NSString stringWithFormat:@"%d", kTitleCharacterMaximumLimit];
}
@end
