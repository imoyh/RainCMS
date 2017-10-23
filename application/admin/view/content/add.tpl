{extend name="./_common/base"}



{block name="style"}
    <!--bootstrap-fileinput-master-->
    <link rel="stylesheet" type="text/css" href="/assets/js/bootstrap-fileinput-master/css/fileinput.css" />

{/block}


{block name="script"}
    

    <!--bootstrap-fileinput-master-->
    <script type="text/javascript" src="/assets/js/bootstrap-fileinput-master/js/fileinput.js"></script>
    <script type="text/javascript" src="/assets/js/bootstrap-fileinput-master/js/locales/zh.js"></script>
    <script type="text/javascript" src="/assets/js/file-input-init.js"></script>

    <script type="text/javascript" src="/assets/plugins/tinymce/tinymce.min.js"></script>
    <script>
    tinymce.init({
        selector: 'textarea',
        height: 500,
        theme: 'modern',
        plugins: 'print preview fullpage searchreplace autolink directionality visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists textcolor wordcount imagetools contextmenu colorpicker textpattern',
        toolbar1: 'formatselect | bold italic strikethrough forecolor backcolor | link | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat',
        image_advtab: true,
        language: 'zh_CN',
        templates: [
            { title: 'Test template 1', content: 'Test 1' },
            { title: 'Test template 2', content: 'Test 2' }
        ],
        content_css: [
            '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
            '//www.tinymce.com/css/codepen.min.css'
        ]
    });
    </script>

{/block}




{block name="page-head"}
    <div class="page-head">
        <h3 class="m-b-less">
            <i class="fa fa-edit"></i> 
            新建内容
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
<form role="form" method="get">
    <div class="row">

        <div class="col-lg-9">
            <section class="panel">
                <header class="panel-heading">
                    内容编辑
                </header>
                <div class="panel-body">
                    <div class="form-group">
                        <div class="col-lg-12">
                            <div class="input-group m-b-10">
                                <span class="input-group-addon">标题</span>
                                <input type="text" name="title" class="form-control" placeholder="请输入标题">
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="col-lg-12">
                            <p></p>
                            <textarea name="content" class="content-editor">Initialize the Froala WYSIWYG HTML Editor on a textarea.</textarea>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        
        <div class="col-lg-3">
            <section class="panel">
                <header class="panel-heading">
                    附件设置
                </header>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-lg-12">
                                <input id="file-4" class="file" type="file" multiple=true>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="panel">
                <header class="panel-heading">
                    发布设置
                </header>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-lg-12">
                                <div class="input-group">
                                    <span class="input-group-addon">选择分类</span>
                                    <select class="form-control" name="cid">
                                        <option></option>
                                        <optgroup label="Alaskan/Hawaiian Time Zone">
                                            <option value="AK">Alaska</option>
                                        </optgroup>
                                        <optgroup label="Pacific Time Zone">
                                            <option value="CA">California</option>
                                        </optgroup>
                                        <optgroup label="Mountain Time Zone">
                                            <option value="WY">Wyoming</option>
                                        </optgroup>
                                        <optgroup label="Central Time Zone">
                                            <option value="WI">Wisconsin</option>
                                        </optgroup>
                                        <optgroup label="Eastern Time Zone">
                                            <option value="CT">Connecticut</option>
                                        </optgroup>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-12">
                                <div class="input-group">
                                    <span class="input-group-addon">选择模型</span>
                                    <select class="form-control" name="cid">
                                        <option></option>
                                        <optgroup label="Alaskan/Hawaiian Time Zone">
                                            <option value="AK">Alaska</option>
                                            <option value="HI">Hawaii</option>
                                        </optgroup>
                                        <optgroup label="Pacific Time Zone">
                                            <option value="CA">California</option>
                                        </optgroup>
                                        <optgroup label="Mountain Time Zone">
                                            <option value="AZ">Arizona</option>
                                            <option value="CO">Colorado</option>
                                        </optgroup>
                                        <optgroup label="Central Time Zone">
                                            <option value="AL">Alabama</option>
                                        </optgroup>
                                        <optgroup label="Eastern Time Zone">
                                            <option value="CT">Connecticut</option>
                                        </optgroup>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-12">
                                <div class="input-group">
                                    <span class="input-group-addon">发表时间</span>
                                    <input type="datetime-local" class="form-control"/> 
                                </div>
                            </div>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> 保存草稿</button>
                            <button type="submit" class="btn btn-info"><i class="fa fa-eject"></i> 立即发布</button>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>


</form>
{/block}





