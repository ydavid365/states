include:
  - cron

{% for job in pillar["cron_jobs"] %}

{{ job.cmd }}:
  cron.present:
    - user: {{ job.user or 'root' }}
    - minute: "{{ job.minute or '*' }}"
    - hour: "{{ job.hour or '*' }}"

{% endfor %}
