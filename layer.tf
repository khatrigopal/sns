resource "aws_lambda_layer_version" "layer" {
  layer_name  = data.terraform_remote_state.networking.outputs.layers.layers[0].arn
}
