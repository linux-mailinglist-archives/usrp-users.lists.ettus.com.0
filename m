Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C7798C6E0
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 22:34:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 599413851B6
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 16:34:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727814890; bh=+bJLduAYQtDK/k0CXBPq6Rybw7BhsbWame9T7pPtyn0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=IqHhpNs/mLwCGxecP9nsAUWKBXlfEiZOnfAi50tPA9fksUaYC+H4y9EK8qgw+svh+
	 KsD1h75nx6b3dekOZKvluSHaOmzmFP3URJOLo8I+0K98IatpLU/mubiFm4UAs31lyf
	 221IQGgfG/Cg5pfghjU5883TbWdnynz6xYzFU2Le9CGYF995nEJLCpRREANBuzeWma
	 AXud3ss9yjmftifantFu1ItIVg3NbrgZqcJY0Hi2XrNaOmPpk8oHA3kc5sAZ5mE2xz
	 +K+uBcEn+Z5krytDEt422adKo1Jhad7WwI+8CHywKT2SyjGJ4E1/lIuP2Tw2C/seFg
	 8ltJK7BTVOqqA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE7EE3840C0
	for <usrp-users@lists.ettus.com>; Tue,  1 Oct 2024 16:33:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727814830; bh=bvNQMVDcdPU+C3d6vDuwbFgjOzqizS2fq9ygdFTMzXU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Jnowevmx5sNEbLM5swvX6tKf777h93eftzaQwtgyB9eLpPggcwBRTvbB0RaxJeunu
	 CZobQO7GVltBeZuc5Jp/6t55s71snnsVvS584p4S33u7CJFAVbAhATgk5bbNdvDOmM
	 bSj6YZe20yQcGHeJV6r/RV0bKz+fyYvB024uTw+/oT65MjYyYsyHql5XxICnZBMex3
	 EAIEy9BP/CJNkIyTwQh33p9I/uWqUjUhkLl4P/tn5qN243sXLVlNH5uxN4X4kmIvl7
	 BL2XAO6lSd/4yBZt9VwtVl3lpDw8upoz32Ss5jJkKvR8hxNboxWJk9mtJ26FzAWLk4
	 eMHfcxja+v6sQ==
Date: Tue, 1 Oct 2024 20:33:50 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <kyQHVZCRJljxrUOA8gWsAHmdlQqQnQYNaQ7Ip5pSBE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e16da4a1-c2b1-42b1-85cd-b38c251bc94f@gmail.com
MIME-Version: 1.0
Message-ID-Hash: SZ4XNJEZMNY7JN2YWJ4QXMNJAMTI7YVW
X-Message-ID-Hash: SZ4XNJEZMNY7JN2YWJ4QXMNJAMTI7YVW
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SZ4XNJEZMNY7JN2YWJ4QXMNJAMTI7YVW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5565638556822369407=="

This is a multi-part message in MIME format.

--===============5565638556822369407==
Content-Type: multipart/alternative;
 boundary="b1_kyQHVZCRJljxrUOA8gWsAHmdlQqQnQYNaQ7Ip5pSBE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kyQHVZCRJljxrUOA8gWsAHmdlQqQnQYNaQ7Ip5pSBE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I ported USRP X410 code to ZCU111. As the NI/Ettus kernel didn=E2=80=99t =
work straight away (i.e. because of device-tree and bootloader issues) I =
started from booting with a linux-xlnx kernel that I had from Petalinux t=
ogether with device-tree for ZCU111.

I was able to use that kernel to some point, but I don=E2=80=99t remember=
 at the moment if I used it to run any FPGA bitstream. Probably not. Very=
 soon I switched to NI/Ettus kernel by patching it only with necessary ch=
anges (automatic =E2=80=98git bisect=E2=80=99 was indispensable tool that=
 made finding crucial commits from linux-xlnx kernel). The rationale was =
that I wanted to keep changes in relation to the mainline UHD minimal. Bu=
t it also seemed that NI/Ettus kernel needed very few changes to be taken=
 from linux-xlnx in comparison to the other way around (there are for exa=
mple ethernet drivers from NI for 10Gb / 100Gb Ethernet ports that are im=
plemented in FPGA). I don=E2=80=99t know - your situation might be differ=
ent.

All of the kernel patches - both from NI and me are here:\
https://github.com/ptrkrysik/meta-ettus/tree/x411/meta-titanium/recipes-k=
ernel/linux/files

So you can have a look and decide for yourself which path is better for y=
ou.

Best Regards,\
Piotr Krysik

--b1_kyQHVZCRJljxrUOA8gWsAHmdlQqQnQYNaQ7Ip5pSBE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I ported USRP X410 code to ZCU111. As the NI/Ettus kernel d=
idn=E2=80=99t work straight away (i.e. because of device-tree and bootloade=
r issues) I started from booting with a linux-xlnx kernel that I had from P=
etalinux together with device-tree for ZCU111.</p><p>I was able to use that=
 kernel to some point, but I don=E2=80=99t remember at the moment if I used=
 it to run any FPGA bitstream. Probably not. Very soon I switched to NI/Ett=
us kernel by patching it only with necessary changes (automatic =E2=80=
=98git bisect=E2=80=99 was indispensable tool that made finding crucial com=
mits from linux-xlnx kernel). The rationale was that I wanted to keep chang=
es in relation to the mainline UHD minimal. But it also seemed that NI/Ettu=
s kernel needed very few changes to be taken from linux-xlnx in comparison =
to the other way around (there are for example ethernet drivers from NI for=
 10Gb / 100Gb Ethernet ports that are implemented in FPGA). I don=E2=80=
=99t know - your situation might be different.</p><p>All of the kernel patc=
hes - both from NI and me are here:<br>https://github.com/ptrkrysik/meta-et=
tus/tree/x411/meta-titanium/recipes-kernel/linux/files</p><p>So you can hav=
e a look and decide for yourself which path is better for you.</p><p>Best R=
egards,<br>Piotr Krysik</p>

--b1_kyQHVZCRJljxrUOA8gWsAHmdlQqQnQYNaQ7Ip5pSBE--

--===============5565638556822369407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5565638556822369407==--
