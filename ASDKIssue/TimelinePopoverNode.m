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
        [self addSubnode:_shareImageNode];
    }
    return self;
}

- (void)layout
{
    [super layout];

#warning if we call `setNeedsDisplay` for subnode manually. it's `_layer`'s `display` method would be called. Then it will display correctly.
    
#warning if not, the subnode won't display
//    [_shareImageNode setNeedsDisplay];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    
    CGSize size = constrainedSize.max;
    _shareImageNode.sizeRange = ASRelativeSizeRangeMakeWithExactCGSize(size);

    return [ASStaticLayoutSpec staticLayoutSpecWithChildren:@[_shareImageNode]];
}

@end
