let
  couguar = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMUQnVoD7WOAVl7CPL38KUesduFS63SGAIJIGFm2W7NG ingluemlp@gmail.com";
  apollo = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICUKzXNBr9hKZjV5KzL7sP08tAfqyEItIlH5YbIuj+Um root@APOLLO1";
in
{
  "postgres-pass.age".publicKeys = [ couguar apollo ];
}