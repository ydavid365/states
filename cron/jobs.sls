{% for job in pillar["cron_jobs"] %}

{{ job.cmd }}:
  cron.present:
    - minute: "{{ job.minute or '*' }}"
    - hour: "{{ job.hour or '*' }}"

{% endfor %}
