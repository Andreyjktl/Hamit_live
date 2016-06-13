<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="ru"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="ru"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="ru"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="ru"> <!--<![endif]-->
<head>
<meta name="robots" content="{if $page.noindex}none{else}all{/if}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="{$page.description|escape}" />
<meta name="keywords" content="{$page.keywords|escape}" />
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
<meta name='wmail-verification' content='aafa46029523425f1a8256a01b6b7965' />
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>{$page.title}</title>
<link href="images/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="images/styles.scss.css" rel="stylesheet" type="text/css" />
<link href="/g/css/styles_articles_tpl.css" rel="stylesheet" type="text/css" />
{if $site.settings.sef_url && $smarty.server.QUERY_STRING && !$page.noindex}
<link rel="canonical" href="http://{$smarty.server.HTTP_HOST}{$smarty.server.SCRIPT_URL}">
{/if}
{$common_js}
<script src="/g/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="images/modernizr-2.5.3.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">
							Путь к успеху
						</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							{foreach from=$menu2 item=e name=top}
							<li {if $e.page_id==$page.page_id}class="active"{/if}><a {if $e.blank}target="_blank"{/if} href="{if $e.page_id == $site.page_id}/{else}{$e.url}{/if}">{$e.name}</a></li>
							{/foreach}
						</ul>

						<ul class="nav navbar-nav navbar-right">
							<li><a href=""></span>НАШ ТЕЛЕФОН: 8(7212)400733</a></li>

						</ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
			<div class="jumbotron">
				  <div class="container">
						<a href="http://{$smarty.server.HTTP_HOST}"><img src="images/logo.png" alt=""></a>
						{if $slogan.body!=""}
		        <div class="slogan">
		        	{$slogan.body}
		        </div>
		        {/if}

						{if $online_but.link!=""}
						<div class="online-but">
							<a href="{$online_but.link}">
								<img src="images/online-but.png" alt="">
							</a>
						</div>
						{/if}

				  </div>
			</div>
	<div class="row" style="background-color:white;     padding-top: 20px;">
			<!-- {if $page.main}
		{if $edit_block.title!="" && $edit_block.body!=""}
		<div class="edit-block-wrapper">
			<div class="edit-block">
				<div class="title">{$edit_block.title}</div>
				<div class="body">
					<div class="image">
						<img src="images/rb.jpg" alt="">
					</div>
					{$edit_block.body}
				</div>
			</div>
		</div>
		{/if}
		{/if} -->

			{if !$page.main}
			<div class="col-md-4 col-md-offset-1">
							<div class="logo3">
	   	            <a href="http://{$smarty.server.HTTP_HOST}"><img src="images/logo3.png" class="img-responsive" alt=""></a>
	   	        </div>
				{if !empty($menu)}
				{include file="global:simplemenu.tpl" data=$menu class="menu-left"}
				{/if}
			</div>
		<div class="col-md-6">
					<h1>{$h1|default:$page.seo_h1|default:$page.h1}</h1>
			{/if}
			{if $page.main}

		<div class="col-md-10  col-md-offset-1">
					<h1>{$h1|default:$page.seo_h1|default:$page.h1}</h1>
			{/if}
