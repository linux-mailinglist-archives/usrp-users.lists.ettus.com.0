Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B55F490A8B6
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 10:47:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93B54385609
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 04:47:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718614033; bh=5JtmLQm3g/vR2PJb2txgWK5mG/uhcWYSyl16Rzg3sgY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=r90q2l1HMWIU5HY3Y239VhKAxomItGiVZ/VS4Cb3BpY/rdzeXcwW2sVBH2gBsTGd0
	 7IUXw2nfqWeGc9vD8QaxzbL4+namPrJpOhlLSzA91JbPpjx3g6fea7mtk+K3Wu2jdw
	 zj3Lb9nT07rBvQtWan1MP9O03A9Ja+uAJvisepAWVovJZwxMkCmo9AOxlKzPcJjGLq
	 /ubvlIeg/oDpKyOhpXJ6g+nCZp+qzmRRL9o6ixCmPXAepw/qgpQDeEVhHa3+siDR5M
	 KWcnhgwdKH3atDbGTOSNaVc4+ZRXcxQ3M3FIQ+H39H2nBB5lfxdddk0F/qlL73sl6z
	 cpgn3sKOyDcAg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8284C3854A9
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 04:46:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718613969; bh=J4NdIpEOtuiDul96fAzb9SJy9/zKRib0C4PkqTwQ4aU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=CLrUmTF2I/2IKQIcrKGWI6jhqAKPSKCtUkFmJ6XWCPauY4nhG6nhalWcJoR7sbids
	 gCYa3PFDCwOtCM+/5dDWdo2P2QBQx2voc+B3Mx+d8II7xVbaBxgqxhdA2LmlBKOtgb
	 AVr2CLvwAq1QMDfSDC8bKY3GbGeD0+3KV/7ncJKKoFPZrJtxnlvTYAwDdFnM5dK2un
	 +gW+naYjmugHtB0UXrMV4UAC66jhqnbtmnuEZrG0Kn2RmJBS8Eo4FylQgODoVDVjH4
	 DU6J/IP4SemHOnjOIie+vlLz+D/Wbb27RcwGw8In/O23QQQSLbMQXR41+wc5fyvUvj
	 K2r/tjqby9bVQ==
Date: Mon, 17 Jun 2024 08:46:09 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <lvzWfI6JQrGZReT5XJcrTBsjyYaOlJl6bXeHNOA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ne6FOOUlHuuo76BbsQ1d0cd6bN1ppE1nKfiUNxMAys@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: AVGDCPZ4SG5P2MJVWJVUTVN5XZQDR6TJ
X-Message-ID-Hash: AVGDCPZ4SG5P2MJVWJVUTVN5XZQDR6TJ
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to put additional RFNoC block in Rx-Tx loopback?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AVGDCPZ4SG5P2MJVWJVUTVN5XZQDR6TJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8084192656594947900=="

This is a multi-part message in MIME format.

--===============8084192656594947900==
Content-Type: multipart/alternative;
 boundary="b1_lvzWfI6JQrGZReT5XJcrTBsjyYaOlJl6bXeHNOA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lvzWfI6JQrGZReT5XJcrTBsjyYaOlJl6bXeHNOA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Sorry for repetition in the last post. I suppose my two previous posts we=
nt to moderation and there was no one to accept them during the Sunday?

I was able to connect =E2=80=98ce=E2=80=99 clock correctly. But changing =
the clock to the one that has chance of making the =E2=80=98gain.yml=E2=80=
=99 work with decimation=3D1 (in =E2=80=98DDC=E2=80=99 block) wasn=E2=80=99=
t the only reason it was not working.

So the question now is: what makes difference so that with decimation=3D1=
 set in the =E2=80=98DDC=E2=80=99 block there is no signal at the output =
of the =E2=80=98Gain=E2=80=98 block (working in a Rx->Tx loopback) while =
with decimation>2 the signal passes through the =E2=80=98Gain=E2=80=98 bl=
ock as expected?

Best Regards,\
Piotr Krysik

--b1_lvzWfI6JQrGZReT5XJcrTBsjyYaOlJl6bXeHNOA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Sorry for repetition in the last post. I suppose my two previous posts=
 went to moderation and there was no one to accept them during the Sunday=
?</p><p>I was able to connect =E2=80=98ce=E2=80=99 clock correctly. But c=
hanging the clock to the one that has chance of making the =E2=80=98gain.=
yml=E2=80=99 work with decimation=3D1 (in =E2=80=98DDC=E2=80=99 block) wa=
sn=E2=80=99t the only reason it was not working.</p><p>So the question no=
w is: what makes difference so that with decimation=3D1 set in the =E2=80=
=98DDC=E2=80=99 block there is no signal at the output of the =E2=80=98Ga=
in=E2=80=98 block (working in a Rx-&gt;Tx loopback) while with decimation=
&gt;2 the signal passes through the =E2=80=98Gain=E2=80=98 block as expec=
ted?</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_lvzWfI6JQrGZReT5XJcrTBsjyYaOlJl6bXeHNOA--

--===============8084192656594947900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8084192656594947900==--
