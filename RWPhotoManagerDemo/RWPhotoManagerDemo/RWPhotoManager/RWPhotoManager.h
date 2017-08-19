//
//  RWPhotoManager.h
//  RWPhotoManagerDemo
//
//  Created by dingxin on 2017/8/19.
//  Copyright © 2017年 dingxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LGPhoto.h"

@interface RWPhotoManager : NSObject

/**
 呼出相册控制器
 
 @param carryView 控制器的发起者(因为如果是iPad需要一个停靠的view,你是按了一个 Button 想呼出UIAlertController那么这个 Button 就是 carryView)
 @param cameraImage 输出相机的单张照片(原图)
 @param albumArray 输出相册中多选的照片数组(原图)
 */
+ (void)showPhotoManager:(UIView *)carryView
       withMaxImageCount:(NSInteger)maxCount
         withCameraImage:(void(^)(UIImage *cameraImage))cameraImage
          withAlbumArray:(void(^)(NSArray *albumArray))albumArray;


@end
