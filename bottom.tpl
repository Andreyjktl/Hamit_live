
		</div>
		<div class="footer-clear"></div>
	</div>
	<div class="row">
		<div class="well" style="height:200px;">
			<div class="col-md-4 left-menu-wrap">
				{if !empty($menu)}
				{include file="global:simplemenu.tpl" data=$menu class="menu-left"}
				{/if}
			</div>
			{if !empty($menu2)}
			<div class="col-md-4  bot-menu-wrap">
				<ul class="bot-menu">
					{foreach from=$menu2 item=e name=top}
			      	{if $e._level==1}
        			<li><a {if $e.blank}target="_blank"{/if} href="{if $e.page_id == $site.page_id}/{else}{$e.url}{/if}">{$e.name}</a></li>
        			{/if}
        			{/foreach}
				</ul>
			</div>
			{/if}
			<div class="col-md-4 copy">
				{assign var="site_year" value=$site.site_date|date_format:"%Y"}
			    {assign var="now_year" value=$smarty.now|date_format:"%Y"}
			    &copy; {$site_year}{if $now_year>$site_year} - {$now_year}{/if} {$site.site_name}
			</div>
		</div>
</div>
			<div class="row" style="background-color:white; padding:20px;">
			<div class="col-md-4 mega">
				{$copyright}
			</div>
			<div class="col-md-1 counters">
				{$counters.body}
			</div>
			 <div class="col-md-3 phone">
   	        	{$phone.body}
   	        </div>
   	        <div class="col-md-4 phone-but">
   	        	<a href="{$phone_but.link}">
   	        		<img src="images/phone-but2.png" alt="">
   	        	</a>
   	        </div>
   	        <div class="time">
   	        	{$time.body}
   	        </div>
		</div>

	</div>
</body>
</html>
