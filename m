Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD695AE718
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 14:01:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDD213818B1
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 08:01:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662465708; bh=IpnLAMpYgwaqQJlScLWREXRGwH2u36wsgL20C9+cn3U=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RnSLuYwuXS8WILZyWfMcOVqBx0WzJp94wgIuW3AGNNsUj3zGH9Gs3x+vy8p4TEAu5
	 My4ldR0SOispiBFf7kL+D/AbyLEbj6V9ROnfPfey+hxydVZgoies2I9C2mfo+O2Aud
	 JfYIMh0xoobrDI2RkTC3QUvKzNC0CFRVRfzpmN10p2h8W0/Mar3qa1tiJa2Om03HT7
	 6RtKd+1JM5Zxu1NVm9BZ7gzgJffyj+/Vqw2QBER39BEDbHkdp6Sp5WyAFqOgic0Dpg
	 rH81KSpHU1f1AURvSj5im73TKZQtvbijuV6fmvDIeZW3kcMKGX+I11pWaAiWY+j4z6
	 r0WrrKVOplc5A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C01A1380DD1
	for <usrp-users@lists.ettus.com>; Tue,  6 Sep 2022 08:00:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662465653; bh=jLaR2XkrHQfYDF7sRaIWFRuYbgr8hRpMWFEULlVQIqE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=bKV/OqJAx8iI2rTHMlnPRU2P2tTcC7/gHzGNDTTDd9eRZ+CSOwSPv2QyBDbRZHK01
	 voA7+0vyAWnoUo7TVYQ/B3+PlsfsB3vesSSkOeSd/9ljugKVqbaERX8ndY1G+niqPy
	 LC8NVcgXiGkdsjEDrWjO8Y/yASz4VaGrcV18rFu0K5bAy/9CBoBycg1a9bTddUSZkn
	 J/1/Y0oyp6XJS5KZs2IZ4fG22UzoejD+ZKAhtoOxQLSI0VRhr3JMlxdeug98a3irvb
	 UUvgsuOm63Hs1MeNN7vP/RD+YmWYdXEQZ+BqlmXREvPhfDdPZOxrtdsDrSOJ/sJf1r
	 0+D/8SAWjgyyA==
Date: Tue, 6 Sep 2022 12:00:53 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <guj8mtUgCUKTyr2NXeykF7A3s8H19j822PBMj1ErAE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7AUEsR9P77hW8bSeMrLN0QdhhvZOGC0JDTC0YoYUVZk@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: JS3E75LCCDWEPDU64MO6P5R7SIGCI75P
X-Message-ID-Hash: JS3E75LCCDWEPDU64MO6P5R7SIGCI75P
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JS3E75LCCDWEPDU64MO6P5R7SIGCI75P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0155744895727143055=="

This is a multi-part message in MIME format.

--===============0155744895727143055==
Content-Type: multipart/alternative;
 boundary="b1_guj8mtUgCUKTyr2NXeykF7A3s8H19j822PBMj1ErAE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_guj8mtUgCUKTyr2NXeykF7A3s8H19j822PBMj1ErAE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

perper@o2.pl wrote:

> Hi,
>
> Fruits aside, that was a valid question. Cause of bad performance when =
combining DPDK with GNU Radio is a topic that needs to be addressed.
>
> My hypothesis regarding the cause was:
>
> DPDK needs few processor cores for itself only. GNU Radio runs a lot of=
 thread (one thread per block +) and it doesn=E2=80=99t care that it trie=
s to run on cores that are busy with DPDK related work. And that causes p=
roblems.
>
> The resulting solution that solved the problem for me:
>
> For every block of the flow-graph run set_processor_affinity with a lis=
t of all processor cores minus DPDK cores, that you set in the /etc/uhd/u=
hd.conf file.

I have to add that this worked with USRP X310, UHD 4.0, Intel X520 or X71=
0 network cards. I can=E2=80=99t get streaming to work without losses for=
 higher rates with DPDK on UHD 4.2. Actually everything works better with=
out DPDK for me currently.

Best Regards,\
Piotr Krysik

--b1_guj8mtUgCUKTyr2NXeykF7A3s8H19j822PBMj1ErAE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>perper@o2.pl wrote:</p><blockquote><p>Hi,</p><p>Fruits aside, that was=
 a valid question. Cause of bad performance when combining DPDK with GNU =
Radio is a topic that needs to be addressed.</p><p>My hypothesis regardin=
g the cause was:</p><p>DPDK needs few processor cores for itself only. GN=
U Radio runs a lot of thread (one thread per block +) and it doesn=E2=80=99=
t care that it tries to run on cores that are busy with DPDK related work=
. And that causes problems.</p><p>The resulting solution that solved the =
problem for me:</p><p>For every block of the flow-graph run set_processor=
_affinity with a list of all processor cores minus DPDK cores, that you s=
et in the /etc/uhd/uhd.conf file.</p></blockquote><p>I have to add that t=
his worked with USRP X310, UHD 4.0, Intel X520 or X710 network cards. I c=
an=E2=80=99t get streaming to work without losses for higher rates with D=
PDK on UHD 4.2. Actually everything works better without DPDK for me curr=
ently.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_guj8mtUgCUKTyr2NXeykF7A3s8H19j822PBMj1ErAE--

--===============0155744895727143055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0155744895727143055==--
