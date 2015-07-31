//
//  ArrayDataSource.m
//  LighterViewControllerApp
//
//  Created by DmitriyTsurkan on 7/10/15.
//
//

#import "ArrayDataSource.h"

@interface ArrayDataSource ()

@property (strong, nonatomic) NSArray                           *items;
@property (copy, nonatomic) NSString                            *cellIdentifier;
@property (copy, nonatomic) CollectionViewCellConfigureBlock    configureCellBlock;

@end


@implementation ArrayDataSource

- (instancetype)init {
    return nil;
}

- (instancetype)initWithItems:(NSArray *)anItems
               cellIdentifier:(NSString *)aCellIdentifier
          configureCellBlock:(CollectionViewCellConfigureBlock)aConfigureCellBlock {
    self = [super init];
    if (self) {
        _items = anItems;
        _cellIdentifier = aCellIdentifier;
        _configureCellBlock = aConfigureCellBlock;
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return _items[(NSUInteger) indexPath.row];
}

#pragma mark UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [_items count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:_cellIdentifier
                                                            forIndexPath:indexPath];
    
    id item = [self itemAtIndexPath:indexPath];
    _configureCellBlock(cell, item);
    return cell;
}

@end