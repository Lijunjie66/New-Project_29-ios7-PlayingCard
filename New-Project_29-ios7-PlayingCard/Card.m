//
//  Card.m
//  New-Project_29-ios7-PlayingCard
//
//  Created by Geraint on 2018/6/13.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Card.h"

// 设置私有属性
@interface Card()



@end


@implementation Card

  /*
   
  ****  在.h文件里，设置属性后，自动建立下面的getter和setter方法，但不会显示出来，属于默认  ****

// @synthesize（合成），实例变量的名字：_contents，属性contents将储存于此
// 属性储存在实力变量中。
@synthesize contents = _contents; // 指定实例变量名，储存这个属性（@synthesize contents 去使用名为_contents 的实例变量）

// 默认不写setter和getter方法，系统自动给出
// getter方法，getter方法名与属性一样
- (NSString *)contents {
    return _contents;  // 实现就返回我们合成的实例变量
}

// setter方法
- (void)setContents:(NSString *)contents {
    contents = _contents;  // 我们的 实例变量 = 参数
}
 

   // 另外两个BOOL类型的属性的getter和setter方法：
@synthesize chosen = _chosen;
- (BOOL)isChosen {
    return _chosen;
}
- (void)setChosen:(BOOL)chosen {
    chosen = _chosen;
}

@synthesize matched = _matched;
- (BOOL)isMatched {
    return _matched;
}
- (void)setMatched:(BOOL)matched {
    matched = _matched;
}

   */
/*
- (int)match:(Card *)card {
    int score = 0;
    
    
    // 点符号（card.contents）只用于属性，在这里是用来它的getter方法，"card.contents ="是setter方法
    // 这里用isEqualToString 是指两个指针的【内容】相等，“==”是指【两个指针相等】
    if ([card.contents isEqualToString:self.contents]) {
        score = 1;
    }
    
    return score;
}
*/

// 数组内部的纸牌和想要比较的纸牌作比较的方法：
- (int)match:(NSArray *)otherCards {
    int score = 0;
    
    // 便利所有纸牌
    for(Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}




@end
