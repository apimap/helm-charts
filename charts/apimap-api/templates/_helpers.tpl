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
{{- printf "apimap/api:v1.8.5" -}}
{{- end -}}

{{- define "apimap.services"}}
  {{- if .Values.log.endpoints.statistics.enabled }}
    {{- print "metrics,httptrace,prometheus" }}
  {{- end -}}
  {{- if .Values.log.endpoints.health.enabled }}
    {{- if .Values.log.endpoints.statistics.enabled }}
      {{- print ",health" -}}
    {{- else -}}
      {{- print "health" -}}
    {{- end -}}
  {{- end -}}
{{- end -}}
