{pkgs, ...}: with pkgs;

rec {

  # Tooling for working with the `c` and `c++` languages
  c-pkgs = [
    gnumake  # generation of files from source
  ];

  # Tooling for working with the `go` language
  go-pkgs = [
    air  # `live reload of `go` applications
    gdlv  # `tui` for `delve` debugger
    hugo  # a static website generator
    gopls  # `go` language server
    gotip  # interative test picker for `go`
    delve  # `go` debugger
  ];

  # Tooling for working with the `aws` cloud
  aws-pkgs = [
    stu  # `aws` bucket explorer
    s5cmd  # parallel `s3` and local filesystem execution tool
    eksctl  # `cli` for `eks`
    awsume  # `aws` profile manager
    awscli2  # `aws` `cli`
    granted  # cloud access
    aws-gate  # `aws` client manager for `ssm`
    aws-vault  # get `aws` credentials
  ];

  ssh-pkgs = [
    sshs # `tui` for `ssh`
    sshpass  # `ssh` non-interactive authentication
    lazyssh  # `tui` for `ssh`
    fast-ssh  # `tui` tool to use the `ssh` config for connections
  ];  # tuis

  # Tooling for working with log files
  logs-pkgs = [
    lnav  # log viewer
    toolong  # view, tail, merge, and search log files
    # tuistash  # `tui` for `logstash`
    lazyjournal  # `tui` for `journalctl`, file system logs, as well as `docker` and `podman` containers
    hl-log-viewer  # make logs readable
    systemctl-tui  # `tui` for interacting with `systemd` services and their logs
  ];

  # Tooling for working with the `rust` language
  rust-pkgs = [
    crates-tui  # `tui` for exploring `crates.io`
  ];

  # Tooling for working with `nomad`
  nomad-pkgs = [
    nomad  # distributed, highly available, datacenter-aware scheduler
    damon  # `tui` for `nomad`
    wander  # `tui` for `nomad`
  ];

  # Tooling for working with `vault`
  vault-pkgs = [
    vsh  # `vault` interactive shell
    vault  # tool for managing secrets
    vault-env  # run processes with secrets from `vault`
    vault-medusa # tool for importing and exporting `vault` secrets
    vault-ssh-plus  # automatically use `vault` `ssh` client key signing
  ];

  docker_pkgs = [
    oxker  # simple `tui` to view & control `docker` containers
    hadolint  # `docker` file linter
    dockerfmt  # `dockerfile` formatter, a modern `dockfmt`
    lazydocker  # `docker` tui
    gomanagedocker  # `tui` tool to manage your `docker` images, containers and volumes
    dockerfile-language-server  # language server for ``dockerfiles`
  ];

  # Tooling for working with `ansible` playbooks
  ansible-pkgs = [
    ansible  # simple automation
    molecule  # `ansible` test framework
    ansible-lint  # `ansible` linter
    ansible-navigator  # `tui` for `ansible`
    ansible-language-server  # `ansible` language server
  ];

  # Tooling for security scanning
  security-pkgs = [
    flawz  # `tui` for browsing the security vulnerabilities
    trivy  # vulnerability scanner for containers
    lazytrivy  # `tui` for `trivy`
    ripsecrets  # tool to prevent committing secret keys
    noseyparker  # secret finder
    osv-scanner # `osv` for scanning vulnerabilities
    certbot-full  # obtain certs and extensibly update server configurations
    certificate-ripper  # `cli` tool to extract server certificates
  ];

  # Tooling for working with artifact managers
  artifacts-pkgs = [
    jfrog-cli  # `cli` for `jfrog` artifact hosting
  ];

  # Tooling for working with `openstack`
  openstack-pkgs = [
    openstack-rs  # `cli` and `tui` implemented in `rust` for `openstack`
  ];

  # Tooling for working and querying databases
  databases-pkgs = [
    lazysql  # `tui` for `sql`
    vi-mongo  # `tui` for `mongodb`
    rainfrog  # db management `tui` for `postgress`
  ];

  # Tooling for working with `terraform` templates
  terraform-pkgs = [
    tenv # `terraform` manager
    tfk8s  # utility to convert `kubernetes` manifests to terraform`'s format
    tfsec  # `terraform` security linter
    tftui  # `tui` to view and interact with `terraform` state
    tflint  # `terraform` linter
    checkov  # code analysis tool for `iac`
    infracost  # cloud cost estimates for `terraform`
    terrascan  #  `terraform` security linter
    terramate  # code generation, stacks, orchestration, change detection, data sharing and more to `terraform`
    tfmigrate  # `terraform` / `opentofu` state migration tool for `gitops`
    terraformer  # reverse `terraform`
    terracognita  # `terraform` state importer
    terraform-ls  # `terraform` language server
    terraform-docs  # `terraform` document generator
  ];

  # Tooling for working with `kubernetes`
  kubernetes-pkgs = [
    k9s # `tui` for `k8s`
    argocd  # declarative continuous deployment for `k8s`
    # cruise  # `tui` for managing containers
    helm-ls  # language server for `helm`
    kubectl  # `cli` for `k8s`
    kubectx  # tool to switch between `k8s` contexts
    kubetui  # `tui` tool for real-time monitoring and exploration of `k8s`
    helm-tui  # `tui` for `helm`
    # minikube # run `k8s` locally
    helm-docs  # generate documentation for `helm` charts
    kubernetes-helm  # charts for `k8s`
  ];

  # Tooling for doing benchmarking tests
  benchmarking-pkgs = [
    oha  # `http` load generator inspired by `rakyll`/`hey` with `tui` animation
    s-tui  # stress-terminal `tui` monitoring tool
    tsung  # benchmark framework for various protocols
    vegeta  # versatile `http` load testing tool
    hyperfine  # `cli` benchmark tools
  ];

  # Tooling for virtualization
  virtualization-pkgs = [
    packer  # create computer images
    vagrant  # build complete development environments
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    # ++ c-pkgs
    # ++ go-pkgs
    # ++ aws-pkgs
    ++ ssh-pkgs
    ++ logs-pkgs
    # ++ rust-pkgs
    # ++ nomad-pkgs
    # ++ vault-pkgs
    # ++ docker-pkgs
    # ++ ansible-pkgs
    # ++ security-pkgs
    # ++ artifacts-pkgs
    # ++ databases-pkgs
    # ++ terraform-pkgs
    # ++ kubernetes-pkgs
    # ++ benchmarking-pkgs
    # ++ virtualization-pkgs
    ++ [];

}  # rec
