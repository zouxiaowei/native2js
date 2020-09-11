//
//  Globle.m
//  native2js
//
//  Created by 邹小威 on 2020/9/11.
//  Copyright © 2020 邹小威. All rights reserved.
//

#import "Globle.h"

@implementation Globle
- (void)changeBackgroundColor:(JSValue *)value{
    self.ownerController.view.backgroundColor = [UIColor colorWithRed:value[@"r"].toDouble green:value[@"g"].toDouble blue:value[@"b"].toDouble alpha:value[@"a"].toDouble];
}
@end
