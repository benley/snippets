# Snippets for {{username}}

{% for snippet in snippets %}
## Week of {{snippet.week | readable_date}}
{{snippet.text or '' | safe}}

---
{% endfor %}
