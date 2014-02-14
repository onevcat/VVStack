//
//  VVStack.m
//  VVStack
//
//  Created by 王 巍 on 14-2-13.
//  Copyright (c) 2014年 OneV's Den. All rights reserved.
//

#import "VVStack.h"

@interface VVStack()
@property (nonatomic, strong) NSMutableArray *numbers;
@end

@implementation VVStack
- (id)init {
    if (self = [super init]) {
        _numbers = [NSMutableArray new];
    }
    return self;
}

- (void)push:(double)num {
    [self.numbers addObject:@(num)];
}

- (double)top {
    return [[self.numbers lastObject] doubleValue];
}
@end
