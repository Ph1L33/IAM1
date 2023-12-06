resource "tls_private_key" "terrafrom_generated_private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "SandBox" {
  
  # Name of key: Write the custom name of your key
  key_name   = "SandBox"
  
  # Public Key: The public will be generated using the reference of tls_private_key.terrafrom_generated_private_key
  public_key = tls_private_key.terrafrom_generated_private_key.public_key_openssh
 
  # Store private key :  Generate and save private key(MyLinuxBox.pem) in current directory 
  provisioner "local-exec" {   
    command = <<-EOT
      echo '${tls_private_key.terrafrom_generated_private_key.private_key_pem}' > Sandbox.pem
      chmod 400 Sandbox.pem
    EOT
  }
} 

resource "aws_key_pair" "Tarbox" {
  key_name   = "Tarbox"
  public_key = tls_private_key.terrafrom_generated_private_key.public_key_openssh
   provisioner "local-exec" {   
    command = <<-EOT
      echo '${tls_private_key.terrafrom_generated_private_key.private_key_pem}' > Tarbox.pem
      chmod 400 Tarbox.pem
    EOT
  }
}