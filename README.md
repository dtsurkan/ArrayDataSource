# ArrayDataSource

## How to use
```Objective-c
- (void)renderCollectionView {
    PBDCarouselCollectionViewLayout *layout = [[PBDCarouselCollectionViewLayout alloc] init];
    layout.itemSize = CGSizeMake(self.imageWidth, self.carouselCollectionView.frame.size.height);
    layout.interItemSpace = 5;
    [self.carouselCollectionView setCollectionViewLayout:layout];
    
    self.carouselCollectionView.decelerationRate = UIScrollViewDecelerationRateFast;
    [CarouselCollectionViewCell registerNibToCollectionView:self.carouselCollectionView];
    self.carouselCollectionView.backgroundColor = [UIColor clearColor];
    
    CollectionViewCellConfigureBlock configureCell = ^(CarouselCollectionViewCell *cell, NSDictionary *product) {
        [cell configureForProduct:product];
    };
    
    NSArray *photos = self.products ;
    self.photosArrayDataSource = [[ArrayDataSource alloc] initWithItems:photos
                                                         cellIdentifier:[CarouselCollectionViewCell reusableIdentifier]
                                                     configureCellBlock:configureCell];
    self.carouselCollectionView.dataSource = self.photosArrayDataSource;
}
```
