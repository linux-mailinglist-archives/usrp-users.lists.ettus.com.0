Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAAE8BCF4A
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 15:41:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01B8A38531E
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 09:41:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715002882; bh=G6V6Ob7d+jaFYI9CmOSrFhlPOvyocXNDyMvfRvOIxWs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=qu9NJUlo/IAX5dlp7OVRfUYTy1GzPCuGpFc/LtmCaUJ/xn5TxYOiz2BzVNIQVvHKu
	 SxRDzhOLomY6FE7USE9NjgSyVnjohkuLNtMrtkFKxe6yU6z/btjM88XQyK1ZPXOF1m
	 2d5rK4ZeePFhT8cbVjW0a4vdXjwftpNspk0gcFluWzezBzBB+53ODuwMo1Gm1Zc88g
	 lYiECEMMAqBfCx/JIsOhnyA42tFLAG9SwzwmHLB6Eql3amCKJQ+pRCP7NeamHBl3s0
	 znM1dmg1fFYgdxsY7etsvXl+HBjiwuBC5IBCUfZ4J/UAu7xQskOE2mc1UdHOXwJmWE
	 VOpnmX2fDEb/Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1788384D80
	for <usrp-users@lists.ettus.com>; Mon,  6 May 2024 09:40:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715002819; bh=UUYL+ly+YOMIzgqeFMbimJT4Z4B7IL2H2hRyuhtfPEY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=V9jalZUOC9h5hvIhh9H57nOZTgSHkL8IKAf9oH8e+j4BMKm83q3eOyVCQj45z053a
	 US1f7EMRL3Phc1CUwVxuFBwDpEyk+/7RH2nYP4DXWpubdXv/b3wnioc7hcqzyBLSa3
	 r3X1pTDjU+JfWMYksN/PyaoP+AhvVp2/PoGIUwDwuOFz8GaNR6g3L3WCqqAeqwyLGX
	 KFZnFNMa1kCbzrXPmUM4eOmtUdTjbUB/PTvHpLPLtXDYKE02piKjRqOYbXzE2BEg2n
	 RkyIvyHBsGJdzQHlRzhdvUvMt/VwsRClkILgSSI5DgJcrfF/F9zcgzghfY9dy7w4nl
	 vMwO0EEZdFPlQ==
Date: Mon, 6 May 2024 13:40:19 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <Kit7AxvjUZy2mxDa1KwY84trYfoF6WmeLNuRIs4s7c@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: Se6DLJAlVXBlO09uwQtLmb8z3jdc3ac4iIfpygP9g@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: QZY3VQHA434G6XSNLYHC7AY462SZEVS3
X-Message-ID-Hash: QZY3VQHA434G6XSNLYHC7AY462SZEVS3
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK error : net_mlx5: port 1 empty mbuf pool
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QZY3VQHA434G6XSNLYHC7AY462SZEVS3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4450618879225730110=="

This is a multi-part message in MIME format.

--===============4450618879225730110==
Content-Type: multipart/alternative;
 boundary="b1_Kit7AxvjUZy2mxDa1KwY84trYfoF6WmeLNuRIs4s7c"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Kit7AxvjUZy2mxDa1KwY84trYfoF6WmeLNuRIs4s7c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

After removing the lines you mentioned it seems it is now able to return =
successfully=E2=80=A6

`sudo uhd_find_devices --args "addr=3D192.168.10.2,second_addr=3D192.168.=
20.2,mgmt_addr=3D192.168.1.184,use_dpdk=3D1"`

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD=
_4.5.0.HEAD-0-g471af98f`

`EAL: Detected 32 lcore(s)`

`EAL: Detected 1 NUMA nodes`

`EAL: Multi-process socket /var/run/dpdk/rte/mp_socket`

`EAL: Selected IOVA mode 'VA'`

`EAL: No available hugepages reported in hugepages-1048576kB`

`EAL: Probing VFIO support...`

`EAL: VFIO support initialized`

`EAL: PCI device 0000:06:00.0 on NUMA socket -1`

`EAL:   probe driver: 15b3:1017 net_mlx5`

`EAL: PCI device 0000:06:00.1 on NUMA socket -1`

`EAL:   probe driver: 15b3:1017 net_mlx5`

`--------------------------------------------------`

`-- UHD Device 0`

`--------------------------------------------------`

`Device Address:`

`    serial: 329053B`

`    claimed: False`

`    fpga: CG_400`

`    mgmt_addr: 192.168.1.184`

`    name: ni-x4xx-329053B`

`    product: x410`

`    type: x4xx`

Thanks. Also, I am using a custom image, however, the same issue persiste=
d when I was trying with the default CG_400 x410 image

--b1_Kit7AxvjUZy2mxDa1KwY84trYfoF6WmeLNuRIs4s7c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>After removing the lines you mentioned it seems it is now able to return=
 successfully=E2=80=A6</p><p><br></p><p><code>sudo uhd_find_devices --args =
"addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192.168.1.184,u=
se_dpdk=3D1"</code></p><p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; =
Boost_107100; DPDK_19.11; UHD_4.5.0.HEAD-0-g471af98f</code></p><p><code>EAL=
: Detected 32 lcore(s)</code></p><p><code>EAL: Detected 1 NUMA nodes</code>=
</p><p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</code></=
p><p><code>EAL: Selected IOVA mode 'VA'</code></p><p><code>EAL: No availabl=
e hugepages reported in hugepages-1048576kB</code></p><p><code>EAL: Probing=
 VFIO support...</code></p><p><code>EAL: VFIO support initialized</code></p=
><p><code>EAL: PCI device 0000:06:00.0 on NUMA socket -1</code></p><p><code=
>EAL:   probe driver: 15b3:1017 net_mlx5</code></p><p><code>EAL: PCI device=
 0000:06:00.1 on NUMA socket -1</code></p><p><code>EAL:   probe driver: 15b=
3:1017 net_mlx5</code></p><p><code>----------------------------------------=
----------</code></p><p><code>-- UHD Device 0</code></p><p><code>----------=
----------------------------------------</code></p><p><code>Device Address:=
</code></p><p><code>    serial: 329053B</code></p><p><code>    claimed: Fal=
se</code></p><p><code>    fpga: CG_400</code></p><p><code>    mgmt_addr: 19=
2.168.1.184</code></p><p><code>    name: ni-x4xx-329053B</code></p><p><code=
>    product: x410</code></p><p><code>    type: x4xx</code></p><p>Thanks. A=
lso, I am using a custom image, however, the same issue persisted when I wa=
s trying with the default CG_400 x410 image</p>

--b1_Kit7AxvjUZy2mxDa1KwY84trYfoF6WmeLNuRIs4s7c--

--===============4450618879225730110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4450618879225730110==--
