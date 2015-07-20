//
//  UIButton+PKDownloadButton.m
//  Download
//
//  Created by Pavel on 01/06/15.
//  Copyright (c) 2015 Katunin. All rights reserved.
//

#import "PKRoundedBoundsButton.h"
#import "UIImage+PKDownloadButton.h"

@implementation PKRoundedBoundsButton

- (void)configureDefaultAppearance {
	UIImage *backImage = [UIImage buttonBackgroundWithColor:self.tintColor];
	UIImage *highlightedBackImage = [UIImage highlitedButtonBackgroundWithColor:self.tintColor];
	
	[self setBackgroundImage:[backImage resizableImageWithCapInsets:UIEdgeInsetsMake(15.f, 15.f, 15.f, 15.f)]
					forState:UIControlStateNormal];
	
	[self setBackgroundImage:[highlightedBackImage resizableImageWithCapInsets:UIEdgeInsetsMake(15.f, 15.f, 15.f, 15.f)]
					forState:UIControlStateHighlighted];
	[self setBackgroundImage:[highlightedBackImage resizableImageWithCapInsets:UIEdgeInsetsMake(15.f, 15.f, 15.f, 15.f)]
					forState:UIControlStateSelected];
}


- (void)tintColorDidChange {
	[self configureDefaultAppearance];
}

- (void)cleanDefaultAppearance {
    [self setBackgroundImage:nil forState:UIControlStateNormal];
    [self setBackgroundImage:nil forState:UIControlStateHighlighted];
    [self setAttributedTitle:nil forState:UIControlStateNormal];
    [self setAttributedTitle:nil forState:UIControlStateHighlighted];
}

@end
