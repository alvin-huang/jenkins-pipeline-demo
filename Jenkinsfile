standardBuild {
    machine          = "docker"
    dev_branch       = "develop"
    release_branch   = "master"
    artifact_pattern = "*.txt"
    html_pattern     = [keepAll: true, reportDir: '.', reportFiles: 'output.html', reportName: 'Output Report']
    dev_repo         = "jam-dev"
    prod_repo        = "jam-prod"
    pr_script = """
       make build-rpm DOCKER_TAG=pipeline-demo-pr:latest BUILD_SCRIPT=pr_script.sh
    """
    dev_script = """
       make build-rpm DOCKER_TAG=pipeline-demo-dev:latest BUILD_SCRIPT=dev_script.sh
    """
    release_script = """
       make build-rpm DOCKER_TAG=pipeline-demo-release:latest BUILD_SCRIPT=release_script.sh
    """
}
