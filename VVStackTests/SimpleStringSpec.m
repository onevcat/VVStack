//
//  SimpleStringSpec.m
//  VVStack
//
//  Created by 王 巍 on 14-2-15.
//  Copyright 2014年 OneV's Den. All rights reserved.
//

#import <Kiwi/Kiwi.h>


SPEC_BEGIN(SimpleStringSpec)

describe(@"SimpleString", ^{
    context(@"when assigned to 'Hello world'", ^{
        NSString *greeting = @"Hello world";
        it(@"should exist", ^{
            [[greeting shouldNot] beNil];
        });

        it(@"should equal to 'Hello world'", ^{
            [[greeting should] equal:@"Hello world"];
        });
    });
});

SPEC_END
