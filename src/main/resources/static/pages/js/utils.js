layui.use('element',function () {
    var element = layui.element;
    var active={
        tabAdd:function (url,id,name) {
            element.tabAdd('contentnav', {
                title: name,
                content: '<iframe data-frameid="' + id + '" scrolling="auto" frameborder="0" src="' + url + '" style="width:100%;height: 520px;"></iframe>',
                id: id
            });
            // rightMenu();
            iframeWH();
        },
        tabChange:function (id) {
            element.tabChange('contentnav',id);
        },
        tabDelete:function (id) {
            element.tabDelete('contentnav',id);
        }
    };
    $(".site-url").click(function () {
        var nav=$(this);
        var length = $("ul.layui-tab-title li").length;
        if (length <= 0){
            active.tabAdd(nav.attr("data-url"),nav.attr("data-id"),nav.attr("data-title"));
        }else {
            var isData=false;
            $.each($("ul.layui-tab-title li"),function () {
                if ($(this).attr("lay-id") == nav.attr("data-id")){
                    isData=true;
                }
            });
            if (isData == false){
                active.tabAdd(nav.attr("data-url"),nav.attr("data-id"),nav.attr("data-title"));
            }
            active.tabChange(nav.attr("data-id"));
        }
    });
    function iframeWH() {
        var H = $(window).height()-80;
        $("iframe").css("height",H+"px");
    }
    $(window).resize(function () {
        iframeWH();
    })
})