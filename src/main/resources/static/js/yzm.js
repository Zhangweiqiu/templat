//生成随机数
function randomNum(min,max){
    return Math.floor(Math.random()*(max-min)+min);
}

//生成随机颜色RGB分量
function randomColor(min,max){
    var _r = randomNum(min,max);
    var _g = randomNum(min,max);
    var _b = randomNum(min,max);
    return "rgb("+_r+","+_g+","+_b+")";
}

//先阻止画布默认点击发生的行为再执行drawPic()方法
document.getElementById("canvas").onclick = function(e){
    e.preventDefault();
    drawPic();
};