//
//  ArrayDataSource.h
//  LighterViewControllerApp
//
//  Created by DmitriyTsurkan on 7/10/15.
//
//

#import <Foundation/Foundation.h>

typedef void (^CollectionViewCellConfigureBlock)(id cell, id item);

@interface ArrayDataSource : NSObject <UICollectionViewDataSource>

- (instancetype)initWithItems:(NSArray *)anItems
               cellIdentifier:(NSString *)aCellIdentifier
          configureCellBlock:(CollectionViewCellConfigureBlock)aConfigureCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end