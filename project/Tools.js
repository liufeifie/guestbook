/**
 * Created by OracleOAEC on 2016/10/19.
 */
function Tools(){

}
Tools.prototype.addZero=function(_num){
    if(_num<10){
        _num="0"+_num;
    }else{
        _num=_num;
    }
    return _num;
}
Tools.prototype.getWindowSize=function(){
    return {
        width:window.innerWidth||document.documentElement.clientWidth,
        height:window.innerHeight||document.documentElement.clientWidth
    }
}
Tools.prototype.getScrollSize=function(){
    return{
        top:document.body.scrollTop||document.documentElement.scrollTop,
        left:document.body.scrollLeft||document.documentElement.scrollLeft
    }
}
Tools.prototype.getId=function(_id){
    return document.getElementById(_id);
}
//修剪前后的空格
Tools.prototype.trim=function(_content){
    var pattern=/^\s*(.+?)\s*$/g;
    _content=_content.replace(pattern,"$1");
    return _content;
}
/*邮箱验证*/
Tools.prototype.valid_email=function(_content){
    var pattern=/^[a-z0-9]+([\._-][a-z0-9]+)?@[a-z0-9]+([_-][a-z0-9]+)?\.[a-z]{2,9}(\.[a-z]{2,4})?$/i;
    var result=null;
    if(pattern.test(_content)){
        result=true;
    }else{
        result=false;
    }
    return result;
}
Tools.prototype.valid_pwd=function(_content){
    var num=0;
    //如果密码不是数字
    if(!/[\d]/.test(_content)){
        num+=1;
    }
    if(!/[a-z]/.test(_content)){
        num+=1;
    }
    if(!/[A-Z]/.test(_content)){
        num+=1;
    }
    /*特殊字符*/
    if(!/[\W]/.test(_content)){
        num+=1;
    }
    return num;
}
//元素居中
Tools.prototype.center=function(_element,_elementSize){
    _element.style.left= (this.getWindowSize().width-_elementSize.width)/2+"px";
    _element.style.top= (this.getWindowSize().height-_elementSize.height)/2+"px";
}

