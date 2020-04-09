<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%--  发起Ajax请求：    --%>
<%--    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery-1.8.3.js"></script>--%>
    <script src="http://code.jquery.com/jquery-2.1.4.min.js" ></script>
    <script type="text/javascript">
        function f1() {
            // type : 请求方式，dataType： 参数类型
            // contextType: 请求的正文类型： "application/json;charset=utf-8
            $.ajax({
                url: '${pageContext.request.contextPath}/studentControllerPage2/getData2.do',
                type: 'POST',
                contextType:'application/json;charset=utf-8',
                success: function (a) {
                    // alert("请求成功：" + a);

                    // 1. 当服务器接收到的响应是对象时，可以直接对象.属性
                    // alert("响应成功，结果为： " + a + " ----" + a.id + a.stuName + a.age);

                    // 2. 当服务器接受到的响应是集合时， 需要遍历 -
                    // $(a).each(function (index, el) {
                    //     alert("遍历的元素为： " + el + "-----" + el.id + "----" + el.stuName + "-----" + el.age);
                    // });

                    // 3. 当服务器接收到的响应是JSON字符串数据时：
                    // 直接字符串转换成JSON对象
                    var objJSON = $.parseJSON(a);
                    alert("objJSON 对象的信息为： " + objJSON.id + "-----" + objJSON.stuName + "-----" + objJSON.age);
                },
                error: function (a) {
                    alert("发生异常" + a);
                }
            });
        }
    </script>
</head>
<body>


    <p onclick="f1()">点我响应数据</p>


</body>
</html>
