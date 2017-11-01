{extend name="./_common/base"}



{block name="style"}
    <link href="/assets/lib/fuelux/css/tree-style.css" rel="stylesheet">
{/block}


{block name="script"}
    <script type="text/javascript">

        jQuery(function ($) {
            var DataSourceTree = function (options) {
                this._data  = options.data;
                this._delay = options.delay;
            };

            DataSourceTree.prototype = {

                data: function (options, callback) {
                    var self = this;

                    setTimeout(function () {
                        var data = $.extend(true, [], self._data);

                        callback({ data: data });

                    }, this._delay)
                }
            };

            var treeDataSource = new DataSourceTree({
                data: [
                    { name: 'Test tree 1 <div class="tree-actions"></div>', type: 'folder', additionalParameters: { id: 'F11' } },
                    { name: 'Test tree 2 <div class="tree-actions"></div>', type: 'folder', additionalParameters: { id: 'F12' } },
                    { name: '<i class="fa fa-bell-o"></i> Notification', type: 'item', additionalParameters: { id: 'I11' } },
                    { name: '<i class="fa fa-bar-chart-o"></i> Assignment', type: 'item', additionalParameters: { id: 'I12' } }
                ],
                delay: 400
            });

            $('#FlatTree').tree({
                dataSource: treeDataSource,
                loadingHTML: '<img src="/assets/img/spinner.gif"/>'
            });

        });

        

    </script>

{/block}




{block name="page-head"}
    <div class="page-head">
        <h3 class="m-b-less">
            <i class="fa fa-edit"></i> 
            内容列表
        </h3>
        <!--<span class="sub-title">Welcome to Static Table</span>-->
        <div class="state-information">
            <ol class="breadcrumb m-b-less bg-less">
                <li><a href="#">首页</a></li>
                <li><a href="#">内容管理</a></li>
                <li class="active">新建</li>
            </ol>
        </div>
    </div>
{/block}



{block name="wrapper"}
<form class="layui-form" role="form" method="get">

    <div class="row">
        <div class="col-lg-3">

            <section class="panel">
                <header class="panel-heading">
                    栏目列表
                </header>
                <div class="panel-body">
                    <div id="FlatTree" class="tree tree-plus-minus">
                        <div class = "tree-folder" style="display:none;">
                            <div class="tree-folder-header">
                                <i class="fa fa-folder"></i>
                                <div class="tree-folder-name"></div>
                            </div>
                            <div class="tree-folder-content"></div>
                            <div class="tree-loader" style="display:none"></div>
                        </div>
                        <div class="tree-item" style="display:none;">
                            <i class="tree-dot"></i>
                            <div class="tree-item-name"></div>
                        </div>
                    </div>
                </div>
            </section>

        </div>

        <div class="col-lg-9">
        </div>
    </div>

</form>
{/block}





