//
//  PathNode.h
//  YouQue
//
//  Created by mohamed mohamed El Dehairy on 9/7/14.
//  Copyright (c) 2014 Mohammed Eldehairy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PathNode : NSObject
@property(nonatomic)NSInteger node;
@property(nonatomic)PathNode *parent;
@property(nonatomic)BOOL visited;

-(instancetype)initWithNode:(NSInteger)node parent:(PathNode*)parent;
@end
