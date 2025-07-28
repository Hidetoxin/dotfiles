{pkgs, ...}: with pkgs;

rec {

  np = [
    grit  # log parser
    targe  # `ai` assisted `iam` manager
    kafe  # `tui` for `kafka`
    whispr  # inject secrets on any cloud
    backhub  # backup you `github` repos
    elastop  # `tui` for `elasticsearch`
    helm-tui  # `tui` for `helm`
    opengrep  # `semgrep` alternative
    easycron  # `tui` for validating cron expresions
  ];  # np

  na = [
    eget  # install pre-built binaries from `github`
    aiws  # `ai` for `aws`
    ttop  # `top` like system monitoring tool
    s-tui  # stress-terminal `tui` monitoring tool
    tsung  # benchmark framework for various protocols
    s5cmd  # parallel `s3` and local filesystem execution tool
    vault  # tool for managing secrets
    damon  # `tui` for `nomad`
    packer  # create computer images
    wander  # `tui` for `nomad`
    ollama  # run language models locally
    granted  # cloud access
    vagrant  # build complete development environments
    ansible  # simple automation
    molecule  # `ansible` test framework
    sniffnet  # monitor your Internet traffic
    minikube # run `k8s` locally
    vault-env  # run processes with secrets from `vault`
    infracost  # cloud cost estimates for `terraform`
    ripsecrets  # tool to prevent committing secret keys
    noseyparker  # secret finder
    openapi-tui  #  browse and run `apis` defined with `openapi`
    ansible-lint  # `ansible` linter
    vault-medusa # tool for importing and exporting `vault` secrets
    ansible-language-server  # `ansible` language server
  ];

  tf = [
    tenv # `terraform` manager
    tfsec  # `terraform` security linter
    tflint  # `terraform` linter
    checkov  # code analysis tool for `iac`
    terrascan  #  `terraform` security linter
    terramate  # code generation, stacks, orchestration, change detection, data sharing and more to `terraform`
    terraformer  # reverse `terraform`
    terracognita  # `terraform` state importer
    terraform-ls  # `terraform` language server
    terraform-docs  # `terraform` document generator
  ];  # tf

  git = [
    gitleaks  # scan `git` repos for secrets
    commitizen  # create comitting rules
    bfg-repo-cleaner  # `git` repository cleaner
    git-repo-updater  # update multiple `git` repositories
  ];

  dev = [
    bandit  # security oriented static analyser for `python`
    mkdocs  # documentation with `markdown`
    nodenv  # `node` environment manager
  ];

  net = [
    bmon  # network bandwith monitor
    ipcalc  # simple `ip` calculator
    tshark  # `cli` for `wireshark`
  ];  # net

  dbs = [
    lazysql  # `sql` tui
  ];  # dbs

  k8s = [
    k9s # `tui` for `k8s`
    argocd  # declarative continuous deployment for `k8s`
    helm-ls  # language server for `helm`
    kubectl  # `cli` for `k8s`
    kubectx  # tool to switch between `k8s` contexts
    hadolint  # `docker` file linter
    helm-docs  # generate documentation for `helm` charts
    lazydocker  # `docker` tui
    kubernetes-helm  # charts for `k8s`
  ];  # k8s

  sec = [
    sops  # simple and flexible tool for managing secrets
    trivy  # vulnerability scanner for containers
    unbound  # validating, recursive, caching `dns` resolver
    termshark  # `tui` for `wireshark-cli`
    osv-scanner # `osv` for scanning vulnerabilities
    certbot-full  # obtain certs and extensibly update server configurations
    certificate-ripper  # `cli` tool to extract server certificates
  ];  # sec

  bench = [
    vegeta  # versatile `http` load testing tool
    hyperfine  # `cli` benchmark tools
  ];  # bench

  cloud = [
    stu  # `aws` bucket explorer
    bicep # `cli` tool for working with `bicep` files
    awsume  # `aws` profile manager
    eksctl  # `cli` for `eks`
    awscli2  # `aws` `cli`
    aws-gate  # `aws` client manager for `ssm`
    aws-vault  # get `aws` credentials
    azure-cli  # `cli` for `microsoft azure`
    bicep-lsp  # `lsp` for `bicep`
  ];  # cloud

  tools = [
    lnav  # log viewer
    wrkflw  # `tui` for running local `github` workflows
    gama-tui # `tui` for running `github` workflows
    jfrog-cli  # `cli` for `jfrog` artifact hosting
    actionlint  # linter for `github` workflows
  ];  # tools

  all = tf ++ git ++ net ++ k8s ++ sec ++ bench ++ cloud ++ tools;

}  # rec
