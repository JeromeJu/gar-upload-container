FROM us-docker.pkg.dev/gcb-catalog-release/preview/gar-upload@sha256:db8ba2ba316f791bd425c828031b67817ba1b683127153512bb4b5af5beb4333 as gar-upload

USER root

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]