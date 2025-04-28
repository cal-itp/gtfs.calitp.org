# gtfs.calitp.org

This repository contains the web content for [`gtfs.calitp.org`](https://gtfs.calitp.org).

## PR Previews

Opening a Pull Request will generate a preview of the changes; look for a comment on the Pull Request when the preview site is ready.

See the [`site-preview` workflow](https://github.com/cal-itp/gtfs.calitp.org/blob/main/.github/workflows/site-preview.yml) for details.


## Deployment

This site is deployed to Google Cloud by Terraform after a pull request is merged.

Install Terraform via ASDF:

```bash
$ brew install asdf
$ asdf plugin add terraform https://github.com/asdf-community/asdf-hashicorp.git
$ asdf install terraform 1.10.5
$ asdf set terraform 1.10.5
$ asdf reshim
```

You may need to add this to your ~/.bashrc
```export PATH="$HOME/.asdf/bin:$HOME/.asdf/shims:$PATH"```

To see any outstanding changes, run `terraform plan`:

```bash
$ cd iac/
$ terraform plan
```

These changes will be automatically applied by a Github Action after a pull request containing these changes is merged.

## License

All source code is licensed under [Apache 2.0](./LICENSE)

All content is licensed under [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/)
