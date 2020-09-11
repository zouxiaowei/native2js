//
//  ViewController.m
//  native2js
//
//  Created by 邹小威 on 2020/9/10.
//  Copyright © 2020 邹小威. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>
@interface ViewController ()

@property(strong,nonatomic) JSContext *jsContext;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.jsContext = [[JSContext alloc]init];
//    [self runJS_Hello:@"'avatar'"];
    
    int (^block)(NSString *) = ^(NSString *name){
        NSLog(@"hello javascript");
        NSLog(@"%@", name);
        return 99;
    };
    [self.jsContext setObject:block forKeyedSubscript:@"oc_hello"];
    NSLog(@"asdadasd");
}

//-(void) runJS_Hello:(NSString *)name{
//    NSString *path =[[NSBundle mainBundle] pathForResource:@"main" ofType:@"js"];
//    NSData *jsData =[[NSData alloc]initWithContentsOfFile:path];
//    NSString *jsCode = [[NSString alloc]initWithData:jsData encoding:NSUTF8StringEncoding];
//    NSString *fiString = [NSString stringWithFormat:jsCode,name];
//    [self.jsContext evaluateScript:fiString];
//}



@end
