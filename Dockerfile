FROM kalilinux/kali-rolling:latest
LABEL org.opencontainers.image.source https://github.com/boxmein/ctf-cli
RUN apt-get -y update && apt-get -y install \
	gdb gdbserver python3 python3-pip nano radare2 \
	tmux curl wget file procps

RUN bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
RUN pip3 install pwntools
