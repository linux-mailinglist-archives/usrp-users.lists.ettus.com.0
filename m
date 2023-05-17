Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DFF7074E9
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 00:02:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E18CB3848A7
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 18:02:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684360939; bh=hN6ZJHF5azkMBwK4cWhqDDBNoexUFB35Zss68swYhTs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GXEZl9LCWLcTsjogeIv7PK7E8uS9cRWJdTdNS1ecFqIemCpo3XDvUTTsSQERbFXI9
	 6N40YFBBJvOPpIWeyL1FyiLUjzuvm5nq98MgypPcPXARcpA/9433cFKs4gVh4B6p63
	 qB4HE0l9Hl4CO7jlOdz2rRB3p++B4FPjPHPSJQGIP5Q13bRsqtca6XUU0GvyRoZIXZ
	 mZlCeretTD6Tgkjdh6YhS+0kXG8mQT9FimTP2SLKXKVZq/tZZbl7bvAm0DopYcSXbp
	 JM+symzRfUVfefb9L4aDrWCBJdWb/M9APAkGrnRsoAKoQaSSpenCA7MzEBYbDgQKgA
	 zsSP17kZZZywQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D583384689
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 18:01:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684360914; bh=U1ywq56JOOSVpSCzYv2a69iqJIc+QMsf+4E/BVrb3Dw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=L9Grnl0lWFn0ROchdTA5QIv7QeeXgEIgDkC2RQd0ZveP75HfZPlYuWxyWMzP7R+qJ
	 DU+rokGsHgmuBoqJMuRCQAZVuKqJLyvUhhl6ohjKiThzT3eJhZwRCTGO1w1jqTxYo4
	 Cdgm8vVS9eJ0tTpBAYraiJnsp+RZrEWAZCw6+Y2NgRYb/tfBrvn0mmGor4XM16lbso
	 wTHcof0IxPoWlN2V0W2Djicc40VCiT3xwJnPNRdFsQd36J3CR5pKiHWpw4CkRF/QnD
	 JJfUPE1NlwpW8JgGyUsnnrS192FhoHxrp4CRBLdZQTqse9obs3DpbBikouPBhDMJ0I
	 2IDqXVnkioM9Q==
Date: Wed, 17 May 2023 22:01:54 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5a290988-e8ce-8c37-a5b5-e200960047a9@ettus.com
MIME-Version: 1.0
Message-ID-Hash: T5Q3625ZJAYAHRFGDKS532OLRK4WAP6T
X-Message-ID-Hash: T5Q3625ZJAYAHRFGDKS532OLRK4WAP6T
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T5Q3625ZJAYAHRFGDKS532OLRK4WAP6T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1360912151274594077=="

This is a multi-part message in MIME format.

--===============1360912151274594077==
Content-Type: multipart/alternative;
 boundary="b1_Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus^2,

Thanks for taking a look at this.

Yes, I am using 10G interface, but you will notice my streaming request w=
as only at 200Mbps (via command =E2=80=94rate=3D200e6).

> ```
> eno1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>         inet 192.168.0.67  netmask 255.255.255.0  broadcast 192.168.0.2=
55
>         inet6 fe80::3eec:efff:fec2:4346  prefixlen 64  scopeid 0x20<lin=
k>
>         ether 3c:ec:ef:c2:43:46  txqueuelen 1000  (Ethernet)
>         RX packets 16068286  bytes 7458604025 (7.4 GB)
>         RX errors 0  dropped 113  overruns 0  frame 0
>         TX packets 11987991  bytes 3951547409 (3.9 GB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>=20
> eno2: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9000
>         inet 192.168.30.1  netmask 255.255.255.0  broadcast 192.168.30.=
255
>         inet6 fe80::3eec:efff:fec2:4347  prefixlen 64  scopeid 0x20<lin=
k>
>         ether 3c:ec:ef:c2:43:47  txqueuelen 1000  (Ethernet)
>         RX packets 5544521276  bytes 44302674870930 (44.3 TB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 61549463  bytes 5108838143 (5.1 GB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>=20
> eno2:0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9000
>         inet 192.168.30.30  netmask 255.255.255.0  broadcast 192.168.30=
.255
>         ether 3c:ec:ef:c2:43:47  txqueuelen 1000  (Ethernet)
> ```

You can add eno2:0 through this command =E2=80=9Csudo ifconfig eno2:0 192=
.168.30.30 netmask 255.255.255.0 up=E2=80=9D, but keep in mind if you reb=
oot you will lose it.  tcpdump is promiscuous, so it would see any traffi=
c on 192.168.30.X network. =20

Point taken on rfnoc, but take a look at source is in /uhlib/usrp/cores/x=
port_adapter_ctrl.hpp as you look for the other error message =E2=80=9CDe=
vice was unable to look up Ethernet (MAC)=E2=80=A6=E2=80=9D.  You will al=
so notice the check for for an =E2=80=9Carp=E2=80=9D with a retry count o=
f 3.

Thanks,

=E2=80=94Cy

--b1_Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus^2,</p><p>Thanks for taking a look at this.</p><p>Yes, I am u=
sing 10G interface, but you will notice my streaming request was only at =
200Mbps (via command =E2=80=94rate=3D200e6).</p><blockquote><pre><code>en=
o1: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500
        inet 192.168.0.67  netmask 255.255.255.0  broadcast 192.168.0.255
        inet6 fe80::3eec:efff:fec2:4346  prefixlen 64  scopeid 0x20&lt;li=
nk&gt;
        ether 3c:ec:ef:c2:43:46  txqueuelen 1000  (Ethernet)
        RX packets 16068286  bytes 7458604025 (7.4 GB)
        RX errors 0  dropped 113  overruns 0  frame 0
        TX packets 11987991  bytes 3951547409 (3.9 GB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eno2: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 9000
        inet 192.168.30.1  netmask 255.255.255.0  broadcast 192.168.30.25=
5
        inet6 fe80::3eec:efff:fec2:4347  prefixlen 64  scopeid 0x20&lt;li=
nk&gt;
        ether 3c:ec:ef:c2:43:47  txqueuelen 1000  (Ethernet)
        RX packets 5544521276  bytes 44302674870930 (44.3 TB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 61549463  bytes 5108838143 (5.1 GB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eno2:0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 9000
        inet 192.168.30.30  netmask 255.255.255.0  broadcast 192.168.30.2=
55
        ether 3c:ec:ef:c2:43:47  txqueuelen 1000  (Ethernet)</code></pre>=
</blockquote><p><br></p><p>You can add eno2:0 through this command =E2=80=
=9Csudo ifconfig eno2:0 192.168.30.30 netmask 255.255.255.0 up=E2=80=9D, =
but keep in mind if you reboot you will lose it.  tcpdump is promiscuous,=
 so it would see any traffic on 192.168.30.X network.  </p><p>Point taken=
 on rfnoc, but take a look at source is in /uhlib/usrp/cores/xport_adapte=
r_ctrl.hpp as you look for the other error message =E2=80=9CDevice was un=
able to look up Ethernet (MAC)=E2=80=A6=E2=80=9D.  You will also notice t=
he check for for an =E2=80=9Carp=E2=80=9D with a retry count of 3.</p><p>=
Thanks,</p><p>=E2=80=94Cy</p><p><br></p><p><br></p><p><br></p>


--b1_Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA--

--===============1360912151274594077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1360912151274594077==--
