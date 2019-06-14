//
//  main.m
//  Piglatin
//
//  Created by Kamal Maged on 2019-06-11.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Piglatin.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"%@", [@"hello everybody whatsup dah" stringByPigLatinization]);
    }
    return 0;
}
