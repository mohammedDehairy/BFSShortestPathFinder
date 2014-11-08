//
//  ShortestPathFinder.m
//  YouQue
//
//  Created by mohamed mohamed El Dehairy on 9/7/14.
//  Copyright (c) 2014 Mohammed Eldehairy. All rights reserved.
//

#import "ShortestPathFinder.h"

@implementation ShortestPathFinder
+(NSArray*)shortesPathWithGraph:(NSDictionary *)graph start:(NSInteger)start end:(NSInteger)end
{
    NSMutableArray *shortestPath = [NSMutableArray array];
    NSMutableDictionary *visitedDic = [NSMutableDictionary dictionary];
    
    
    MDLinkedList *queue = [[MDLinkedList alloc] init];
    PathNode *endPathNode = [[PathNode alloc] initWithNode:end parent:nil];
    [queue enqueue:endPathNode];
    
    PathNode *sourcePathNode;
    
    while (![queue isEmpty]) {
        
        PathNode *pathNode = ((PathNode*)[queue dequeue]);
        [visitedDic setObject:@1 forKey:[NSNumber numberWithInteger:pathNode.node]];
        
        if(pathNode.node == start)
        {
            sourcePathNode = pathNode;
            break;
        }
        
        for (NSNumber *child in ((NSArray*)[graph objectForKey:[NSNumber numberWithInteger:pathNode.node]])) {
            
            if(![visitedDic objectForKey:child])
            {
                PathNode *childPathNode = [[PathNode alloc] initWithNode:child.integerValue parent:pathNode];
                [queue enqueue:childPathNode];
            }
            
        }
    }
    
    PathNode *runningNode = sourcePathNode;
    
    while (runningNode) {
        [shortestPath addObject:[NSNumber numberWithInteger:runningNode.node ]];
        runningNode = runningNode.parent;
    }
    
    return shortestPath;
}
@end
