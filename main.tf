provider "external" {
  version = "~> 1.0"
}

data "external" "secret" {
  program = ["ruby", "-e", "require 'json'; puts({ value: IO.popen(\"gpg --quiet -d #{JSON.parse(STDIN.read)['path']}\", 'r+').read[0..-1] }.to_json)"]

  query = {
    path = "${var.path}"
  }
}
