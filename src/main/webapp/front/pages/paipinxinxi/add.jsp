<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">


		<div id="app">

			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<div class="data-add-container">

				<form class="layui-form layui-form-pane" lay-filter="myForm">
					
                                                            <div class="layui-form-item" pane>
                        <label class="layui-form-label">拍品分类</label>
                        <div class="layui-input-block">
                            <select name="paipinfenlei" id="paipinfenlei" lay-filter="paipinfenlei">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in paipinfenlei" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">拍品编号：</label>
						<div class="layui-input-block">
							<input v-model="detail.paipinbianhao" type="text" name="paipinbianhao" id="paipinbianhao" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">拍品名称：</label>
						<div class="layui-input-block">
							<input v-model="detail.paipinmingcheng" type="text" name="paipinmingcheng" id="paipinmingcheng" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                                                                            <div class="layui-form-item" pane>
						<label class="layui-form-label">开拍时间：</label>
						<div class="layui-input-block">
							<input type="text" name="kaipaishijian" id="kaipaishijian" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">结束时间：</label>
						<div class="layui-input-block">
							<input type="text" name="jieshushijian" id="jieshushijian" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">起拍价：</label>
						<div class="layui-input-block">
							<input v-model="detail.qipaijia" type="text" name="qipaijia" id="qipaijia" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
                        <label class="layui-form-label">拍品状态</label>
                        <div class="layui-input-block">
                            <select name="paipinzhuangtai" id="paipinzhuangtai" lay-filter="paipinzhuangtai">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in paipinzhuangtai" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">拍品照片：</label>
						<div v-if="detail.paipinzhaopian" class="layui-input-block">
							<img id="paipinzhaopianImg" style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;" :src="detail.paipinzhaopian">
							<input type="hidden" :value="detail.paipinzhaopian" id="paipinzhaopian" name="paipinzhaopian" />
						</div>
						<div class="layui-input-block">
							<button type="button" class="layui-btn btn-theme" id="paipinzhaopianUpload">
								<i class="layui-icon">&#xe67c;</i>上传拍品照片
							</button>
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">拍卖号：</label>
						<div class="layui-input-block">
							<input v-model="detail.paimaihao" type="text" name="paimaihao" id="paimaihao" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">拍卖人：</label>
						<div class="layui-input-block">
							<input v-model="detail.paimairen" type="text" name="paimairen" id="paimairen" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                                                                                                                                        <div class="layui-form-item" pane>
						<label class="layui-form-label">赞：</label>
						<div class="layui-input-block">
							<input v-model="detail.thumbsupnum" type="text" name="thumbsupnum" id="thumbsupnum" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">踩：</label>
						<div class="layui-input-block">
							<input v-model="detail.crazilynum" type="text" name="crazilynum" id="crazilynum" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">最近点击时间：</label>
						<div class="layui-input-block">
							<input type="text" name="clicktime" id="clicktime" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">点击次数：</label>
						<div class="layui-input-block">
							<input v-model="detail.clicknum" type="text" name="clicknum" id="clicknum" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                            
                                                                                                                                                                                    <div class="layui-form-item" pane>
						<label class="layui-form-label">宝贝简介：</label>
						<div class="layui-input-block">
							<textarea name="baobeijianjie" id="baobeijianjie">请输入宝贝简介</textarea>
						</div>
					</div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
					<div class="layui-form-item">
						<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
							<button class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					dataList: [],
                    detail: {
                                                                        paipinfenlei: '',
                                                                                                paipinbianhao: genTradeNo(),
                                                                                                paipinmingcheng: '',
                                                                                                baobeijianjie: '',
                                                                                                kaipaishijian: '',
                                                                                                jieshushijian: '',
                                                                                                qipaijia: '',
                                                                                                paipinzhuangtai: '',
                                                                                                paipinzhaopian: '',
                                                                                                paimaihao: '',
                                                                                                paimairen: '',
                                                                                                sfsh: '',
                                                                                                shhf: '',
                                                                                                thumbsupnum: '',
                                                                                                crazilynum: '',
                                                                                                clicktime: '',
                                                                                                clicknum: '',
                                                                    },
                    										paipinfenlei: [],
																																																																																paipinzhuangtai: [],
																																																																																																									centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

			
			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
                var tinymce = layui.tinymce

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" src="' + item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						carousel.render({
							elem: '#swiper',
							width: swiper.width,height:swiper.height,
							arrow: swiper.arrow,
							anim: swiper.anim,
							interval: swiper.interval,
							indicator: "none"
						});
					}
				});

                								http.request(`option/paipinfenlei/fenlei`,'get',{},(res)=>{
					vue.paipinfenlei = res.data
				});
				form.on('select(paipinfenlei)', (data) => {
					console.log(data.value);
					http.request('follow/paipinfenlei/fenlei', 'get', {
						columnValue: data.value
					}, function(res) {
																																																																																																																																																																																																																							})
				});
                																								                var edit = tinymce.render({
                    elem: "#baobeijianjie",
                    height: 600,
                    images_upload_handler: function(blobInfo, succFun, failFun) {
                        var xhr, formData;
                        var file = blobInfo.blob(); //转化为易于理解的file对象
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', http.baseurl + 'file/upload');
                        xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
                        xhr.onload = function() {
                            var json;
                            if (xhr.status != 200) {
                                failFun('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.file != 'string') {
                                failFun('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            succFun(http.baseurl + '/upload/' + json.file);
                        };
                        formData = new FormData();
                        formData.append('file', file, file.name); //此处与源文档不一样
                        xhr.send(formData);
                    }
                }, (opt) => {

                });
																laydate.render({
					elem: '#kaipaishijian',
					type: 'datetime'
				});
                												laydate.render({
					elem: '#jieshushijian',
					type: 'datetime'
				});
                																				vue.paipinzhuangtai = '待开始,已开始,已结束'.split(',')
																// 上传图片
				var paipinzhaopianUpload = upload.render({
					//绑定元素
					elem: '#paipinzhaopianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = http.baseurl + 'upload/' + res.file;
							jquery('#paipinzhaopian').val(url);
							jquery('#paipinzhaopianImg').attr('src', url)
                            vue.detail.paipinzhaopian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
																																																																laydate.render({
					elem: '#clicktime',
					type: 'datetime'
				});
                																
                                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
						vue.detail[`${key}`] = data[`${key}`]
					}
				});
                
                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var key in obj){
						vue.detail[`${key}`] = obj[`${key}`]
					}
				}
				
                																																																																																																																																								
				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
					                    					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					var baobeijianjie = tinymce.get('#baobeijianjie').getContent()
					data.baobeijianjie = baobeijianjie;
										                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                        if(!isIntNumer(data.qipaijia)){
                        layer.msg('起拍价应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                        if(!isIntNumer(data.thumbsupnum)){
                        layer.msg('赞应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                                        if(!isIntNumer(data.crazilynum)){
                        layer.msg('踩应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                                                                                                                                                                					                                        if(!isIntNumer(data.clicknum)){
                        layer.msg('点击次数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            
					// 跨表计算
					                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        					
                    // 比较大小
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					
					// 提交数据
					http.requestJson('paipinxinxi' + '/add', 'post', data, function(res) {
					 	layer.msg('提交成功', {
					 		time: 2000,
					 		icon: 6
					 	}, function() {
					 		back();
						});
					 });

					return false
				});

			});
		</script>
	</body>
</html>
