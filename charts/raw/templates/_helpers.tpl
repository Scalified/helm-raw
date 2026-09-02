{{- define "raw.labels" -}}
metadata:
  labels: {{- tpl ($.Values.defaultLabels | toYaml) $ | nindent 4 }}
{{- end }}
