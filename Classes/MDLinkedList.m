//
//  MDLinkedList.m
//  YouQue
//
//  Created by mohamed mohamed El Dehairy on 9/7/14.
//  Copyright (c) 2014 Mohammed Eldehairy. All rights reserved.
//

#import "MDLinkedList.h"

@implementation MDLinkedList
-(instancetype)init
{
    self = [super init];
    if(self)
    {
        
    }
    
    return self;
}
-(void)enqueue:(NSObject*)value
{
    LinkedListNode *node = [[LinkedListNode alloc] init];
    node.value = value;
    
    if(!head)
    {
        head = node;
    }else
    {
        tail.next = node;
    }
    
    tail = node;
    
}

-(NSObject*)dequeue
{
    LinkedListNode *oldHead = head;
    
    head = head.next;
    
    return oldHead.value;
}

-(BOOL)isEmpty
{
    return head == nil;
}
@end
