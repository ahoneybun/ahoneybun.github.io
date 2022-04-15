---
---

# Aaron's Blog

A place for my thoughts on things, tips & tricks, and maybe a review or two.

{% assign posts = site.posts | sort: "date" | sort: "updated" | reverse %}

{% for post in posts %}
  {% unless post.hidden %}
    {% include post-summary.html post=post %}
  {% endunless %}
{% endfor %}
