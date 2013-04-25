//
//  iCarouselExampleViewController.h
//  iCarouselExample
//
//  Created by kiennd on 24/04/2013.
//  Copyright 2011 Charcoal Design. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"


@interface iCarouselExampleViewController : UIViewController <iCarouselDataSource, iCarouselDelegate>

@property (nonatomic, retain) iCarousel *carousel;

@end
