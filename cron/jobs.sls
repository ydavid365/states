include:
  - cron

{% for job in pillar.get('cron_jobs', []) %}

{{ job.cmd }}:
  cron.present:
    - user: {{ job.get('user', 'root') }}
    - minute: "{{ job.get('minute', '*') }}"
    - hour: "{{ job.get('hour', '*') }}"

{% endfor %}
