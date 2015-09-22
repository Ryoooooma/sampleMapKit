//
//  ViewController.m
//  sampleMapKit
//
//  Created by 脇田竜馬 on 2015/09/17.
//  Copyright (c) 2015年 Ryoma Wakita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //MapViewオブジェクトを作成
    MKMapView *mapView = [[MKMapView alloc] init];

    //大きさ、位置を決定
    mapView.frame = CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height - 20);

    //表示位置の中心を設定
    CLLocationCoordinate2D co;
    
    //アヤラの位置を設定
    co.latitude = 10.317347;    //緯度
    co.longitude = 123.905759;  //経度
    
    [mapView setCenterCoordinate:co];
    
    //縮尺を設定
    MKCoordinateRegion cr = mapView.region;
    //数字を小さくすると、詳細な地図（範囲がせまい）になる
    // （緯度）
    cr.span.latitudeDelta = 0.08;
    // （軽度）
    cr.span.longitudeDelta = 0.08;
    
    cr.center = co;
    
    [mapView setRegion:cr];
    
    
    //地図の表示種類設定（他にはsatelliteやhybridがある）
    mapView.mapType = MKMapTypeStandard;


    //Ayalaにピンを立てる
    MKPointAnnotation *pin = [[MKPointAnnotation alloc] init];
    pin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759);
    //    pin.coordinate = CLLocationCoordinate2DMake(co.latitude, co.longitude);
    pin.title = @"アヤラ";
    pin.subtitle = @"セブで1番大きいショッピングモールです";
    //    MKPointAnnotation *pin = [self createdPin:co Title:@"アヤラ" Subtitle:@"biggest Shopping Mall in Cebu"];
    
    [mapView addAnnotation:pin];

    
    //SMにピンを立てる
    MKPointAnnotation *pin2 = [[MKPointAnnotation alloc] init];
    pin2.coordinate = CLLocationCoordinate2DMake(10.311715, 123.918332);
    pin2.title = @"SM";
    pin2.subtitle = @"セブで2番目に大きい";

    [mapView addAnnotation:pin2];
    
    //2Quadにピンを立てる
    MKPointAnnotation *pin3 = [[MKPointAnnotation alloc] init];
    pin3.coordinate = CLLocationCoordinate2DMake(10.314275, 123.90535);
    pin3.title = @"2Quad Building";
    pin3.subtitle = @"ここ、ネクシードっす";
    
    [mapView addAnnotation:pin3];

    
    //GaisanoCountryMallにピンを立てる
    MKPointAnnotation *pin4 = [[MKPointAnnotation alloc] init];
    pin4.coordinate = CLLocationCoordinate2DMake(10.339513, 123.911053);
    pin4.title = @"Gaisano Country Mall";
    pin4.subtitle = @"そこそこなクオリティのモール";
    
    [mapView addAnnotation:pin4];

    //Topsにピンを立てる
    MKPointAnnotation *pin5 = [[MKPointAnnotation alloc] init];
    pin5.coordinate = CLLocationCoordinate2DMake(10.374459, 123.870797);
    pin5.title = @"The Tops";
    pin5.subtitle = @"セブ1の景観";
    
    [mapView addAnnotation:pin5];

    
    
    //表示するためにViewに追加
    [self.view addSubview:mapView];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
