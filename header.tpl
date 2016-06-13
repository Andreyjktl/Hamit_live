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
<title>{$page.title}</title>
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
	<div class="site-wrapper {if !$page.main} site-wrap{/if}">
		<div class="header">
			<div class="logo">
	            <a href="http://{$smarty.server.HTTP_HOST}"><img src="images/logo.png" alt=""></a>
	        </div>
	        {if $online_but.link!=""}
	        <div class="online-but">
	        	<a href="{$online_but.link}">
	        		<img src="images/online-but.png" alt="">
	        	</a>
	        </div>
	        {/if}
	        {if $slogan.body!=""}
	        <div class="slogan">
	        	{$slogan.body}
	        </div>
	        {/if}
   			<div class="logo2">
   	            <a href="http://{$smarty.server.HTTP_HOST}"><img src="images/logo2.jpg" alt=""></a>
   	        </div>
   	        {if !empty($menu2)}
   	        <div class="top-menu-wrap">
   	        	<ul class="top-menu">
   	        		{foreach from=$menu2 item=e name=top}
          			<li {if $e.page_id==$page.page_id}class="active"{/if}><a {if $e.blank}target="_blank"{/if} href="{if $e.page_id == $site.page_id}/{else}{$e.url}{/if}">{$e.name}</a></li>
          			{/foreach}
   	        	</ul>
   	        </div>
   	        {/if}
   	        {if $phone.body!=""}
   	        <div class="phone">
   	        	{$phone.body}
   	        </div>
   	        {/if}
   	        {if $phone_but.link!=""}
   	        <div class="phone-but">
   	        	<a href="{$phone_but.link}">
   	        		<img src="images/phone-but.png" alt="">
   	        	</a>
   	        </div>
   	        {/if}
   	        {if $time.body!=""}
   	        <div class="time">
   	        	{$time.body}
   	        </div>
   	        {/if}
   	        <form action="/search" class="search-form" method="get">
   	           <input name="search" type="text"  class="s-text" placeholder="Поиск по сайту" />
   	          <input type="submit" class="s-button" value="" />
   	        </form>
		</div>
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
		<div class="content-wrapper {if $page.main} content-wrap{/if}">
			{if !$page.main}
			<div class="left-column">
				<div class="logo3">
	   	            <a href="http://{$smarty.server.HTTP_HOST}"><img src="images/logo3.png" alt=""></a>
	   	        </div>
				{if !empty($menu)}
				{include file="global:simplemenu.tpl" data=$menu class="menu-left"}
				{/if}
			</div>
			{/if}
			<div class="content-column">
				<div class="content">
					<h1>{$h1|default:$page.seo_h1|default:$page.h1}</h1>
