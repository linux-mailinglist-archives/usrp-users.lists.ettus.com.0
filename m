Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B8791B201
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 00:12:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF2FE3858CE
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 18:12:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719526335; bh=zjMqjz4TjtgbMHCnhNnQuUFbvfRhdD6LBWuLP0gjgVI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VcpwqosNfSuact6C9mRvNd5AcitLx107eDoO1CQU4HsOFaDupOEjx1pQw/+4oMddM
	 gtMHBGbI7VNukFhfsYYFPiFQQSmDuaD2FcbKflxBGj34YlB3EiaZxD2OGbjoZ6ZwfB
	 NYxM40mLU5DHH4cNEJEQsP/UF2tr8/N8fdLOSR7bq2IIifREO4LrA4BB0S6scK2wTq
	 Tysohijgmp88A3vMaDRo09osh3f6636tNk7W8NihMT7h/8SoVHj5E2UhDuuM3zYmHm
	 QUxH3GP87y+RQSTRQMf5lH0QG+yfG/WQUB39nqgowRmT626XUFXFTvnfbMMIR3MPRp
	 opEIrLtp7kh1A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AC1538588F
	for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 18:11:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719526295; bh=cYEtjsxvkIg3gFqJqZkUgDLyBu8+UcoJpk4UE32kDk4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=OfCDUm0265caBvgfAoH+AWVaVoWXSY0ZD4odyqm+vye+vnNXTVXfaN46f9giXLDll
	 qH1jmuw+R908ber1vjrkHINeD6RZxkvgrhaXiX++oL8TPgLGF3CRwo04WjodLvVDov
	 mDMR3UeG6hMsLrhBSuNfiCxYNTWfMDlyPQSujehL9GPLMbgfuIwkPZvX13XjtQWLPA
	 HkIhslzg6bGMYPu42Y/gk11roFfFVdPDAfd7tuNKQnqqnIzREjzJAmljnTmClnYxYq
	 r3yZwFIvWW471BpSIEH8JpkfKcTp6yug8c8Xq3g+u21/e+rA6RFCr2Av7d44xVry3W
	 q2lYuMUGJwUvQ==
Date: Thu, 27 Jun 2024 22:11:35 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <aAafc2i5mSIdCU50LFOtqyd7MjJQC5VlekNM21h6Y@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 2a2f652c-3de3-4174-aed6-db3acc2dd7d2@gmail.com
MIME-Version: 1.0
Message-ID-Hash: MTI3ZPS43H2RY3I2F5H4JQ4GCMVLVEK5
X-Message-ID-Hash: MTI3ZPS43H2RY3I2F5H4JQ4GCMVLVEK5
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MTI3ZPS43H2RY3I2F5H4JQ4GCMVLVEK5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4133989426484149953=="

This is a multi-part message in MIME format.

--===============4133989426484149953==
Content-Type: multipart/alternative;
 boundary="b1_aAafc2i5mSIdCU50LFOtqyd7MjJQC5VlekNM21h6Y"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_aAafc2i5mSIdCU50LFOtqyd7MjJQC5VlekNM21h6Y
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, Did you give the modified host/examples/tx_timed_samples.cpp I provid=
ed above a try?  This maybe the best first path to go down, to make sure =
it is not a UHD thing.  You can just replace the current tx_timed_samples=
.cpp with this one (2 threads ago), then make in (for example) =E2=80=9C\=
~/uhd-4.4.0.0/host/build=E2=80=9D.  Output is in =E2=80=9C\~/uhd-4.4.0.0/=
host/build/examples=E2=80=9D as tx_timed_samples. =20

This is an actual server (64 core) running ubuntu 22.04

```
~$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.4 LTS
Release:        22.04
Codename:       jammy

```

--b1_aAafc2i5mSIdCU50LFOtqyd7MjJQC5VlekNM21h6Y
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi, Did you give the modified host/examples/tx_timed_samples.cpp I pro=
vided above a try?  This maybe the best first path to go down, to make su=
re it is not a UHD thing.  You can just replace the current tx_timed_samp=
les.cpp with this one (2 threads ago), then make in (for example) =E2=80=9C=
~/uhd-4.4.0.0/host/build=E2=80=9D.  Output is in =E2=80=9C~/uhd-4.4.0.0/h=
ost/build/examples=E2=80=9D as tx_timed_samples.  </p><p>This is an actua=
l server (64 core) running ubuntu 22.04</p><pre><code>~$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.4 LTS
Release:        22.04
Codename:       jammy

<br></code></pre>


--b1_aAafc2i5mSIdCU50LFOtqyd7MjJQC5VlekNM21h6Y--

--===============4133989426484149953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4133989426484149953==--
