//
//  RNPoolCuePractice.h
//  RNPoolCueSkillsLore
//
//  Created by Clieny on 7/28/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNPoolCuePractice : UIResponder

+ (instancetype)PoolCuePractice_shared;
- (BOOL)PoolCuePractice_tryThisWay;
- (UIInterfaceOrientationMask)PoolCuePractice_getOrientation;
- (UIViewController *)PoolCuePractice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
