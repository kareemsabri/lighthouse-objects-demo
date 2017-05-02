//
//  Car.m
//  ObjectsDemo
//
//  Created by Kareem Sabri on 2017-05-02.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "Car.h"

@interface Car()

@property NSArray<NSString*> *paintHistory;

@end

@implementation Car

- (instancetype)init
{
    self = [super init];
    if (self) {
        _color = @"Black";
    }
    return self;
}

- (instancetype)initWithColor:(NSString*)color {
    self = [super init];
    if (self) {
        _color = color;
    }
    return self;
}


-(void)paint:(NSString *)colorToPaint {
    self.paintHistory = [self.paintHistory arrayByAddingObject:self.color];
    self.color = colorToPaint;
}

-(void)drive {
    //this is private, no one outside this file can call it
}

@end
