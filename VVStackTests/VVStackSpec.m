//
//  VVStackSpec.m
//  VVStack
//
//  Created by 王 巍 on 14-2-15.
//  Copyright 2014年 OneV's Den. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "VVStack.h"

SPEC_BEGIN(VVStackSpec)

describe(@"VVStack", ^{
    context(@"when created", ^{
        __block VVStack *stack = nil;
        beforeEach(^{
            stack = [VVStack new];
        });
        
        afterEach(^{
            stack = nil;
        });
        
        it(@"should have the class VVStack", ^{
            [[[VVStack class] shouldNot] beNil];
        });
        
        it(@"should exist", ^{
            [[stack shouldNot] beNil];
        });
        
        it(@"should equal contains 0 element", ^{
            [[stack should] beEmpty];
        });
        
        it(@"should be able to push and get top", ^{
            [stack push:2.3];
            [[stack should] haveCountOf:1];
            [[theValue([stack top]) should] equal:theValue(2.3)];
            
            [stack push:4.6];
            [[stack should] haveCountOf:2];
            [[theValue([stack top]) should] equal:4.6 withDelta:0.001];
        });
        
        it(@"should raise a exception when pop", ^{
            [[theBlock(^{
                [stack pop];
            }) should] raiseWithName:@"VVStackPopEmptyException"];
        });
    });
    
    context(@"when new created and pushed 4.6", ^{
        __block VVStack *stack = nil;
        beforeEach(^{
            stack = [VVStack new];
            [stack push:4.6];
        });
        
        afterEach(^{
            stack = nil;
        });
        
        it(@"can be poped and the value equals 4.6", ^{
            [[theValue([stack pop]) should] equal:theValue(4.6)];
        });
        
        it(@"should contains 0 element after pop", ^{
            [stack pop];
            [[stack should] beEmpty];
        });
    });
});

SPEC_END
