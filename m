Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 776DC478DC8
	for <lists+usrp-users@lfdr.de>; Fri, 17 Dec 2021 15:28:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28533385612
	for <lists+usrp-users@lfdr.de>; Fri, 17 Dec 2021 09:28:40 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7963A384529
	for <usrp-users@lists.ettus.com>; Fri, 17 Dec 2021 09:27:45 -0500 (EST)
Date: Fri, 17 Dec 2021 14:27:45 +0000
To: usrp-users@lists.ettus.com
From: maximilian.engelhardt@tu-ilmenau.de
Message-ID: <PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1_PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o"
Content-Transfer-Encoding: 7bit
Message-ID-Hash: UL4IUARFZVKKBBTEVENRLSQEZIRRPKTR
X-Message-ID-Hash: UL4IUARFZVKKBBTEVENRLSQEZIRRPKTR
X-MailFrom: maximilian.engelhardt@tu-ilmenau.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD DPDK freezes during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UL4IUARFZVKKBBTEVENRLSQEZIRRPKTR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.

--b1_PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o
Content-Type: multipart/alternative;
 boundary="b2_PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o"

--b2_PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o
Content-Type: text/plain; charset=us-ascii

Hello,

I'm trying to use UHD-DPDK, but fail because the driver freezes during initalization:

> > UHD_LOG_LEVEL=debug ./benchmark_rate --rx_rate 100e6 --rx_subdev "A:0" --rx_channels 0 --args "mgmt_addr=192.168.30.2,addr=192.168.40.2,use_dpdk=1"\
> \[INFO\] \[UHD\] linux; GNU C++ version 10.2.1 20210110; Boost_107400; UHD_4.2.0.git-209-gf23ab721\
> \[DEBUG\] \[PREFS\] Loaded user config file /root/.config/uhd.conf\
> EAL: Detected 32 lcore(s)\
> EAL: Detected 1 NUMA nodes\
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket\
> EAL: Selected IOVA mode 'VA'\
> EAL: No available hugepages reported in hugepages-2048kB\
> EAL: Probing VFIO support...\
> EAL: VFIO support initialized\
> EAL: Invalid NUMA socket, default to 0\
> EAL: Invalid NUMA socket, default to 0\
> EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:08:00.0 (socket 0)\
> mlx5_pci: Size 0xFFFF is not power of 2, will be aligned to 0x10000.\
> EAL: Invalid NUMA socket, default to 0\
> EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: 0000:08:00.1 (socket 0)\
> mlx5_pci: Size 0xFFFF is not power of 2, will be aligned to 0x10000.\
> EAL: No legacy callbacks, legacy socket not created

Here, the output stops, no timeout occurs even after hours.

Without DPDK, so if I omit the argument use_dpdk=1, it works fine. Other DPDK applications also run without problems.\
The problem occurs both with the UHD version 4.0.0 (using DPDK 18.11), and with the current state from the git-repository (UHD_4.2.0.git-209-gf23ab721) using DPDK 21.11.

I am using a Mellanox Technologies MCX512A-ACAT to which the USRP X310 is connected with two 10G Ethenet links., of which i tried to use one witch DPDK and the other without. (The documentation suggests to me that this is necessary for the driver to manage the device).\
\
I have attached my uhd.conf configuration file and output of ip addr to this mail.

Does anyone have any idea how I could solve this problem?

Thanks in advance

Max

--b2_PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I'm trying to use UHD-DPDK, but fail because the driver fre=
ezes during initalization:</p><blockquote><p>&gt; UHD_LOG_LEVEL=3Ddebug ./b=
enchmark_rate --rx_rate 100e6 --rx_subdev "A:0" --rx_channels 0 --args "mgm=
t_addr=3D192.168.30.2,addr=3D192.168.40.2,use_dpdk=3D1"<br>[INFO] [UHD] lin=
ux; GNU C++ version 10.2.1 20210110; Boost_107400; UHD_4.2.0.git-209-gf23ab=
721<br>[DEBUG] [PREFS] Loaded user config file /root/.config/uhd.conf<br>EA=
L: Detected 32 lcore(s)<br>EAL: Detected 1 NUMA nodes<br>EAL: Multi-process=
 socket /var/run/dpdk/rte/mp_socket<br>EAL: Selected IOVA mode 'VA'<br>EAL:=
 No available hugepages reported in hugepages-2048kB<br>EAL: Probing VFIO s=
