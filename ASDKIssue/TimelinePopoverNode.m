//
//  TimelinePopoverNode.m
//  Pods
//
//  Created by molon on 15/11/19.
//
//

#import "TimelinePopoverNode.h"

@implementation TimelinePopoverNode{
    ASImageNode *_shareImageNode;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
        
        _shareImageNode = [ASImageNode new];
        _shareImageNode.name = @"shareImageNode";
        _shareImageNode.image = [UIImage imageNamed:@"Share"];
        _shareImageNode.preferredFrameSize = CGSizeMake(28.0f, 28.0f);
        [self addSubnode:_shareImageNode];
    }
    return self;
}

- (void)layout
{
    [super layout];

#warning if we call `setNeedsDisplay` for subnode manually. it's `_layer`'s `display` method would be called. Then it will display correctly.
//    [_shareImageNode setNeedsDisplay];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    
    return [ASStaticLayoutSpec staticLayoutSpecWithChildren:@[_shareImageNode]];
}

@end
