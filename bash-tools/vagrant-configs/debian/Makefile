#
#  Author: KhulnaSoft Ltd
#  Date: 2020-09-02 20:08:39 +0100 (Wed, 02 Sep 2020)
#
#  vim:ts=4:sts=4:sw=4:noet
#
#  https://github.com/KhulnaSoft/DevX/tree/main/bash-tools/vagrant-configs
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback
#
#  https://www.linkedin.com/company/khulnasoft
#

include ../Makefile.in

.PHONY: boot
boot: arch
	vagrant up
	exec vagrant ssh debian
