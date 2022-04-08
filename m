Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE194F947D
	for <lists+usrp-users@lfdr.de>; Fri,  8 Apr 2022 13:51:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BD5E385117
	for <lists+usrp-users@lfdr.de>; Fri,  8 Apr 2022 07:51:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649418675; bh=ewU91hsegJLciW9kaIPiIaRbJooXB3ev1jADAFbRRKM=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=t1NM/BmdTM+JzasU04881BfgJmnI8jrm2wGaEc/cBPIfUPTuGlDtA/BU/pHlxQkGD
	 KLDQR6gbfnw+pPc9dq44Mzs1Jpf/LxyuS+4eCEOGwAiVaHhC1EG0NMcrOaGTr+ayr5
	 vJ8w7cNlwc4FOdWLNgfQQoXTedhGYRHrNTPG8VEOehuHG5U3pyOl3v5CHhDswitRJx
	 Ef4ORBlps3eA9QnNyTwTygFhq0bar0MjWvBpXeBj1WfKycJ/RKCC+4hnmaHrh1eCwD
	 2H9CbKG2BvAYKzdNn/KLhrZZSh+7xRvIr+oSDXYcxeLyF1gfJAN0InyBlqnx4EjVOw
	 y5eIoza8yoh/w==
Received: from ms11p00im-qufo17281801.me.com (ms11p00im-qufo17281801.me.com [17.58.38.55])
	by mm2.emwd.com (Postfix) with ESMTPS id 00C8F384C71
	for <usrp-users@lists.ettus.com>; Fri,  8 Apr 2022 07:50:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="TK4sjkAI";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1649418616; bh=gwMe7x/oUrXOyYou+y/gCUEekccnxncURtIJTRQ7WY4=;
	h=Content-Type:From:Mime-Version:Date:Subject:Message-Id:To;
	b=TK4sjkAIgGZObsOJAnpuYf6665uwq0MoC8KFqD4xHWQk9NY0/ZjnmUy0GCsb7lw0C
	 e4MoI3HknEv+VQprdmagrPoxEcsrbX8cIFLKYwlOdcv+PM5hSCjOa1LD47TiTc1NUc
	 q71H37n/IEZNqg0pbWmIhXEIRWkWDPmNa2/tNDn//kjmBt9AX5vEDSTQ1kvIEo1Yzr
	 AJuTo3IABiSrT96WlZnZpz/oLIj+qroprDLmPoMilb2Ffiz7S9MzRGGGUVqLWbz+Ai
	 y/tNryOSLecjmbfstryewJrBSrvxU2AT2HycVJrXkfH831xzcFBj4/AObe/mFSjnLz
	 ny19bBRqiNQSA==
Received: from smtpclient.apple (ms11p00im-dlb-asmtpmailmevip.me.com [17.57.154.19])
	by ms11p00im-qufo17281801.me.com (Postfix) with ESMTPSA id EB1C7AC04A4
	for <usrp-users@lists.ettus.com>; Fri,  8 Apr 2022 11:50:14 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Fri, 8 Apr 2022 06:50:13 -0500
Message-Id: <37FB7B87-D9CC-4A13-A57B-F20AF0DBBDE8@me.com>
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (19D52)
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.138,18.0.816,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-18=5F01:2020-02-14=5F02,2022-01-18=5F01,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 suspectscore=0
 mlxscore=0 mlxlogscore=797 phishscore=0 bulkscore=0 malwarescore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2204080060
Message-ID-Hash: 5FLEOY2AJTN3MISSCQMGCYQVV3OUXM7Z
X-Message-ID-Hash: 5FLEOY2AJTN3MISSCQMGCYQVV3OUXM7Z
X-MailFrom: rfengr00@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 10GbE NIC for USRP-2944/X310 
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5FLEOY2AJTN3MISSCQMGCYQVV3OUXM7Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Louis Brown via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Louis Brown <rfengr00@me.com>
Content-Type: multipart/mixed; boundary="===============5392087646865198891=="


--===============5392087646865198891==
Content-Type: multipart/alternative; boundary=Apple-Mail-99A1BE09-5752-4059-82E3-C5456CC661F7
Content-Transfer-Encoding: 7bit


--Apple-Mail-99A1BE09-5752-4059-82E3-C5456CC661F7
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This NIC and fiber SFP work fine on the X310.

https://www.amazon.com/gp/aw/d/B01LZRSQM9?psc=3D1&ref=3Dppx_pop_mob_b_asin_t=
itle

https://www.amazon.com/gp/aw/d/B08BP55663?psc=3D1&ref=3Dppx_pop_mob_b_asin_t=
itle

Presently I have a Ubiquiti US-16-XG switch between the PC and X310, and it=E2=
=80=99s fine too.

Lou



> On Apr 8, 2022, at 02:36, usrp-users-request@lists.ettus.com wrote:
>=20
> Re: 10GbE NIC for USRP-2944/X310

--Apple-Mail-99A1BE09-5752-4059-82E3-C5456CC661F7
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"></div><div dir=3D"ltr">Thi=
s NIC and fiber SFP work fine on the X310.</div><div dir=3D"ltr"><br></div><=
div dir=3D"ltr"><a href=3D"https://www.amazon.com/gp/aw/d/B01LZRSQM9?psc=3D1=
&amp;ref=3Dppx_pop_mob_b_asin_title">https://www.amazon.com/gp/aw/d/B01LZRSQ=
M9?psc=3D1&amp;ref=3Dppx_pop_mob_b_asin_title</a></div><div dir=3D"ltr"><br>=
</div><div dir=3D"ltr"><a href=3D"https://www.amazon.com/gp/aw/d/B08BP55663?=
psc=3D1&amp;ref=3Dppx_pop_mob_b_asin_title">https://www.amazon.com/gp/aw/d/B=
08BP55663?psc=3D1&amp;ref=3Dppx_pop_mob_b_asin_title</a></div><div dir=3D"lt=
r"><br></div><div dir=3D"ltr">Presently I have a Ubiquiti US-16-XG switch be=
tween the PC and X310, and it=E2=80=99s fine too.</div><div dir=3D"ltr"><br>=
</div><div dir=3D"ltr">Lou</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">=
<br></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 8, 2022, at 0=
2:36, usrp-users-request@lists.ettus.com wrote:<br><br></blockquote></div><b=
lockquote type=3D"cite"><div dir=3D"ltr">Re: 10GbE NIC for USRP-2944/X310</d=
iv></blockquote></body></html>=

--Apple-Mail-99A1BE09-5752-4059-82E3-C5456CC661F7--

--===============5392087646865198891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5392087646865198891==--