upport...<br>EAL: VFIO support initialized<br>EAL: Invalid NUMA socket, def=
ault to 0<br>EAL: Invalid NUMA socket, default to 0<br>EAL: Probe PCI drive=
r: mlx5_pci (15b3:1017) device: 0000:08:00.0 (socket 0)<br>mlx5_pci: Size 0=
xFFFF is not power of 2, will be aligned to 0x10000.<br>EAL: Invalid NUMA s=
ocket, default to 0<br>EAL: Probe PCI driver: mlx5_pci (15b3:1017) device: =
0000:08:00.1 (socket 0)<br>mlx5_pci: Size 0xFFFF is not power of 2, will be=
 aligned to 0x10000.<br>EAL: No legacy callbacks, legacy socket not created=
</p></blockquote><p>Here, the output stops, no timeout occurs even after ho=
urs.</p><p>Without DPDK, so if I omit the argument use_dpdk=3D1, it works f=
ine. Other DPDK applications also run without problems.<br>The problem occu=
rs both with the UHD version 4.0.0 (using DPDK 18.11), and with the current=
 state from the git-repository (UHD_4.2.0.git-209-gf23ab721) using DPDK 21.=
11.</p><p>I am using a Mellanox Technologies MCX512A-ACAT to which the USRP=
 X310 is connected with two 10G Ethenet links., of which i tried to use one=
 witch DPDK and the other without. (The documentation suggests to me that t=
his is necessary for the driver to manage the device).<br><br>I have attach=
ed my uhd.conf configuration file and output of ip addr to this mail.</p><p=
>Does anyone have any idea how I could solve this problem?</p><p>Thanks in =
advance</p><p>Max</p>

--b2_PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o--

--b1_PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o
Content-Type: text/plain; name=ip_addr
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=ip_addr

Li4uCgoKMzogZW5wOHMwZjBucDA6IDxCUk9BRENBU1QsTVVMVElDQVNULFVQLExPV0VSX1VQPiBt
dHUgOTAwMCBxZGlzYyBtcSBzdGF0ZSBVUCBncm91cCBkZWZhdWx0IHFsZW4gMTAwMAogICAgbGlu
ay9ldGhlciAwNDozZjo3MjphYzozMDozNiBicmQgZmY6ZmY6ZmY6ZmY6ZmY6ZmYKICAgIGluZXQg
MTkyLjE2OC40MC4xLzI0IGJyZCAxOTIuMTY4LjQwLjI1NSBzY29wZSBnbG9iYWwgZW5wOHMwZjBu
cDAKICAgICAgIHZhbGlkX2xmdCBmb3JldmVyIHByZWZlcnJlZF9sZnQgZm9yZXZlcgogICAgaW5l
dDYgZmU4MDo6NjNmOjcyZmY6ZmVhYzozMDM2LzY0IHNjb3BlIGxpbmsgCiAgICAgICB2YWxpZF9s
ZnQgZm9yZXZlciBwcmVmZXJyZWRfbGZ0IGZvcmV2ZXIKNDogZW5wOHMwZjFucDE6IDxCUk9BRENB
U1QsTVVMVElDQVNULFVQLExPV0VSX1VQPiBtdHUgOTAwMCBxZGlzYyBtcSBzdGF0ZSBVUCBncm91
cCBkZWZhdWx0IHFsZW4gMTAwMAogICAgbGluay9ldGhlciAwNDozZjo3MjphYzozMDozNyBicmQg
ZmY6ZmY6ZmY6ZmY6ZmY6ZmYKICAgIGluZXQgMTkyLjE2OC4zMC4xLzI0IGJyZCAxOTIuMTY4LjMw
LjI1NSBzY29wZSBnbG9iYWwgZW5wOHMwZjFucDEKICAgICAgIHZhbGlkX2xmdCBmb3JldmVyIHBy
ZWZlcnJlZF9sZnQgZm9yZXZlcgogICAgaW5ldDYgZmU4MDo6NjNmOjcyZmY6ZmVhYzozMDM3LzY0
IHNjb3BlIGxpbmsgCiAgICAgICB2YWxpZF9sZnQgZm9yZXZlciBwcmVmZXJyZWRfbGZ0IGZvcmV2
ZXIKCg==

--b1_PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o
Content-Type: text/plain; name=uhd.conf
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=uhd.conf

W3VzZV9kcGRrPTFdCmRwZGtfbXR1PTkwMDAKZHBka19kcml2ZXI9L3Vzci9sb2NhbC9saWIvCmRw
ZGtfY29yZWxpc3Q9Myw0LDUsNiw3CmRwZGtfbnVtX21idWZzPTQwOTUKZHBka19tYnVmX2NhY2hl
X3NpemU9MzE1CgpbZHBka19tYWM9MDQ6M2Y6NzI6YWM6MzA6MzZdCmRwZGtfbGNvcmUgPSAzCmRw
ZGtfaXB2NCA9IDE5Mi4xNjguNDAuMS8yNAo=

--b1_PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_PUvWvHIpcoT0X2UTAaJqgXLwBRbsZ5dKKyyvl8Bey6o--
