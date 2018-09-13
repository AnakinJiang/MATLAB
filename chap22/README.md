# 文件读取

## 读取excel

```matlab
A=xlsread('data.xlsx','Sheet1');
```

## 读取avi视频

```matlab
video = VideoReader('Appendix4.avi');
Num = video.NumberOfFrames;%获取视频帧数
for i=1:1500:Num
    img=read(video,i);
    imwrite(img,['Appendix4\',num2str(i,'%04d'),'.jpg']);%保存帧成图片
end
```

