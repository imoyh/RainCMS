{extend name="./_common/base"}



{block name="style"}
    <link href="/assets/plugins/wysiwyg-editor/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
    <link href="/assets/plugins/wysiwyg-editor/css/froala_style.min.css" rel="stylesheet" type="text/css" />
{/block}


{block name="script"}
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

    <div class="row">

        <div class="col-lg-8">
            <section class="panel">
                <header class="panel-heading">
                    内容编辑
                </header>
                <div class="panel-body">
                    <form role="form">
                        <div class="form-group">
                            <div class="col-lg-12">
                                <div class="input-group m-b-10">
                                    <span class="input-group-addon">标题</span>
                                    <input type="text" class="form-control" placeholder="请输入标题">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-lg-12">
                                <p></p>
                                <textarea class="content-editor">Initialize the Froala WYSIWYG HTML Editor on a textarea.</textarea>
                            </div>
                        </div>
                        
                    </form>
                </div>
            </section>
        </div>
        
        <div class="col-lg-4">
        
        </div>
    </div>


{/block}





