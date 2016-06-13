</div>
			</div>
		</div>
		<div class="footer-clear"></div>
	</div>
	<div class="footer-wrapper">
		<div class="footer">
			<div class="left-menu-wrap">
				{if !empty($menu)}
				{include file="global:simplemenu.tpl" data=$menu class="menu-left"}
				{/if}
			</div>
			{if !empty($menu2)}
			<div class="bot-menu-wrap">
				<ul class="bot-menu">
					{foreach from=$menu2 item=e name=top}
			      	{if $e._level==1}
        			<li><a {if $e.blank}target="_blank"{/if} href="{if $e.page_id == $site.page_id}/{else}{$e.url}{/if}">{$e.name}</a></li>
        			{/if}
        			{/foreach}
				</ul>
			</div>
			{/if}
			<div class="copy">
				{assign var="site_year" value=$site.site_date|date_format:"%Y"}
			    {assign var="now_year" value=$smarty.now|date_format:"%Y"}
			    &copy; {$site_year}{if $now_year>$site_year} - {$now_year}{/if} {$site.site_name}
			</div>
			<div class="mega">
				{$copyright}
			</div>
			<div class="counters">
				{$counters.body}
			</div>
			 <div class="phone">
   	        	{$phone.body}
   	        </div>
   	        <div class="phone-but">
   	        	<a href="{$phone_but.link}">
   	        		<img src="images/phone-but2.png" alt="">
   	        	</a>
   	        </div>
   	        <div class="time">
   	        	{$time.body}
   	        </div>
		</div>
	</div>
	</div>
</body>
</html>
