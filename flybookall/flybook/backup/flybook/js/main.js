var t = n = 0, count;
$(document).ready(function(){
$(".li2 ul").hide(); 

$(".li2").mouseenter(function(){  
$(this).find("ul").show();//addClass("lishow");
$(this).css({ 'background' : '#1376c9 url(/flybook/static/navbc2.gif) repeat-x'}); 
 
});
$(".li2").mouseleave(function(){
$(".li2 ul").hide();
$(this).css({ 'background' : '#1376c9 url(/flybook/static/navbc1.gif) repeat-x'}); 

});

count=$("#maintopmiddle_list a").length;
$("#maintopmiddle_list a:not(:first-child)").hide();
$("#maintopmiddle_info").html($("#maintopmiddle_list a:first-child").find("img").attr('alt'));
$("#maintopmiddle_info").click(function(){window.open($("#maintopmiddle_list a:first-child").attr('href'), "_blank")});
$("#maintopmiddle li").click(function() {
var i = $(this).text() - 1;//��ȡLiԪ���ڵ�ֵ����1��2��3��4
n = i;
if (i >= count) return;
$("#maintopmiddle_info").html($("#maintopmiddle_list a").eq(i).find("img").attr('alt'));
$("#maintopmiddle_info").unbind().click(function(){window.open($("#maintopmiddle_list a").eq(i).attr('href'), "_blank")})
$("#maintopmiddle_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
document.getElementById("maintopmiddle").style.background="";
$(this).toggleClass("on");
$(this).siblings().removeAttr("class");
});
t = setInterval("showAuto()", 4000);
$("#maintopmiddle").hover(function(){clearInterval(t)}, function(){t = setInterval("showAuto()", 4000);});
});

function showAuto()
	{
		n = n >=(count - 1) ? 0 : ++n;
		$("#maintopmiddle li").eq(n).trigger('click');
	}
	

//ʹ��divʱ���뱣֤colee_left2��colee_left1����ͬһ����.
/*var speed=30//�ٶ���ֵԽ���ٶ�Խ��
var colee_left2=document.getElementById("colee_left2");
var colee_left1=document.getElementById("colee_left1");
var colee_left=document.getElementById("colee_left");
colee_left2.innerHTML=colee_left1.innerHTML
function Marquee3(){
if(colee_left2.offsetWidth-colee_left.scrollLeft<=0)//offsetWidth �Ƕ���Ŀɼ����
colee_left.scrollLeft-=colee_left1.offsetWidth//scrollWidth �Ƕ����ʵ�����ݵĿ��������߿��
else{
colee_left.scrollLeft++
}
}
var MyMar3=setInterval(Marquee3,speed)
colee_left.onmouseover=function() {clearInterval(MyMar3)}
colee_left.onmouseout=function() {MyMar3=setInterval(Marquee3,speed)}*/