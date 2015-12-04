<%-- 
    Document   : join
    Created on : 2015-11-1, 15:48:00
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="utf-8" />
        <title>Lockbur-更多壁纸，更多分享</title>
        <jsp:include page="/WEB-INF/views/portal/common/head_and_css.jsp"/>
        <!--百度统计-->
        <script>
            var _hmt = _hmt || [];
            (function () {
                var hm = document.createElement("script");
                hm.src = "//hm.baidu.com/hm.js?15dcd777f63423d27dbca739598638ed";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();
        </script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/portal/common/navbar.jsp"/>
        <section class="vbox">
            <!---header-->
            <%--<jsp:include page="/WEB-INF/views/portal/common/header.jsp"/>--%>
            <!---header //END-->
            <section class="w-f-md">
                <section class="container scrollable padder-v">
                    <section class="hbox stretch">
                        <!-- .aside -->
                        <aside class="aside b-r b-dark">
                            <section class="vbox">
                                <header class="header b-b navbar">
                                    <a class="btn btn-link pull-right visible-xs" data-toggle="class:show" data-target=".nav-primary">
                                        <i class="fa fa-bars"></i>
                                    </a>
                                    <a href="${pageContext.request.contextPath}/help" class="navbar-brand">帮助中心</a>
                                </header>
                                <section class="scrollable">
                                    <nav class="nav-primary hidden-xs nav-docs">
                                        <ul class="nav">
                                            <li><a href="${pageContext.request.contextPath}/help/rules">使用规则</a></li>
                                            <li><a href="${pageContext.request.contextPath}/help/contact">联系我们</a></li>
                                            <li><a href="#">服务条款</a></li>
                                            <li><a href="${pageContext.request.contextPath}/help/team">团队成员</a></li>
                                            <li><a href="${pageContext.request.contextPath}/help/join">加入我们</a></li>
                                        </ul>
                                    </nav>
                                </section>
                            </section>
                        </aside>
                        <!-- /.aside -->
                        <section id="content">
                            <section class="vbox">
                                <section class="scrollable">
                                    <section  id="docs">
                                        <div class="clearfix padder">
                                            <h3 class="text-warning">Lockbur使用协议</h3>
                                            <h5 class="m-t-lg">在您使用本网站之前,请您认真阅读网站浏览的有关规定和法律责任.</h5>
                                            <h3>1. 使用条款的接受</h3>
                                            <blockquote class="b-l b-dark text-sm">
                                                <p>请您在使用本网站前仔细阅读以下各项使用条款（以下简称"条款"）。通过访问和/或使用本网站，您表示同意接受本条款的所有条件和条款。如果您不愿接受本条款的全部条件和条款，请您不要访问或使用本网站。</p>
                                            </blockquote>

                                            <h3>2. 变更和修改</h3>
                                            <blockquote class="b-l b-dark text-sm">
                                                <p>Lockbur网站有权随时对本条款进行修改，并且一旦发生条款的变动，Lockbur网站将在相关页面上提示修改的内容；用户如果不同意本条款的修改，可以放弃使用或访问本网站或取消已经获得的服务；如果用户选择在本条款变更后继续访问或使用本网站，则视为用户已经接受本条款的修改。</p>
                                            </blockquote>

                                            <h3>3. 服务说明</h3>
                                            <blockquote class="b-l b-dark text-sm">
                                                <p>Lockbur网站是一个向广大用户提供高清壁纸审核工具和高清壁纸分享工具的服务平台，本身不直接提供内容。
                                                    Lockbur网站运用自己的系统通过互联网向用户提供服务，除非Lockbur网站另有明确规定或同用户书面达成新的协议，增强或强化目前服务的任何新功能，包括新产品以及新增加的服务，均无条件地适用本条款。
                                                    Lockbur网站不保证服务一定会满足用户的使用要求，也不保证服务不会被中断，对服务的及时性、安全性、准确性也不作担保。</p>
                                            </blockquote>

                                            <h3>4. 用户行为</h3>
                                            <blockquote class="b-l b-dark text-sm">
                                                <p>
                                                    用户注册成功后，便成为Lockbur网站的合法用户，会得到一个密码和账号。用户需采取合理措施维护其密码和账号的安全。用户对利用该密码和账号所进行的一切活动负全部责任；由该等活动所导致的任何损失或损害由用户承担，Lockbur网站不承担任何责任。 
                                                    用户的密码和账号遭到未授权的使用或发生其他任何安全问题，用户应当立即通知Lockbur网站。用户在每次连线结束，应结束账号使用。否则用户可能得不到Lockbur网站的安全保护。
                                                    用户同意遵守
                                                </p>

                                                <p>
                                                    •《中华人民共和国保守国家秘密法》<br/>
                                                    •《中华人民共和国著作权法》<br/>
                                                    •《互联网电子公告服务管理规定》<br/>
                                                    •.《信息网络传播权保护条例》<br/>
                                                    •《中华人民共和国计算机信息系统安全保护条例》<br/>
                                                    •《计算机软件保护条例》
                                                </p>
                                                <p>
                                                    等有关的法律、法规以及政府部门的规定。在任何情况下，Lockbur网站如果认为用户的行为可能违反上述法律、法规，Lockbur网站可以在任何时候，有权不经事先通知终止向该用户提供服务。 
                                                    Lockbur网站欢迎用户举报任何违反上述法律或侵犯他人权利的上传内容，一经发现违法或侵权的上传内容，Lockbur网站将根据相关的法律规定进行删除。
                                                    禁止用户从事以下行为： 
                                                </p>
                                                <div>
                                                    <p>1.上载、张贴、发送电子邮件或传送包含任何反对宪法所确定的基本原则、危害国家安全、泄露国家秘密、颠覆国家政权、破坏国家统一、破坏民族团结、损害 国家荣誉和利益、煽动民族仇恨、民族歧视、破坏民族团结、破坏国家宗教政策、宣扬邪教和封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪、侮辱 或者诽谤他人，侵害他人合法权益的等法律、行政法规禁止的内容或其他另人反感的包括但不限于资讯、资料、文字、软件、音乐、照片、图形、信息或其他资料 （以下简称内容）。</p>
                                                    <p>2.以任何方式危害未成年人。</p>
                                                    <p>3.冒充任何人或机构，或以虚伪不实的方式谎称或使人误认为与任何人或任何机构有关。</p>
                                                    <p>4.伪造标题或以其他方式操控识别资料，使人误认为该内容为Lockbur网站所传送。</p>
                                                    <p>5.将无权传送的内容（例如内部资料、机密资料）进行上载、张贴、发送电子邮件或以其他方式传送。</p>
                                                    <p>6.将侵犯任何人的专利、商标、著作权、商业秘密或其他专属权利之内容加以上载、张贴、发送电子邮件或以其他方式传送。</p>
                                                    <p>7.将广告函件、促销资料、"垃圾邮件"等，加以上载、张贴、发送电子邮件或以其他方式传送。供前述目的使用的专用区域除外。</p>
                                                    <p>8.将有关干扰、破坏或限制任何计算机软件、硬件或通讯设备功能的软件病毒或其他计算机代码、档案和程序之资料，加以上载、张贴、发送电子邮件或以其他方式传送。</p>
                                                    <p>9.干扰或破坏本网站服务或与本网站服务相连的服务器和网络，或不遵守本网站使用之规定。</p>
                                                    <p>10.故意或非故意违反任何相关的中国法律、法规、规章、条例等其他具有法律效力的规范。</p>
                                                    <p>11.用户应当对其提供的经由本网站上载、张贴、发送电子邮件或传送的内容承担全部责任，对于用户经由本网站而传送的内容，Lockbur网站不保证前述其合法性、正当性、准确性、完整性或品质。用户在接受本网站服务时，有可能会接触到令人不快、不适当或令 人厌恶的内容。</p>
                                                    <p>12.其他法律程序所规定。</p>
                                                    <p>13.本用户协议条款规定。</p>
                                                    <p>14.其他Lockbur网站认为有必要的情况。。</p>
                                                </div>
                                                <p>在任何情况下</p>
                                                <p> 
                                                    • Lockbur网站均不对任何内容承担任何责任，包括但不限于任何内容发生任何错误或纰漏以及衍生的任何损失或损害。<br/>
                                                    • Lockbur网站有权（但无义务）自行拒绝或删除经由本网站提供的任何内容。用户使用上述内容，应自行承担风险。<br/>
                                                    • Lockbur网站有权利在下述情况下，对内容进行保存或披露。 <br/>
                                                    • Lockbur网站不对用户所发布信息的删除或储存失败承担责任。<br/>
                                                    • Lockbur网站有权判断用户的行为是否符合本网站使用条款之规定，如果Lockbur网站认为用户违反了法律规定或者违背了本用户协议的规定，Lockbur网站有终止向其提供网站服务的权利。
                                                </p>
                                            </blockquote>
                                            <h3>5. 用户隐私权制度</h3>
                                            <blockquote class="b-l b-dark text-sm">
                                                <p>
                                                    当用户注册Lockbur网站的服务时，用户应当提供个人信息。虾米网收集个人信息的目的是为用户提供尽可能多的个人化网上服务。Lockbur网站不会在未经合法用户授权时，公开、编辑或透露其个人信息及保存在Lockbur网站中的非公开内容，除非有下列情况：<br/>
                                                    • 法律程序所规定;<br/>
                                                    • 本用户协议条款规定;<br/>
                                                    • 其他虾米网认为有必要的情况。
                                                </p>
                                            </blockquote>
                                            <h3>6. 关于第三方链接</h3>
                                            <blockquote class="b-l b-dark text-sm">
                                                <p>
                                                    本网站服务可能会提供与其他国际互联网网站或资源进行链接。对于前述网站或资源是否可以利用，本网站不承担担保责任。因用户使用上述网站或资源所产生的损失或损害，本网站也不负担任何责任。
                                                </p>
                                            </blockquote>
                                            <h3>7. 知识产权</h3>
                                            <blockquote class="b-l b-dark text-sm">
                                                <p>
                                                    • Lockbur网站对网站服务及本网站所使用的软件所包含的受知识产权或其他法律保护的资料享有相应的权利；除用户依法享有版权内容之外，本网站的整体内容版权归Lockbur网站所有。 <br/>
                                                    • 经由Lockbur网站传送的文件及其它内容，受到著作权法、商标法、专利法或其他法律的保护；除该等文件及其它内容上载的用户所享有的版权，未经Lockbur网站明示授权许可，其他用户不得进行修改、出租、散布或衍生其他作品。<br/>
                                                    • 用户对本网站所使用的软件有非专属性使用权，但不得自行或许可任何第三方复制、修改、出售或衍生产品。 <br/>
                                                    • 本网站所有设计图样以及其他图样、产品及服务名称，均为Lockbur网站所享有的商标、标识。任何人不得使用、复制或用作其他用途。<br/>
                                                    • 除了本协议中明确约定由用户或内容提供商享有版权的内容，Lockbur网站包含的全部信息和资料，无论是文字、图片、图表、数据库或其他形式。<br/>
                                                    • 用户可依照本协议的约定以个人欣赏之目的使用上述信息和材料，但未经Lockbur网站另行书面同意，不得擅自使用、出租、出借、复制、修改、转载、汇编、发表或出版，不得借助Lockbur网站和Lockbur网站软件开发与之相关的衍生产品、作品、服务、插件、外挂程序或音频数据库，亦不得从Lockbur网站中提取或抓取数据或资料。<br/>
                                                </p>
                                            </blockquote>
                                            <h3>8. 终止业务</h3>
                                            <blockquote class="b-l b-dark text-sm">
                                                <p>
                                                    无论是否有原因，用户或是本网站都有权在任何时间终止这些条件。一旦本网站终止了这些条款，本网站将按照你在注册时提供的电子邮件地址发出通知，用户将被视为在一个小时内收到了通知。终止将于该时间生效。用户有责任向本网站通知有关用户的电子邮件地址的任何改变。当终止生效时，用户须销毁从本网站所获得的所有资料和信息以及其复制件。
                                                </p>
                                            </blockquote>
                                            <h3>9. 法律的适用和管辖</h3>
                                            <blockquote class="b-l b-dark text-sm">
                                                <p>
                                                    本使用条款的生效、履行、解释及争议的解决均适用中华人民共和国法律，与本条款有关的争议提交由Lockbur网站所在地的法院管辖。本服务条款因与中华人民共和国现行法律相抵触而导致部分无效，不影响其他部分的效力。
                                                </p>
                                            </blockquote>
                                        </div>
                                    </section>
                                </section>
                            </section>
                        </section>
                    </section>         
                </section>    
            </section>
            <footer class="footer bg-black dker">
                <jsp:include page="/WEB-INF/views/portal/common/footer.jsp"/>
            </footer>
        </section>
    </body>
    <script src="${appBean.assetsUrl}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <!--<script src="${appBean.assetsUrl}/assets/js/bootstrap/bootstrap.min.js"></script>-->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="${appBean.assetsUrl}/assets/js/vegas/vegas.js"></script>
    <script type="text/javascript">
            $(document).ready(function () {
                //背景图片
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${appBean.assetsUrl}/assets/images/background4.jpg'}
                    ]
                });
            });
    </script>
</html>