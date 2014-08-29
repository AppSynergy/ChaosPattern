---
layout: default
name: home
title: ChaosPattern
---

#ChaosPattern

<input type="button" class="btn chaos-btn btn-warning" id="createChaos" value="enable chaos mode" />

<div class="art-masonry">
{% for pic in site.data.artwork %}
	<div class="artwork">
		<a class="art" href="/img/{{ pic }}" title="Click to view full size">
			<img src="/img/thumb/{{ pic }}" alt="Chaospattern" />
		</a>
	</div>
{% endfor %}
</div>