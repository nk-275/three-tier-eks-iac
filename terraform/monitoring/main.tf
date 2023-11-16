
resource "kubernetes_manifest" "elastic_dashboard" {
manifest = yamldecode(templatefile("./elastic-dashboard-configmap.yaml", {
  name = "grafana-elastic"
  data = file("./grafana-elastic-dashboard.json")
}))
}