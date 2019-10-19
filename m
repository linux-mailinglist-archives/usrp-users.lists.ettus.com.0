Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34530DDB69
	for <lists+usrp-users@lfdr.de>; Sun, 20 Oct 2019 01:14:10 +0200 (CEST)
Received: from [::1] (port=56666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iLxv9-0003yS-Et; Sat, 19 Oct 2019 19:14:03 -0400
Received: from sonic308-37.consmr.mail.ne1.yahoo.com ([66.163.187.60]:46260)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jasonmcbride94@yahoo.com>)
 id 1iLxv6-0003vC-4r
 for usrp-users@lists.ettus.com; Sat, 19 Oct 2019 19:14:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1571526799; bh=JWQR6WRDfMVOIc1wy4Qmt8uhytCnMuqWaAZBuqssH0Y=;
 h=Date:From:To:Subject:References:From:Subject;
 b=GCnKh32eKlFqbsQK/4jKSQfUu+eE6mLdqmXGpjPgXlilRPsdYtsxcavDxAWhLbcz3WXYSBI6+tDOgyOesOsID1QSX6ZDqOsKf1LFyn2h/U4iL3/2C6raSEGVrTkeXDMdi33g1DO3m2TMILtBcW2sNhjbe8iblf2iysD4al6383GRFYwvxXNTgbwindEb7U+KDoYigseMPkMBND8lvxf3KQ4sHRSXd96fEZ4sKNcYfOEROp7ytzp+pvCtWsaIkOVPegMmm3e9PHs/I5rR6iY4uAeoqgZJt7CtUJAWOMsKdj/uJhL9DxwT+VKiANhnBFfWElUnLOcSwJZltuTZ/4jDNQ==
X-YMail-OSG: 1iE7rbAVM1m2jXBD5WIHhgPxrshwoLmnEAXJFKJaWLfw5VpxC_Fgz.5IR.7cAVq
 Bt3iHFuGDBtwMRFRf4uZp.knezkzzMvz4SAqd0ogU8Gu2CG_yML8IAkK3.72nAQHg9YLzGXN.M5g
 xfaQ56S.hsoSjnFoZE48VD49SfHMqx9S3Gcu8tCqAVps3.zYTTZ7bzgn9g32qdOrFE1uo_avjS_e
 CmdFeIhKfizu5nd1ykL5_flRApBeoSTlXjJl7F5F5_DBUpaTjyZIdgBgoL6zxgUkmyxVZUwlMizL
 YXmXa785W.YcaC1mgsSkOKmLu_3wVFOgO3TpMqbp4rxdAwvOAfC3C6.Y5SqqUaTRNcgVeA_FYBJG
 b4FZWPvd5Kc4L2kbDskMCAA0AQe296JIPRtpuGhPzUTe_48whTwiPqHEbzvCe4isqx2cieq1uIEY
 2rJS17w8S1MpGOUYCkDjaoKWxf2P6GFzZDHw2WyM4C9AdUohcCoCjWziD.y.yTOiBEHu5w3FhPib
 9xInOcm3ZLx3mgpUWMiuZE8tDdRlq.09NnVuCk6mPg6WqSg7U4r4nSCq8kqQgRaITg53xaRgM.PZ
 FGjL3oatc.1cqlj4iPTInSCjF5vZ1yPqorR4c7GfXiA7URcZ9KCQRUESLIQj5HVty1kr.0OXVL2H
 BPv3cuwbUj2vPerQ9WctD7baU1qBqohQwEFgLeAtl7n7zZSFnw3JqGeCrRs7mJi_uBPCsXD2DPaw
 .aDOvggBK9rGHnFyxi7hPWsh51fwoOay4ge8QA3SEOQwJL_SPQw13zaiRZ9B3y8iF80ffYKpkIKy
 wyrgO.zC1gI9QT_Dnviq5eppA1k.spRQuukAEDOxE1Yc8psT_IvLxqJXBojyWG8ZYzJOr91jbIhB
 CtwYnbq_FrY9RcPZ5tNT_xf14FZ22.O7uROQhvq1kwpQu3Cp8IsBh8iw6osCh99apLO9tkyro9Rz
 h96sYiWfVND4V.38.LUQwHn9JC2VmxCuXFYLl8ngxrOX72Gf_N47FaFy13EUIRN8bTSfZpq_cWJw
 m_qFQm5YDrLkrZcOAvnNhws2hbYva33a24UQk.Xo6oyVn395xzrmIHowxvdbnSElhNwcygCMTao7
 RrJTs4ypkzGO29jjA9qCqM0XCgcOmwEqXkls2gAjHh_7Ek6T8gIstq2YlBVLzadPvMwVGebtHMxR
 NnTN71obDdBBBahr2G2mmwBxMQSKxOoIXxW5gwRvhU7tOSLD6fpd_8El_j4Z4QPtwVrkOsqAB9.g
 DqqLeNz8kUJjswJLnEQWt4PXFyk_thR7RAbqTw8g6Oz3VRS.Q7FzDsg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ne1.yahoo.com with HTTP; Sat, 19 Oct 2019 23:13:19 +0000
