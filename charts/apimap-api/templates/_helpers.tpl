{{- define "apimap.name" -}}
{{- printf "%s-%s" .Chart.Name .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "apimap.targetPort" -}}
{{- printf "8080" -}}
{{- end -}}

{{- define "apimap.port" -}}
{{- printf "80" -}}
{{- end -}}

{{- define "apimap.image" -}}
{{- printf "apimap/api:1.4.1" -}}
{{- end -}}

{{- define "apimap.services"}}
  {{- if .Values.log.endpoints.statistics.enabled }}
    {{- print "metrics,httptrace" }}
  {{- end -}}
  {{- if .Values.log.endpoints.health.enabled }}
    {{- if .Values.log.endpoints.statistics.enabled }}
      {{- print ",health" -}}
    {{- else -}}
      {{- print "health" -}}
    {{- end -}}
  {{- end -}}
{{- end -}}
