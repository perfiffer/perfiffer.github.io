<!-- Gitalk 评论 start  -->

<!-- Link Gitalk 的支持文件  -->
<link rel="stylesheet" href="https://unpkg.com/gitalk/dist/gitalk.css">
<script src="https://unpkg.com/gitalk@latest/dist/gitalk.min.js"></script> 
<script src="/js/md5.min.js"></script>
<div id="gitalk-container"></div>    
<script type="text/javascript">
  var gitalk = new Gitalk({
    // gitalk的主要参数
    clientID: '{{ site.gitalk.clientID }}',
    clientSecret: '{{ site.gitalk.clientSecret }}',
    repo: '{{ site.gitalk.repo }}',
    owner: '{{ site.gitalk.owner }}',
    admin: ['{{ site.gitalk.admin }}'],
    id: md5(location.pathname),
    distractionFreeMode: true
  });
  gitalk.render('gitalk-container');
</script> 
<!-- Gitalk end -->