Date: Sat, 19 Oct 2019 23:11:17 +0000 (UTC)
To: usrp-users@lists.ettus.com
Message-ID: <1147349683.4033270.1571526677680@mail.yahoo.com>
MIME-Version: 1.0
References: <1147349683.4033270.1571526677680.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14498 YMailNorrin Mozilla/5.0 (Macintosh;
 Intel Mac OS X 10_15) AppleWebKit/605.1.15 (KHTML, like Gecko)
 Version/13.0.2 Safari/605.1.15
Subject: [USRP-users] tx_time, L, & USRP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jason McBride via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason McBride <jasonmcbride94@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2162864841441628115=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2162864841441628115==
Content-Type: multipart/alternative; 
	boundary="----=_Part_4033269_827596989.1571526677679"
Content-Length: 2667

------=_Part_4033269_827596989.1571526677679
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey everybody, I'm trying to put together a simple bursting example. In gnu=
radio companion I'm generating a PDU, using the framer block, converting to=
 a tagged stream, and then inserting a tx_time tag in an OOT python block. =
The tx_time tag is at the beginning of the streamed frame, just prior to th=
e packet_len tag. I send it to the USRP next.
The USRP is sync'd to PC time at the beginning of the flowgraph, and I set =
the tx_time tag for two seconds in the future. The USRP does seem to transm=
it at that time, but it generates lots of L error symbols, and after the in=
itial transmission stops transmitting. I can see the stream sent to the USR=
P via a tag debug block, so I know the stream is received by the USRP signi=
ficantly prior to transmittal.
Any thoughts as to what's going on? is there something I need to configure =
on the USRP?=C2=A0
Thank you,
Jason
------=_Part_4033269_827596989.1571526677679
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false">Hey everybody, I'm trying to put together a =
simple bursting example. In gnuradio companion I'm generating a PDU, using =
the framer block, converting to a tagged stream, and then inserting a tx_ti=
me tag in an OOT python block. The tx_time tag is at the beginning of the s=
treamed frame, just prior to the packet_len tag. I send it to the USRP next=
.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" da=
ta-setdir=3D"false">The USRP is sync'd to PC time at the beginning of the f=
lowgraph, and I set the tx_time tag for two seconds in the future. The USRP=
 does seem to transmit at that time, but it generates lots of L error symbo=
ls, and after the initial transmission stops transmitting. I can see the st=
ream sent to the USRP via a tag debug block, so I know the stream is receiv=
ed by the USRP significantly prior to transmittal.</div><div dir=3D"ltr" da=
ta-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Any th=
oughts as to what's going on? is there something I need to configure on the=
 USRP?&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">Thank you,</div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Jason</div></di=
v></body></html>
------=_Part_4033269_827596989.1571526677679--


--===============2162864841441628115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2162864841441628115==--

