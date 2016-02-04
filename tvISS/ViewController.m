//
//  ViewController.m
//  tvOSS
//
//  Created by joshua bauer on 1/13/16.
//  Copyright © 2016 joshua bauer. All rights reserved.
//

#import "ViewController.h"

@import AVFoundation;
@import AVKit;

@interface ViewController ()

@property (nonatomic,strong) AVPlayer *player;
@property (nonatomic,strong) AVPlayerLayer *playerLayer;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
    _player = [AVPlayer playerWithURL:[NSURL URLWithString:@"http://iphone-streaming.ustream.tv/uhls/17074538/streams/live/iphone/playlist.m3u8"]];
    _playerLayer = [AVPlayerLayer playerLayerWithPlayer:_player];
    
    _playerLayer.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view.layer addSublayer:_playerLayer];
    
    [_player play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
