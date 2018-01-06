//
//  ViewController.h
//  TrafficLightsOC
//
//  Created by Jaime Jazareno III on 06/01/2018.
//  Copyright © 2018 Jaime Jazareno III. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    NSTimer *scoreTimer;
    
    int scoreInt;
    int timerInt;
    
}

@property (weak, nonatomic) IBOutlet UIButton *startGameButton;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)startButton:(id)sender;

@end

