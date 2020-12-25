# final_project-Yung-Hsuan
final_project-Yung-Hsuan created by GitHub Classroom

我做的是project 17,有兩個程式：squarnew.m和squar2.m。    
程式squarnew.m是造出n×n由中間1向右順時針依序寫下數字的矩陣，以及用image顯示質數點為黑色，合數點為白色的矩陣樣子。程式squar2.m是算出n*n矩陣在不造出矩陣的情況下，算出對角線和反對角線的總和。  

程式squarnew.m:

例如：
 
input：3

output:顯示

7 8 9
 
6 1 2
  
5 4 3
 
和image出來的圖

我先造出一個空矩陣A，判斷輸入的值n是奇數還是偶數後，觀察矩陣四邊從外層到內層之間的關係，並用for迴圈依序從最外層的下面，右邊，上面，左邊寫進去到內層，來製造這n*n矩陣。
然後用mod指令來判斷每一個位子的點是否是質數(判斷質數的部分有上網查資料:https://www.itread01.com/content/1549230666.html)。   如果那個點是質數，就在最先造出的空矩陣X裡的那個位子設為2，否則就設為1。
最後，定義map:[0 0 0]代表RGB都是0，表示黑色；[1 1 1]代表RGB都是1，表示白色，用colormap和image顯示著色後矩陣的樣子。  


程式squar2.m:

例如：

input:3
 
output:25
 
我先觀察對角線和1^2, 2^2, 3^2等之間的關係來算出對角線的總和，然後判斷n是偶數還是奇數後，找出反對角線和1^2, 2^2, 3^2等之間的關係並相加。
