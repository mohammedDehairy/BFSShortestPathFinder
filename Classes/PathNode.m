//
//  PathNode.m
//  YouQue
//
//  Created by mohamed mohamed El Dehairy on 9/7/14.
//  Copyright (c) 2014 Mohammed Eldehairy. All rights reserved.
//

#import "PathNode.h"

@implementation PathNode
-(instancetype)initWithNode:(NSInteger)node parent:(PathNode*)parent
{
    self = [super init];
    if(self)
    {
        _parent = parent;
        _node = node;
        _visited = NO;
    }
    return self;
}
@end
