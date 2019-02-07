<!-- Gitalk 评论 start  -->

<!-- Link Gitalk 的支持文件  -->
<link rel="stylesheet" href="https://unpkg.com/gitalk/dist/gitalk.css">
<script src="https://unpkg.com/gitalk@latest/dist/gitalk.min.js"></script> 
<div id="gitalk-container"></div>    
<script type="text/javascript">
    var gitalk = new Gitalk({
    // gitalk的主要参数
    clientID: '1055895b8e9a5c3ba8d8',
    clientSecret: 'b4a872cde2f08bab4d625c0dd152f75c0fc5606d',
    repo: 'perfiffer.github.io',
    owner: 'perfiffer',
    admin: ['perfiffer'],
    id: location.pathname,
    distractionFreeMode: true
  });
    gitalk.render('gitalk-container');
</script> 
<!-- Gitalk end -->
