# RAW Helm Chart

[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/Scalified/helm-raw/blob/master/LICENSE)
[![Release](https://img.shields.io/github/v/release/Scalified/helm-raw?style=flat-square)](https://github.com/Scalified/helm-raw/releases/latest)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/scalified-raw)](https://artifacthub.io/packages/helm/scalified-raw/raw)

## Requirements

* [Helm 3+](https://helm.sh)

## Usage



---

**Made with ❤️ by [Scalified](http://www.scalified.com)**

# Examples

```yaml
defaultLabels:
  app.kubernetes.io/part-of: application
  environment: development

resources:
  - apiVersion: v1
    kind: Service
    metadata:
      name: application
    spec:
      selector:
        app: application
      ports:
        - port: 80
          targetPort: http

templates:
  - |
    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: {{ .Release.Name }}-config
    data:
      environment: {{ .Release.Namespace }}
```

## Values

| Key             | Description                                                             | Default |
| --------------- | ----------------------------------------------------------------------- | ------- |
| `defaultLabels` | Applies labels to every resource unless the resource defines the label. | `{}`    |
| `resources`     | Defines Kubernetes resources that Helm renders and deploys.             | `[]`    |
| `templates`     | Defines manifest templates rendered with Helm's `tpl` function.         | `[]`    |
