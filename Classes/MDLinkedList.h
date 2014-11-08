//
//  MDLinkedList.h
//  YouQue
//
//  Created by mohamed mohamed El Dehairy on 9/7/14.
//  Copyright (c) 2014 Mohammed Eldehairy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedListNode.h"
@interface MDLinkedList : NSObject
{
    LinkedListNode *head;
    LinkedListNode *tail;
}
-(void)enqueue:(NSObject*)value;

-(NSObject*)dequeue;

-(BOOL)isEmpty;
@end
