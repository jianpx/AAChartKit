//
//  AAChartEvents.m
//  AAChartKitDemo
//
//  Created by jianpeixin on 2019/7/20.
//  Copyright © 2019 Danny boy. All rights reserved.
//

#import "AAChartEvents.h"
#import "AAJSStringPurer.h"

@implementation AAChartEvents

- (void)setLoad:(NSString *)load {
    _load = [AAJSStringPurer pureJavaScriptFunctionStringWithString:load];
}

- (AAChartEvents * (^) (NSString * load))loadSet {
    return ^(NSString * load) {
        _load = [AAJSStringPurer pureJavaScriptFunctionStringWithString:load];
        return self;
    };
}

@end
