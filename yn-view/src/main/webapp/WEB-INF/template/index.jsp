<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title>飞思达大数据监控管理后台系统</title>
    <%@ include file="/common/nocahe_tld_resource.jsp" %>
</head>
<body>
<input type="hidden" id="navVal1" value="b"/>
<input type="hidden" id="navVal2" value="c"/>
<div class="b-body">
    <!-- left begin -->
     	 <%@ include file="/common/left/left.jsp"%>
     <!-- left end -->
    <div class="b-wrap">
    	<!-- head begin -->
           <%@ include file="/common/head/head.jsp"%>
        <!-- head end -->
        <div class="b-content">
            <!--<div class="b-content-nav">-->
                <!--<a class="a" href="#">基本信息</a>-->
                <!--<a class="a in" href="#">基本信息</a>-->
                <!--<a class="a" href="#">基本信息</a>-->
                <!--<a class="a" href="#">基本信息</a>-->
                <!--<a class="a" href="#">基本信息</a>-->
            <!--</div>-->
            <div class="b-content-head">
                <div class="l">
                    <span class="s1">系统设置</span>
                    <span class="s2">用户名修改、密码修改、账户设置等
								<shiro:hasAnyRoles name="user">
                                    角色111
                                </shiro:hasAnyRoles>、角色2、角色3
                                
                                <shiro:principal property="realName" />
                                
                    </span>
                </div>
                <div class="r"></div>
                <div class="clearBoth"></div>
            </div>
            <div class="b-content-main">
                <div class="b-form">
                    <div class="ul">
                        <div class="li">
                            <div class="l"><span>用户名</span></div>
                            <div class="c"><input type="text" class="form-input" /></div>
                            <div class="r"><p>错误信息，用户名长度最少100个字以内</p></div>
                            <div class="clearBoth"></div>
                        </div>
                        <div class="li title">
                            <p>*用户名长度最少100个字以内，最长1000个字以内才符合要求最长1000个字以内才符合要求最长1000个字以内才符合要求最长1000个字以内才符合要求最长1000个字以内才符合要求;</p>
                        </div>
                        <div class="li">
                            <div class="l"><span>出生日期</span></div>
                            <div class="c"><input type="text" class="form-date" /></div>
                            <div class="r"><p>错误信息，用户名长度最少100个字以内</p></div>
                            <div class="clearBoth"></div>
                        </div>
                        <div class="li">
                            <div class="l"><span>用户名</span></div>
                            <div class="c"><input type="text" class="form-input" /></div>
                            <div class="r"><p class="error">错误信息，用户名长度最少100个字以内</p></div>
                            <div class="clearBoth"></div>
                        </div>
                        <div class="li">
                            <div class="l"><span>出生日期1</span></div>
                            <div class="c"><input type="text" class="form-date" id="dt"/><div id="dd"></div></div>
                            <div class="r"><p class="error">错误信息，用户名长度最少100个字以内</p></div>
                            <div class="clearBoth"></div>
                        </div>
                        <div class="li">
                            <div class="l"><span>现在几点了</span></div>
                            <div class="c"><input type="text" class="form-time"/></div>
                            <div class="r"><p class="error">错误信息，用户名长度最少100个字以内</p></div>
                            <div class="clearBoth"></div>
                        </div>
                        <div class="li">
                            <div class="l"><span>用户名</span></div>
                            <div class="c">
                                <select class="form-select aaaaa">
                                    <option>请选择</option>
                                    <option>请选择</option>
                                    <option>请选择</option>
                                </select>
                            </div>
                            <div class="r"><p>错误信息，用户名长度最少100个字以内</p></div>
                            <div class="clearBoth"></div>
                        </div>
                        <div class="li">
                            <div class="l"><span>用户名</span></div>
                            <div class="c">
                                <div class="form-checkbox">
                                    <input type="checkbox"/><span>锄禾日当午</span>
                                </div>
                                <div class="form-checkbox">
                                    <input type="checkbox"/><span>锄禾日当午</span>
                                </div>
                                <div class="form-checkbox">
                                    <input type="checkbox"/><span>锄禾日当午</span>
                                </div>
                            </div>
                            <div class="r"><p>错误信息，用户名长度最少100个字以内</p></div>
                            <div class="clearBoth"></div>
                        </div>
                        <div class="li">
                            <div class="l"><span>用户名</span></div>
                            <div class="c">
                                <div class="form-radio">
                                    <input type="radio"/><span>锄禾日当午</span>
                                </div>
                                <div class="form-radio">
                                    <input type="radio"/><span>锄禾日当午</span>
                                </div>
                                <div class="form-radio">
                                    <input type="radio"/><span>锄禾日当午</span>
                                </div>
                            </div>
                            <div class="r"><p>错误信息，用户名长度最少100个字以内</p></div>
                            <div class="clearBoth"></div>
                        </div>
                    </div>
                    <div class="ul submit">
                        <div class="li">
                            <div class="l"></div>
                            <div class="c">
                                <button class="btn btn-green margin r5">确定按钮</button>
                                <button class="btn btn-gray margin r5">确定按钮</button>
                            </div>
                            <div class="r"></div>
                            <div class="clearBoth"></div>
                        </div>
                    </div>
                </div>

                <div class="b-title margin r5">
                    <p>用户名长度最少100个字以内，最长1000个字以内才符合要求</p>
                </div>
                <div class="b-title margin r5 b-title-red">
                    <p>用户名长度最少100个字以内，最长1000个字以内才符合要求</p>
                </div>
                <div class="b-title margin r5 b-title-orange">
                    <p>用户名长度最少100个字以内，最长1000个字以内才符合要求</p>
                </div>
                <div class="b-title margin r5 b-title-blue">
                    <p>用户名长度最少100个字以内，最长1000个字以内才符合要求</p>
                </div>
                <div class="b-title margin r5 b-title-green">
                    <p>用户名长度最少100个字以内，最长1000个字以内才符合要求</p>
                    <p>用户名长度最少100个字以内，最长1000个字以内才符合要求</p>
                </div>
                <div style="text-align: center; padding:10px 10px;">
                    <!--<button class="btn btn-orage disabled">按钮</button>-->
                    <button class="btn r5">按钮</button>
                    <button class="btn btn-orage r5">按钮</button>
                    <button class="btn btn-red r5">按钮</button>
                    <button class="btn btn-green r5">按钮</button>
                    <button class="btn btn-blue r5">按钮</button>
                    <button class="btn btn-black r5">按钮</button>
                    <button class="btn btn-gray r5">按钮</button>
                    <br>
                    <br>
                    <button class="btn ghost r5">按钮</button>
                    <button class="btn ghost btn-orage r5">按钮</button>
                    <button class="btn ghost btn-red r5">按钮</button>
                    <button class="btn ghost btn-green r5">按钮</button>
                    <button class="btn ghost btn-blue r5">按钮</button>
                    <button class="btn ghost btn-black r5">按钮</button>
                    <button class="btn ghost btn-gray r5">按钮</button>
                    <br>
                    <br>
                    <button disabled="disabled" class="btn r5">按钮</button>
                    <button disabled="disabled" class="btn btn-orage r5">按钮</button>
                    <button disabled="disabled" class="btn btn-red r5">按钮</button>
                    <button disabled="disabled" class="btn btn-green r5">按钮</button>
                    <button disabled="disabled" class="btn btn-blue r5">按钮</button>
                    <button disabled="disabled" class="btn btn-black r5">按钮</button>
                    <button disabled="disabled" class="btn btn-gray r5">按钮</button>
                    <br>
                    <br>
                    <button class="btn btn-red r5 big">按钮</button>
                    <button class="btn btn-red r5">按钮</button>
                    <button class="btn btn-red r5 small">按钮</button>
                    <br>
                    <br>
                    <button disabled="disabled" class="btn r5">按钮</button>
                    <button disabled="disabled" class="btn btn-orage r5">按钮</button>
                    <button disabled="disabled" class="btn btn-red r5">按钮</button>
                    <button disabled="disabled" class="btn btn-green r5">按钮</button>
                    <button disabled="disabled" class="btn btn-blue r5">按钮</button>
                    <button disabled="disabled" class="btn btn-black r5">按钮</button>
                    <button disabled="disabled" class="btn btn-gray r5">按钮</button>
                </div>


                <table class="tableSt1" >
                    <tr>
                        <th scope="col">订单号</th>
                        <th scope="col"></th>
                        <th scope="col">消费金额</th>
                        <th scope="col">实付金额</th>
                        <th scope="col">状态</th>
                        <th scope="col">操作</th>
                    </tr>
                    <tr>
                        <td scope="col">1234567890</td>
                        <td scope="col">9999</td>
                        <td scope="col">￥199.00</td>
                        <td scope="col">￥99.00</td>
                        <td scope="col">已支付</td>
                        <td scope="col">已核实</td>
                    </tr>
                    <tr>
                        <td scope="col">
                            <div class="form-checkbox">
                                <input type="checkbox"/><span>锄禾日当午</span>
                            </div>
                        </td>
                        <td scope="col">9999</td>
                        <td scope="col">￥199.00</td>
                        <td scope="col">￥99.00</td>
                        <td scope="col">已支付</td>
                        <td scope="col">
                            <button class="btn btn-red small r3 margin">按钮</button>
                            <button class="btn btn-red small r3 margin">按钮</button>
                        </td>
                    </tr>
                </table>
                <div class="aaaaa">141</div>
                <div class="fun pageStyle"></div>
            </div>
        </div>
    </div>

</div>








<script>
    $.pageLwFn("fun",121,202);
    function fun(num){
        alert(num);
    }
</script>
</body>
</html>