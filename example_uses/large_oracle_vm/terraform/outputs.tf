output "oracle" {
  value = [
    for host in module.oracle[*]:
      host.public_ip
  ]
}
