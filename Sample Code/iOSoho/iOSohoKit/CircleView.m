//
//  CircleView.m
//  iOSohoKit
//
//  Created by  dcilia on 9/10/18.
//  Copyright © 2018 Spotify. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithCoder:(NSCoder *)aDecoder {

    self = [super initWithCoder:aDecoder];

    if (self) {

        [self setup];
    }

    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];

    if (self) {

        [self setup];
    }

    return self;
}

- (void)setup {
    self.layer.cornerRadius = 50.0f;
    self.backgroundColor = [UIColor redColor];
}


@end
