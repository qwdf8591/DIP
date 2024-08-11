P8
先把圖片讀近來，並對spacial domain做FT轉成frequency domain，並把0-frequency的地方移到中間
最後在計算頻譜的強度，然後show出來，還有題目要求的圖片的平均強度也一起計算。
P9
按照題目要求，先設定出sobel mask的值，並因為題目要求要先分別對XY進行smoothing，接著計算其
梯度強度並印出來，此時發現梯度值約在30以後便迅速下降，因此我們將Treshold的值設成30，並印出
binary img
P10
題目要求要把例題從BHPF改成GHPF，並且要把size給弄出來，前面M跟N先把Img的SIZE弄出來，接著設定
中心是M/2 N/2 round函數是取整數，再來是使用meshgrid產生和圖片同大小的網格，之後下面就是代公
式產生GLPF，而GHPF就是1-GLPF，並將圖片和他做傅立葉，因為要使用Threshold，所以我們這裡一樣算
梯度強度，並選擇峰值後的數值作為基準，如圖上所示，故選擇T = 27，最後再把所有圖印出來