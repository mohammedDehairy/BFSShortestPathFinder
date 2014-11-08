//
//  ShortestPathFinder.h
//  YouQue
//
//  Created by mohamed mohamed El Dehairy on 9/7/14.
//  Copyright (c) 2014 Mohammed Eldehairy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MDLinkedList.h"
#import "PathNode.h"
@interface ShortestPathFinder : NSObject
+(NSArray*)shortesPathWithGraph:(NSDictionary *)graph start:(NSInteger)start end:(NSInteger)end;
@end
