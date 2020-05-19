//
//  SuperPlayerViewNotTransform.m
//  SuperPlayer
//
//  Created by Admin on 2020/5/19.
//

#import "SuperPlayerViewNotTransform.h"
#import "Masonry.h"
#import "UIView+MMLayout.h"

#import "SuperPlayerView+Private.h"

@implementation SuperPlayerViewNotTransform

//- (void)_switchToFullScreen:(BOOL)fullScreen {
//    if (_isFullScreen == fullScreen) {
//        return;
//    }
//    _isFullScreen = fullScreen;
//    [self.fatherView.mm_viewController setNeedsStatusBarAppearanceUpdate];
//
////    UIDeviceOrientation targetOrientation = [self _orientationForFullScreen:fullScreen];// [UIDevice currentDevice].orientation;
//
//    if (fullScreen) {
//        [self removeFromSuperview];
//        [[UIApplication sharedApplication].keyWindow addSubview:_fullScreenBlackView];
//        [_fullScreenBlackView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.width.equalTo(@(ScreenWidth));
//            make.height.equalTo(@(ScreenHeight));
//            make.center.equalTo([UIApplication sharedApplication].keyWindow);
//        }];
//
//        [[UIApplication sharedApplication].keyWindow addSubview:self];
//        [self mas_remakeConstraints:^(MASConstraintMaker *make) {
//            if (IsIPhoneX) {
//                make.width.equalTo(@(ScreenWidth - self.mm_safeAreaLeftGap * 2));
//            } else {
//                make.width.equalTo(@(ScreenWidth));
//            }
//            make.height.equalTo(@(ScreenHeight));
//            make.center.equalTo([UIApplication sharedApplication].keyWindow);
//        }];
//        [self.superview setNeedsLayout];
//    } else {
//        [_fullScreenBlackView removeFromSuperview];
//        [self addPlayerToFatherView:self.fatherView];
//    }
//}
//
//- (void)_switchToLayoutStyle:(SuperPlayerLayoutStyle)style {
//    // 获取到当前状态条的方向
//
////    UIInterfaceOrientation currentOrientation = [UIDevice currentDevice].orientation;
//    // 判断如果当前方向和要旋转的方向一致,那么不做任何操作
////    if (currentOrientation == orientation) { return; }
//    
//    // 根据要旋转的方向,使用Masonry重新修改限制
//    if (style == SuperPlayerLayoutStyleFullScreen) {//
//        // 这个地方加判断是为了从全屏的一侧,直接到全屏的另一侧不用修改限制,否则会出错;
//        if (_layoutStyle != SuperPlayerLayoutStyleFullScreen)  { //UIInterfaceOrientationIsPortrait(currentOrientation)) {
//            [self removeFromSuperview];
//            [[UIApplication sharedApplication].keyWindow addSubview:_fullScreenBlackView];
//            [_fullScreenBlackView mas_remakeConstraints:^(MASConstraintMaker *make) {
//                make.width.equalTo(@(ScreenWidth));
//                make.height.equalTo(@(ScreenHeight));
//                make.center.equalTo([UIApplication sharedApplication].keyWindow);
//            }];
//
//            [[UIApplication sharedApplication].keyWindow addSubview:self];
//            [self mas_remakeConstraints:^(MASConstraintMaker *make) {
//                if (IsIPhoneX) {
//                    make.width.equalTo(@(ScreenWidth - self.mm_safeAreaLeftGap * 2));
//                } else {
//                    make.width.equalTo(@(ScreenWidth));
//                }
//                make.height.equalTo(@(ScreenHeight));
//                make.center.equalTo([UIApplication sharedApplication].keyWindow);
//            }];
//        }
//    } else {
//        [_fullScreenBlackView removeFromSuperview];
//    }
//    self.controlView.compact = style == SuperPlayerLayoutStyleCompact;
//
//    [[UIApplication sharedApplication].keyWindow  layoutIfNeeded];
//
//
//    // iOS6.0之后,设置状态条的方法能使用的前提是shouldAutorotate为NO,也就是说这个视图控制器内,旋转要关掉;
//    // 也就是说在实现这个方法的时候-(BOOL)shouldAutorotate返回值要为NO
//    /*
//    [[UIApplication sharedApplication] setStatusBarOrientation:orientation animated:NO];
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:0.3];
//    // 更改了状态条的方向,但是设备方向UIInterfaceOrientation还是正方向的,这就要设置给你播放视频的视图的方向设置旋转
//    // 给你的播放视频的view视图设置旋转
//    self.transform = CGAffineTransformIdentity;
//    self.transform = [self getTransformRotationAngleOfOrientation:[UIDevice currentDevice].orientation];
//    
//    _fullScreenContainerView.transform = self.transform;
//    // 开始旋转
//    [UIView commitAnimations];
//    
//    [self.fatherView.mm_viewController setNeedsStatusBarAppearanceUpdate];
//    _layoutStyle = style;
//     */
//}

- (void)_adjustTransform:(UIDeviceOrientation)orientation {
    
}


/**
 *  player添加到fatherView上
 */
- (void)addPlayerToFatherView:(UIView *)view {
    [self removeFromSuperview];
    if (view) {
        [view addSubview:self];
        [self mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_offset(UIEdgeInsetsZero);
        }];
    }
}

@end
