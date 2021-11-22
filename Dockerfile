
FROM registry.suse.com/suse/sle15:15.2

RUN zypper ref -s
RUN zypper -n in vim
