//
//  main.m
//  Snakes & Ladders
//
//  Created by Noor Alhoussari on 2017-06-03.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputController.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        InputController *inputController = [[InputController alloc] init];
        
        Player *player = [[Player alloc]init];
        
        NSLog (@"Welcome to Snakes & Ladders!");
        NSLog(@"Roll the dice to play'r'");
        
        NSString *input = [inputController inputTrimString];
        
        while (TRUE){
            if ([input isEqualToString:@"r"]){
                
                [player roll];
                NSLog(@"You moved to square number: %li", (long)player.currentSquare);
                
                if(![player isGameOver]){
                    NSLog (@"Roll again to continue 'r' or quit 'q'");
                    NSString *input = [inputController inputTrimString];
                    
                    if ([input isEqualToString:@"r"]){
                        continue;
                    } else if ([input isEqualToString:@"q"]){
                        break;
                    }
                } else {
                    break;
                }
            }
            
        }
    }
    return 0;
}
