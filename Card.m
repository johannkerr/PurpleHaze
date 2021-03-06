//
//  Card.m
//  PurpleHaze
//
//  Created by Johann Kerr on 12/30/14.
//  Copyright (c) 2014 Johann Kerr. All rights reserved.
//

#import "Card.h"

@implementation Card

@synthesize suit = _suit;
@synthesize value = _value;

@synthesize isTurnedOver = _isTurnedOver;

- (id)initWithSuit:(Suit)suit value:(int)value
{
    NSAssert(value >= CardAce && value <= CardKing, @"Invalid card value");
    
    if ((self = [super init]))
    {
        _suit = suit;
        _value = value;
        
    }
    return self;
}

- (BOOL)isEqualToCard:(Card *)otherCard
{
    NSParameterAssert(otherCard != nil);
    return (otherCard.suit == self.suit && otherCard.value == self.value);
}

- (BOOL)isLessThan:(Card *)otherCard
{
    NSParameterAssert(otherCard != nil);
    return (otherCard.suit == self.suit && otherCard.value > self.value);
}
- (BOOL)isMoreThan:(Card *)otherCard
{
    NSParameterAssert(otherCard != nil);
    return (otherCard.suit == self.suit && otherCard.value < self.value);
}

- (BOOL)matchesCard:(Card *)otherCard
{
    NSParameterAssert(otherCard != nil);
    return self.value == otherCard.value;
}
- (BOOL)isPurple
{
    return (self.suit == SuitDiamonds || self.suit == SuitHearts);
}

@end
