<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">

		<div class="login-bg" style="background-image: url(../../img/banner.jpg);"></div>

		<div class="login-container">
			<!-- 标题 -->
			<h2 class="index-title" style="width: 480px;">USER / REGISTER</h2>
			<div class="line-container">
				<p class="line"> 拍品信息注册 </p>
			</div>
			<!-- 标题 -->
			<form class="layui-form login-form">
				
                                                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">拍品名称：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="paipinmingcheng" name="paipinmingcheng" placeholder="请输入拍品名称" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">起拍价：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="qipaijia" name="qipaijia" placeholder="请输入起拍价" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">拍卖号：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="paimaihao" name="paimaihao" placeholder="请输入拍卖号" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">拍卖人：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="paimairen" name="paimairen" placeholder="请输入拍卖人" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">赞：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="thumbsupnum" name="thumbsupnum" placeholder="请输入赞" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">踩：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="crazilynum" name="crazilynum" placeholder="请输入踩" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">点击次数：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="clicknum" name="clicknum" placeholder="请输入点击次数" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                
				<div class="layui-form-item">
					<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
						<button class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
			<div class="bottom-container">
				<a href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
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

		<script>
			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;

				var tablename = http.getParam('tablename');
								
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
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
                                                                                                                                                                http.requestJson(tablename + '/register', 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
