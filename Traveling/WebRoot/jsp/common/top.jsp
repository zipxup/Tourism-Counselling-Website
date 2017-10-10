<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String ip=request.getRemoteAddr();
	System.out.println(ip);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<%=basePath%>css/top.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/top.js"></script>
<script type="text/javascript">
var Hongru = {};
function $(id){return document.getElementById(id)}
Object.prototype.extend = function(target, /*optional*/source, /*optional*/deep) {
    target = target || {};
    var sType = typeof source, i = 1, options;
    if( sType === 'undefined' || sType === 'boolean' ) {
        deep = sType === 'boolean' ? source : false;
        source = target;
        target = this;
    }
    if( typeof source !== 'object' && Object.prototype.toString.call(source).call(source) !== '[object Function]' )
        source = {};
   
    while(i <= 2) {
        options = i === 1 ? target : source;
        if( options != null ) {
            for( var name in options ) {
                var src = target[name], copy = options[name];
                if(target === copy)
                    continue;
                if(deep && copy && typeof copy === 'object' && !copy.nodeType)
                    target[name] = this.extend(src ||
                            (copy.length != null ? [] : {}), copy, deep);
                else if(copy !== undefined)
                    target[name] = copy;
            }
        }
        i++;
    }
    return target;
};
isFunction = function( fn ) {  
    return !!fn && typeof fn != "string" && !fn.nodeName &&  
        fn.constructor != Array && /^[s[]?function/.test( fn + "" );  
} 
Hongru.box = function(){
	var box,mask,content,_content,_height,_width,isPreload,flag = false;
	
	return{
		open:function(con,options){
		//default options
			var defaultOptions = {
				width:300,
				height:200,
				isPre:true,
				time:0,
				title:'巴蜀简介',
				isBar:true,
				isShut:true
			};
			options = options?options:{};
			options = Object.extend(defaultOptions,options);
			
			if(!flag){
				box = document.createElement('div');box.id = "popup-box";
				box.style.cssText = "position:absolute; display:none; background:#fff url(preload.gif) no-repeat 50% 50%; border:5px solid #ccc; z-index:2000";
				mask = document.createElement('div');mask.id = "popup-mask";
				mask.style.cssText = "position:absolute; display:none; top:0; left:0; height:100%; width:100%; background:#000; z-index:1500";
				content = document.createElement('div');content.id = "popup-content";
				content.style.cssText = "background:#fff";
				bar = document.createElement('div'); bar.id = "popup-bar";
				bar.style.cssText = "background:none repeat scroll 0 0 #F7F7F7;border-bottom:4px solid #EEEEEE;border-top:3px solid #F9F9F9;margin-top:2px;position:relative";
				wrapTit = document.createElement('div'); wrapTit.id = "wrap-tit";
				wrapTit.style.cssText = "background:none repeat scroll 0 0 #F3F3F3;border-bottom:5px solid #F1F1F1;border-top:4px solid #F5F5F5;line-height:5px;margin-top:3px;";
				tit = document.createElement('span'); tit.id = "popup-tit";
				tit.style.cssText = "cursor:text;margin-left:10px;position:relative;color:#333;font-size:84%"
				
				shut = document.createElement('a'); shut.id = "popup-shut";
				shut.innerHTML = '×';
				shut.style.cssText = "color:#34538B;cursor:pointer;font-family:Tahoma;font-weight:bold;position:absolute;top:0px;right:10px;text-decoration:none;";
				document.body.appendChild(mask); document.body.appendChild(box); box.appendChild(bar); box.appendChild(content); bar.appendChild(wrapTit); bar.appendChild(shut); wrapTit.appendChild(tit);
				mask.onclick = shut.onclick = Hongru.box.hide;
				//bar.onclick = function(){alert($('sure').id)}
				
				window.onresize = Hongru.box.resize; 
				flag = true;
			}tit.innerHTML = options.title;
			options.isShut?shut.style.display = '':shut.style.display = 'none';
			options.isBar?bar.style.display = '':bar.style.display = 'none';
			if(!options.isPre){
				box.style.width = options.width?options.width+'px':'auto'; 
				box.style.height = options.height?options.height+'px':'auto';
				box.style.backgroundImage = 'none'; 
				content.innerHTML = con;
			}
			else{
				content.style.display = 'none';
				box.style.width = box.style.height = '100px';
			}
			this.mask();
			this.alpha(mask,1,50);
			_content = con; _height = options.height; _width = options.width; isPreload = options.isPre;
			if(options.time){
				setTimeout(function(){Hongru.box.hide()},1000*options.time);
			}
		},
		
		fill:function(con,options){
			if(options.isPre){
				if(!options.width || !options.height){
					var autoWidth = box.style.width, autoHeight = box.style.height;
					content.innerHTML = con;
					box.style.width = options.width?options.width+'px':''; 
					box.style.height = options.height?options.height+'px':'';
					content.style.display = '';
					options.width = parseInt(box.offsetWidth-10); 
					options.height = parseInt(box.offsetHeight-10);
					content.style.display = 'none';
					box.style.width = autoWidth;
					box.style.height = autoHeight;
				}
				else{
					content.innerHTML = con;
					
				}
				this.size(box,options.width,options.height);
			}
			else{
				box.style.backgroundImage = 'none';
			}
		},
		
		hide:function(){
			Hongru.box.alpha(box,-1,0);
		},
		
		resize:function(){
			Hongru.box.pos();
			Hongru.box.mask();
		},
		
		mask:function(){
			mask.style.height = Hongru.page.total(1)+'px';
			mask.style.width=''; mask.style.width = Hongru.page.total(0)+'px';
		},
		
		pos:function(){
			var minTop = (Hongru.page.height()/2)-(box.offsetHeight/2); minTop = minTop<10?10:minTop;
			box.style.top=(minTop+Hongru.page.top())+'px';
			box.style.left=(Hongru.page.width()/2)-(box.offsetWidth/2)+'px';
		},
		
		alpha:function(obj,direction,destination){
			clearInterval(obj.animing);
			if(direction == 1){
				obj.style.opacity=0; obj.style.filter='alpha(opacity=0)';
				obj.style.display='block'; this.pos();
			}
			obj.animing = setInterval(function(){Hongru.box.alphaAnim(obj,destination,direction)},50);
		},
		
		alphaAnim:function(obj,destination,direction){
			var opacity = Math.round(obj.style.opacity*100);
			if(opacity == destination){
				clearInterval(obj.animing);
				if(direction == -1){
					obj.style.display='none';
					obj == box?Hongru.box.alpha(mask,-1,0):content.innerHTML=box.style.backgroundImage='';
				}else{
					curOptions = {width:_width,height:_height,isPre:isPreload}
					obj == mask?this.alpha(box,1,100):Hongru.box.fill(_content,curOptions);
				}
			}else{
				var n=Math.ceil((opacity+((destination-opacity)*.5))); n=n==1?0:n;
				obj.style.opacity=n/100; 
				obj.style.filter='alpha(opacity='+n+')';
			}
		},
		
		size:function(obj,width,height){
			obj = typeof obj == 'object' ? obj : $(obj); 
			clearInterval(obj.sizing);
			var offsetW = obj.offsetWidth, offsetH = obj.offsetHeight,
			otherW = offsetW-parseInt(obj.style.width), otherH = offsetH-parseInt(obj.style.height);
			var wFlag = (offsetW-otherW>width)?0:1, hFlag = (offsetH-otherH>height)?0:1;
			obj.sizing = setInterval(function(){Hongru.box.sizeAnim(obj,width,otherW,wFlag,height,otherH,hFlag)},20);
		},
		
		sizeAnim:function(obj,width,otherW,wFlag,height,otherH,hFlag){
			var objW = obj.offsetWidth-otherW, objH = obj.offsetHeight-otherH;
			if(objW == width && objH == height){
				clearInterval(obj.sizing); 
				box.style.backgroundImage='none'; 
				content.style.display='block';
			}else{
				if(objW!=width){
					var n = objW+((width-objW)*.5); 
					obj.style.width = wFlag?Math.ceil(n)+'px':Math.floor(n)+'px';
					}
				if(objH!=height){
					var n = objH+((height-objH)*.5); 
					obj.style.height = hFlag?Math.ceil(n)+'px':Math.floor(n)+'px';
					}
				this.pos();
				
			}
		},
		
		ask:function(message,options,sureCall,cancelCall){
			var elements = '<div class="wrap-remind" style="text-align:center">'+message+'<p><button id="sure-btn" class="sure-btn">确认</button>  <button id="cancel-btn" class="cancel-btn">取消</button></p></div>';
			Hongru.box.open(elements,options);
			
			function delay(){//回调
			if(($('sure-btn') && $('cancel-btn')) != null){
				clearInterval(checkComplete);
				//alert('yes');
				$('sure-btn').onclick = function(){
					if(isFunction(sureCall)){sureCall.call(this);}
				}
				$('cancel-btn').onclick = function(){
					if(isFunction(cancelCall)){cancelCall.call(this);}
					Hongru.box.hide();
				}
			}}
			var checkComplete = setInterval(delay,100);			
		}
	}
}();
Hongru.page=function(){
	return{
		top:function(){return document.documentElement.scrollTop||document.body.scrollTop},
		width:function(){return self.innerWidth||document.documentElement.clientWidth||document.body.clientWidth},
		height:function(){return self.innerHeight||document.documentElement.clientHeight||document.body.clientHeight},
		total:function(d){
			var b=document.body, e=document.documentElement;
			return d?Math.max(Math.max(b.scrollHeight,e.scrollHeight),Math.max(b.clientHeight,e.clientHeight)):
			Math.max(Math.max(b.scrollWidth,e.scrollWidth),Math.max(b.clientWidth,e.clientWidth))
		}
	}
}();
</script>

<script type="text/javascript">
var pic = '<img  src="large.jpg" alt="" width="500" height="335" />';
var sss='<div style="width:200px;height:200px;background:#999">内容高宽:200px</div>';
	$('img').onclick = function(){Hongru.box.open(sss,{width:0, height:0})};
</script>
<style>
  .bb{
  font-family:STKaiti;
  }
  </style>
</head>
<body>
	<div id="top" class="bb" >
			<span id="span">巴蜀行</span>
			<a id="a1" href="#" onclick = "Hongru.box.open('<select><option>中文(大陆)</option></select><P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp四川地处亚热带，受地势的影响，盆地的气候和川西高原山地气候迥然不同。四川盆地属温润的亚热带季风气候，具有冬暖、春旱、夏热、秋雨的特点。'+
			'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp与中国同纬度的长江中下游地区比较，1月平均温度一般都高出3℃以上，极端最低温度一般高出10℃以上，造成盆地湿气重、雾多、日照少的气候特色。成都一年中阴雨天多达250天至300天。'+
			'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp唐代著名散文家柳宗元在《答韦中立论师道书》中曾提到：“仆往闻庸、蜀之南，恒雨少日，日出则犬吠”。后来人们援用“蜀犬吠日”的成语讽喻少见多怪，却也形象道出了四川盆地的阴雨多、少见太阳的气候特点。'+
			'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp盆地雨量充沛，多集中在夏秋季节的7、8、9月间，龙门山――夹金山迎风的东坡，年降水量1300毫米至1800毫米，是中国的多雨区。'+
			'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp晚唐诗人李商隐的“巴山夜雨涨秋池”的诗句，从另一角度揭示了盆地多夜雨的现象，年平均夜雨率高达60%。“晓看红湿处，花重锦官城”，夜雨昼晴给游客的旅行生活带来几许清新、惬意。</P>'
			,{width:600,height:400})">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;巴蜀地带</a>&nbsp;&nbsp;&nbsp;&nbsp;支持 
							<select name="lanager" size="1"s>
								<option class="bb">中文(大陆)</option>
							</select>
	<hr>
	<div id="nikolp">
		<div id="nikolp_one"><jsp:include page="time.jsp"></jsp:include>
							<b style="padding-left: 550px"></b>
							<%  String account=(String)session.getAttribute("account");
								String name=(String)session.getAttribute("name");
								
									if(name!=null){%>
									<a href="<%=basePath%>servlet/UserServlet?account=<%=account%>"><%=name %></a>
									<span style="font-size: 10px"><a href="<%=basePath%>jsp/common/exit.jsp">注销</a></span>
								<%	}else{ %>
									<a href="<%=basePath%>jsp/login.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登 陆</a>
									<%} %>
		</div>
	</div>
</div>
<br>
</body>
</html>