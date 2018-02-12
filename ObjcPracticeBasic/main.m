//
//  main.m
//  ObjcPracticeBasic
//
//  Created by leo.chou on 2018/2/9.
//  Copyright © 2018年 steven.chou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "car.h"
#import "carChild.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {

        // Class object
//        car *t_car = [[car alloc] init];
//        [t_car printinfo];
//        t_car = nil;

        // Child Class object
        carChild *t_car = [[carChild alloc] init];
        [t_car printinfo];

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
