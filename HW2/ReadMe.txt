第一題:
用imhist去轉出img的histogram，並且按照histogram equalization的公式，先求出其CDF，再將他標準化，最後
乘上強度(L-1 = 255)獲得Transformation function，最後再把img帶入該函數求出enhance img。

第二題:
按照題目，需要由使用者輸入laplacian mask的值，並且用imfilter去和原圖形做convolution，輸出會強調邊緣
的mask，並在將得到的mask和img相疊加，會得到細節增強的img
第三題
按照題目，需要由使用者輸入average mask的值，並且用imfilter去和原圖形做convolution，輸出blur的mask，
再來將原圖形減掉blur mask會得到gmask，並在將得到的gmask乘上k倍(4.5)與原圖形相加，變會得到更加平滑的圖
