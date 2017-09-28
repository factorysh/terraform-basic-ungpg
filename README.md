Terraform ungpg
===============

Decrypt gpg file with your current key.

Usage
-----

Encrypt a file with all your team keys. Something like :

    echo "my secret" | gpg --encrypt alice@toto.com bob@toto.com charly@toto.com --output secret.gpg

In Terraform, you can use something like:

    module "ungpg" {
        source = "github.com/factorysh/terraform-basic-ungpg"
        path = "secret.gpg"
    }

Get it:

    terraform get

Ans use it:

    ${module.ungpg.secret}
