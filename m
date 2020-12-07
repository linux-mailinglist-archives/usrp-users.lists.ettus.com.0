Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEC82D18D1
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 19:56:35 +0100 (CET)
Received: from [::1] (port=38794 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmLgV-0004PS-Qg; Mon, 07 Dec 2020 13:56:31 -0500
Received: from sonic309-48.consmr.mail.gq1.yahoo.com ([98.137.65.174]:45056)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bassecho21@yahoo.com>)
 id 1kmLgR-0004Hd-O2
 for usrp-users@lists.ettus.com; Mon, 07 Dec 2020 13:56:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1607367342; bh=VovTXy0fX0X1XDR1Ti0TA2fIsW5gVUW7PluC6uk2Fzc=;
 h=Date:From:To:Subject:References:From:Subject;
 b=LucHDBBe75ylIYQ07JEm34+NLd0Rhi2cnI3B5s5cZKNF69Zq3uq0QFxzSq1ievCkHvxoB9UcGnUbl8Hqkcz/5gaLL7ng1a4Q6hYuQvgcuzRZiJo9UMqbB25byixcqajFEeZsBC7kyEF3AovSZq95dAK26w80TmvxerfmzPt7U638fzgJMIz8u40RXyBtR36Dg0PBMg3dC8VujDWCQtRPJrIhgGN1uYtY1gf+2Z3ooKOdduO3DLHxaqw8lUOWJhIBeIVUN11dfIy9BUTkbBQ+aEV8jlQIbM7Dk+Qyc+xBo7veLEi2MZryQtiEIEYLUEyNGNIetxW3pyKPB+yq61kkog==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1607367342; bh=lBYOouZy+U2O5X2eMphbhxY4uLVSI0bf7O+NU0a/wKT=;
 h=Date:From:To:Subject:From:Subject;
 b=icylvbAAmO2xyzyE9Ayb/c/cuixW3aaApUMffMvECL4J6sp7QLDHM94FY3Nw484IK1cijsqe30b179rMd0zqR5DeeeJr9nfCgnzWlCiRXmUY0l7ahJQvyr9zROpklhxgJ0Ycx+fEboabPpDD30ERIkoETWBMp4iLPLtCOawhkuek6fa03s6O2EHsKduhO9hDawF0Hjtao3ua14B6TRwMXSI5oXhNICTmw0FzpL1mSqsIFuxoztlWs2N9POpxFMfDDm5oSpkw8t97IiGy/GDfb30GKiRkGUlnlEaOk7bAqNEBRfbhWjAK0372qpSfPEbxeUIJtNv9pE+WmKRTLx6MVA==
