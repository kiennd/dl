//
//  iCarouselExampleViewController.m
//  iCarouselExample
//
//  Created by kiennd on 24/04/2013.
//  Copyright 2011 Charcoal Design. All rights reserved.
//

#import "iCarouselExampleViewController.h"

@interface iCarouselExampleViewController ()

@property (nonatomic, retain) NSMutableArray *items;
@property (nonatomic, assign) NSTimer *scrollTimer;
@property (nonatomic, assign) NSTimeInterval lastTime;

@end


@implementation iCarouselExampleViewController


- (void)awakeFromNib
{
    self.items = [NSMutableArray array];
    for (int i = 0; i < 10; i++)
    {
        [_items addObject:[NSNumber numberWithInt:i]];
    }
}


#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    _carousel.delegate =  self;
    _carousel.dataSource = self;
    _carousel.type = iCarouselTypeCylinder;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark -
#pragma mark iCarousel methods

- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return [_items count];
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view
{
    UILabel *label = nil;
    
    if (view == nil)
    {
        view = [[UIImageView alloc] initWithFrame:self.view.bounds];
        ((UIImageView *)view).image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",index]];
        view.alpha = 1;
        view.contentMode = UIViewContentModeScaleToFill;
    }
    else
    {
        label = (UILabel *)[view viewWithTag:1];
    }
    
    label.text = [[_items objectAtIndex:index] stringValue];
    
    return view;
}

- (CGFloat)carousel:(iCarousel *)carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value
{
    switch (option)
    {
        case iCarouselOptionSpacing:
            return value * 1;
        default:
            return value;
    }
}

#pragma mark -
#pragma mark Autoscroll


@end
