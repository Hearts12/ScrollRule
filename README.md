# ScrollRule
使用Objective-C实现的可滑动选择的尺子


---

### 使用方式
1. 将文件夹 DYScrollRuler 导入自己的工程
2. 创建并初始化 DYScrollRulerView
   注：初始化方法：
   
`   
     -(instancetype)initWithFrame:(CGRect)frame  //游标放置的位置和大小
                   theMinValue:(float)minValue   //最小值
                   theMaxValue:(float)maxValue   //最大值
                   theStep:(float)step           //一小格占多少刻度
                   theUnit:(NSString *)unit      //单位
                   theNum:(NSInteger)betweenNum; //一个分区包含多少小刻度
`

3. 遵守协议 
`DYScrollRulerDelegate
`
使用回调方法处理获取游标的值

` -(void)dyScrollRulerView:(DYScrollRulerView *)rulerView 
          valueChange:(float)value;
`