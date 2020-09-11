//
//  Globle.h
//  native2js
//
//  Created by 邹小威 on 2020/9/11.
//  Copyright © 2020 邹小威. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol GlobleProtocol <JSExport>

-(void)changeBackgroundColor:(JSValue *)value;

@end


@interface Globle : NSObject <GlobleProtocol>
@property (nonatomic,weak) UIViewController *ownerController;

@end

