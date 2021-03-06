    {{/* vim: set filetype=mustache: */}}
{{/*
Environment variables for web and worker containers
*/}}
{{- define "deployment.envs" }}
env:
  - name: SPRING_PROFILES_ACTIVE
    value: "oracle"

  - name: SERVER_PORT
    value: "{{ .Values.image.port }}"

  - name: JAVA_OPTS
    value: "{{ .Values.env.JAVA_OPTS }}"

  - name: CSR_REGION1_URL
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION1_URL

  - name: CSR_REGION1_USERNAME
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION1_USERNAME

  - name: CSR_REGION1_PASSWORD
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION1_PASSWORD

  - name: CSR_REGION2_URL
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION2_URL

  - name: CSR_REGION2_USERNAME
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION2_USERNAME

  - name: CSR_REGION2_PASSWORD
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION2_PASSWORD

  - name: CSR_REGION3_URL
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION3_URL

  - name: CSR_REGION3_USERNAME
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION3_USERNAME

  - name: CSR_REGION3_PASSWORD
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION3_PASSWORD

  - name: CSR_REGION4_URL
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION4_URL

  - name: CSR_REGION4_USERNAME
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION4_USERNAME

  - name: CSR_REGION4_PASSWORD
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION4_PASSWORD

  - name: CSR_REGION5_URL
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION5_URL

  - name: CSR_REGION5_USERNAME
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION5_USERNAME

  - name: CSR_REGION5_PASSWORD
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION5_PASSWORD

  - name: CSR_REGION6_URL
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION6_URL

  - name: CSR_REGION6_USERNAME
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION6_USERNAME

  - name: CSR_REGION6_PASSWORD
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: CSR_REGION6_PASSWORD

  - name: SPRING_SECURITY_OAUTH2_RESOURCESERVER_JWT_JWK_SET_URI
    value: "{{ .Values.env.SPRING_SECURITY_OAUTH2_RESOURCESERVER_JWT_JWK_SET_URI }}"

  - name: APPINSIGHTS_INSTRUMENTATIONKEY
    valueFrom:
      secretKeyRef:
        name: csr-values
        key: APPINSIGHTS_INSTRUMENTATIONKEY

{{- end -}}
