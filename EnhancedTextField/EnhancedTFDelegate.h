//
//  EnhancedTFDelegate.h
//  EnhancedTextField
//
//  Created by Rakesh Kumar on 19/01/16.
//  Copyright © 2016 com.enhanced.tf. All rights reserved.
//

#import <Foundation/Foundation.h>
@class EnhancedTF;

@protocol EnhancedTFDelegate <NSObject>

@required
-(void)remainingTextCount:(EnhancedTF *)txtField rTxtCount:(NSString *)_count;

@end