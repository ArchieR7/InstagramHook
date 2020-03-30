//
//  InstagramHeader.h
//  instagram
//
//  Created by Archie on 2020/3/31.
//  Copyright © 2020 Archie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface IGImageSpecifier
@property(strong, nonatomic) NSURL *url;
@end

@interface IGFeedPhotoView: UIView
@property(strong, nonatomic) IGImageSpecifier *imageSpecifier;
@end

@interface IGFeedItemPhotoCell : UICollectionViewCell
@property(strong, nonatomic) IGFeedPhotoView *photoView;
@end
