//
//  LinkedListNode.m
//  YouQue
//
//  Created by mohamed mohamed El Dehairy on 9/7/14.
//  Copyright (c) 2014 Mohammed Eldehairy. All rights reserved.
//

#import "LinkedListNode.h"

@implementation LinkedListNode
-(instancetype)initWithValue:(NSObject*)value withNext:(LinkedListNode*)next
{
    self = [super init];
    if(self)
    {
        _next = next;
        _value = value;
    }
    
    return self;
}
@end
