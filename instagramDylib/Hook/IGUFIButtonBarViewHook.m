//
//  IGUFIButtonBarViewHook.m
//  instagramDylib
//
//  Created by Archie on 2020/3/31.
//  Copyright © 2020 Archie. All rights reserved.
//

#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import "InstagramHeader.h"

CHDeclareClass(IGFeedPhotoView)

CHOptimizedMethod1(self, void, IGFeedPhotoView, _onDoubleTap, id, sender) {
    NSLog(@"double tap");
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle: @"請選擇動作"
                                                                             message: nil
                                                                      preferredStyle: UIAlertControllerStyleActionSheet];
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle: @"❤️"
                                                            style: UIAlertActionStyleDefault
                                                          handler: ^(UIAlertAction * _Nonnull action) {
        CHSuper1(IGFeedPhotoView, _onDoubleTap, sender);
    }];
    __weak typeof(self) weakSelf = self;
    UIAlertAction *saveAction = [UIAlertAction actionWithTitle: @"儲存在相簿"
                                                         style: UIAlertActionStyleDefault
                                                       handler: ^(UIAlertAction * _Nonnull action) {
        __strong typeof(self) strongSelf = weakSelf;
        if (strongSelf) {
            NSURL *url = [[strongSelf imageSpecifier] url];
            NSData *data = [NSData dataWithContentsOfURL: url];
            UIImage *image = [UIImage imageWithData: data];
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
        } else {
            return;
        }
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle: @"取消" style: UIAlertActionStyleCancel handler: nil];
    [alertController addAction:defaultAction];
    [alertController addAction:saveAction];
    [alertController addAction:cancelAction];
    UIViewController *topController = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    while ([topController presentedViewController]) {
        topController = [topController presentedViewController];
    }
    [topController presentViewController: alertController animated: true completion: nil];
}

CHConstructor {
    CHLoadLateClass(IGFeedPhotoView);
    CHHook1(IGFeedPhotoView, _onDoubleTap);
}