X-YMail-OSG: 21bXx0YVM1mweoxlXofPrfTey2hVrikxDM9wE3ytb1hlO5rFAgnLTozeeajd6Gj
 qpm5MpKP8jNcc_0_dBFQ985rTfRRHf6cjdxkzqE95oO6vHZyZ4h3nyXI66caMw_PB9NjUlHETmwn
 c9X9m3R_lh4hF4WxfytNrojNhDTY.hoC2rfqljXMBW5ebSBRkTZijV1M96RYvyuYtheUbJlgVDKt
 FeL0yzdkXrjLx3ssrKslEjjgCBknPFJ2DdsSkA42vN2xBx6zJnoS0X.9nsfYyAx95rXVBP6j45Cf
 hzyz6h4PcAvifNsv59cGm8q0IdXZktIi8YSGU2_nKDF3LDVqhGvGtLHRUn89jCSGoqFIORgTJQSI
 Z7F.Oa1z0xbUpIOFJi.FTrebXoLbSJhy9ti6iop3NaPSV.sX2MtXVGPV0CYmmVfxAxwSzL5XR3xh
 jPekRW8H2DJEgsftbbG41yh5sLZGZnfcd_IZnzz6QCVY4cvHMzD9veRCknk3gHibXB1l8BfSRmqL
 yXyep5OpBwo2zvpfYA2KwM8iD27.gvT77RZFVmSG7BlqXF7_giEBOCFKMx5QXiPmC8mfHDquyWNH
 zWuKhFLWbyJAZKZG2lq_VL3nKCQOHbZI8jkQ9TBLDzP3d8NXyrTlHi6gKJbGGbk4iYBj_KkdtsPb
 kWsoSuAc4iFnm45.mpxl56u4G1gnTK3.jTJXWX5QqOO08ZQhBGlkfZVTe80QdFeRhp5GyuFRFlfA
 weXmOAmk6jKZeQgk_wEm8qZLemSf1eXW19uZ_eVJyq_BnZr_sN3F21Hz.rhnxL7zdal6GbaxELeD
 iL58lEj1Lr4M7dcuee3nUtintqZq6bEc0KQ51ju467WjRSlQ8bcy.oDTIJhaXAqZMYNw9KPrygL8
 Pg1khZ.8Kb7ArhqFHs0UKY64LWalRgfdbQn_pQcuQRzOwdjdorNzHPNwayXImiQTL3DfP83_FkNo
 kjfH1x9CstPQYfbHwUhytCm5dyRa05dvQHUVdnac3t7zKH74tJ7ZVEpPIG1daWNFGz21T_VS1VwS
 soSt6MawOqEDtegytPne0M0B3tRSmQztqtcQ9KLW1kWCN6XHaaPa4vt8EcYAj08XMQCEnbvdfzOr
 MMgZE4EQ7gzcvaUsfufIN7Cm_NC2aEJtrgbeBneEIpNULOMZkQ7RK24AocUFvb4TisQGNjciM62H
 avJ8OwTLpG9S8wN33_c56E90FFUYEdNB3HFIwWbyFz6PBQRgJw_Aozs7DqfKpBTyxDYgyKv92w4l
 4YPpED49hNtEm.7Ee8cKqJk8gaEIEGi25dV3q4n_Gl73qZQ5eWjXDqALSuA2Eq4HfBVKfPS0N3qF
 5jrlvqcTYWJ8EZPCmJcGGZFyTdRLzrbq5mj0gtcNyk0kwZe2o9PbgRPTfuKr3AKnX7fkh50waUFi
 yk2iBj5McPejPyMoYqkcaCBRY6UktQgmJIDgqC_jj61bgb2WPCAEz8OHdKPXZ5JS3dMSHEHezTKr
 YQzvUZwXA4O_pE8eiofKogKjPOyOrCaIlXKQsbXyGF71pYsCHA.GhRuzKWTSYjiK1KbYta1JFeJj
 7SHsqGIensRLaCH44n9CnuhE5XC5RmpfpRkkYQDsrd6ACqvNcSUDJTbPgHSgPY8PMRbAii6mMIVX
 evff6Tfk.RXDk9FMjk8n.QU06qJQaWd2t6pKH47pPpjoNebaHz1Pq3VwR4MBfynUWCth6.Gjg1js
 0wiMuaa7yVYVJm2lHSkyFuo7STl.tCV5D7lVl.wQGfmsf63ncshKZApNpBJW2r88lGoDQHiXBMlR
 rB_qYV0GTHXdLPz0l48Bb70KhM9PpqrdYZdssG7S67BfGv1chMVys5fC5zwRn1qMVIiYjRiSrRTb
 h0y8QKN2ySXRqFtZZ.UK88j_C8AVDgq1EM7tCxUqfszZ1AFEngmGANCQgP6WFXXzWQ5RapI9CxUx
 3KpVPXYvmYhqvdW5AZsLBCh45KP31rw.9_ktMk35S1qqN5Q_wjxGoZENwJaHTs3O21PlZ1UAF1lY
 Kr_dwUF8MBcrPCmtmBFYMw6tGgIuBKspnENFrawI4sJjFdaieVEpc5m__tPgmNsYKMqaoQ70hdl.
 J8PlGr2t7CzOaIOojzNH1yLa9L2aS6rP97Br41j6oVcyBvhlAjZv4Wc1t5y.DtAyJotlhFOKrncW
 Pjp4k7gLEpLOBnkJFSsf02YPYs5cmjeRHJH.5MZI1IROMrG_tDh.boJsEqv4.68HNhqq40gSntb2
 KW8z3EicgCAGFj6B7z.qqOlt.SOdqR9m8S4g_qBRG885ZaI.Hw6z7YJT3TcPwg3ppQIztdDdWJy2
 4QiJMxqHwJj1HMmvbtdMxY7XfL9IaAXWvKQ7niB8ryUgN3C5cYiYOqGq7NKSGkqMR9xAFiwAP0z7
 S29ZRS_u_ubT4GUfvRP6RgQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.gq1.yahoo.com with HTTP; Mon, 7 Dec 2020 18:55:42 +0000
Date: Mon, 7 Dec 2020 18:53:41 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1711191034.4575835.1607367221112@mail.yahoo.com>
MIME-Version: 1.0
References: <1711191034.4575835.1607367221112.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17111 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64; rv:83.0) Gecko/20100101 Firefox/83.0
Subject: [USRP-users] USRP B200 Function Question
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mark McAllister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark McAllister <bassecho21@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2339436250932869215=="
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

--===============2339436250932869215==
Content-Type: multipart/alternative; 
	boundary="----=_Part_4575834_1895305019.1607367221110"
Content-Length: 2213

------=_Part_4575834_1895305019.1607367221110
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

My senior design team at California State University Northridge is current =
using a USRP N210 as a=C2=A0 local oscillator for a smart antenna array.=20

We're considering purchasing something from the B200 series in order to rep=
lace it since we are current borrowing our N210.=20

Our concern is that the B200 specifies the use of USB 3.0 for connecting to=
 a host computer, and we are currently connecting both an N210 and N310 to =
a router which connects all signals to a host computer.

My main question is whether or not the B200 series will run properly using =
a USB to Ethernet adapter or if the device MUST be connected directly to th=
e host computer via USB.=20

Thank you for your time,=20
Mark McAllister

------=_Part_4575834_1895305019.1607367221110
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir=
=3D"ltr" data-setdir=3D"false">My senior design team at California State Un=
iversity Northridge is current using a USRP N210 as a&nbsp; local oscillato=
r for a smart antenna array. <br><br><div>We're considering purchasing some=
thing from the B200 series in order to replace it since we are current borr=
owing our N210. <br></div><div><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">Our concern is that the B200 specifies the use of USB 3.0 for connecti=
ng to a host computer, and we are currently connecting both an N210 and N31=
0 to a router which connects all signals to a host computer.<br></div><div =
dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D=
"false">My main question is whether or not the B200 series will run properl=
y using a USB to Ethernet adapter or if the device MUST be connected direct=
ly to the host computer via USB. <br><br><div>Thank you for your time, <br>=
</div><div dir=3D"ltr" data-setdir=3D"false">Mark McAllister<br></div></div=
></div></div></body></html>
------=_Part_4575834_1895305019.1607367221110--


--===============2339436250932869215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2339436250932869215==--

