P8
按照圖片需求，然後加上salt和pepper的躁點，接著在將此圖片透過median filter做轉換後印出。

P9
按照題目要求，先縮放圖片至256*256，接著加入正弦波noise，然後對他做傅立葉變換，並將0-frequency
移到中心並計算其強度，接著在建立notch filter，並設定其大小和img相等，然後與img_noise做傅立葉轉
換，接著再把這些圖印出來。

P10
按照題目要求，做好motion的blur filter,高斯filter和wiener filter去模擬晃到的照片，並將他一一print出
