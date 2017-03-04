# BorderLine
/**
 * 自定义圆角边框
 * borderWidth  :边框宽度
 * borderColor  :边框颜色
 * redius       :圆角半径
 * leftBottom   :左下角是否圆角
 * leftTop      :左上。。。。
 * rightTop     :右上。。。。
 * rightBottom  :右下。。。。
 */
    BorderLine * borderLine = [[BorderLine alloc] initWithFrame:CGRectMake(50, 100, 150, 100)
                                                   borderColor:[UIColor blueColor]
                                                    borderWidth:2
                                                setBorderRedius:20
                                                     leftBottom:NO
                                                        leftTop:YES
                                                       rightTop:YES
                                                    rightBottom:NO
                                                    ];
    borderLine.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:borderLine];
    
