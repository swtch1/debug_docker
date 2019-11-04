FROM centos:latest

COPY scripts /scripts

# NOTE: not all tools are guaranteed to work, research container specific settings before blindly adding here
# ref: https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities
RUN yum install -y epel-release
RUN yum install -y \
  python34         \
  python34-pip     \
  git              \
  vim              \
  wget             \
  sysstat          \
  strace           \
  which            \
  telnet           \
  nc               \
  nmap             \
  host

# breaking these up helps speed build times through build image caching
RUN yum install -y \
  screen           \
  dstat            \
  net-tools        \
  tcpdump          \
  lsof             \
  sleep            \
  mtr

RUN yum install -y \
  traceroute       \
  bind-utils       \
  man-db           \
  sar

COPY test /test

CMD ["sleep", "10000"]

