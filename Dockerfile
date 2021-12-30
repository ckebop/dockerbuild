FROM registry.suse.com/suse/sle15:15.2

RUN echo "hello world"
RUN zypper --non-interactive --gpg-auto-import-keys ref
RUN zypper --non-interactive install python3 python-xml vim
