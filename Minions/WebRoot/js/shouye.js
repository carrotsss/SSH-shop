// JavaScript Document
function moveon(){
	
	var imgs = document.getElementById("img_tb").getElementsByTagName("img");
	for(var i=0;i<imgs.length;i++){
		imgs[i].filters.alpha.opacity=10;
		}
	var obj = event.srcElement;
	obj.filters.alpha.opacity=100;
}
function moveout(){
	
	var imgs = document.getElementById("img_tb").getElementsByTagName("img");
	for(var i=0;i<imgs.length;i++){
		imgs[i].filters.alpha.opacity=85;
		}
}