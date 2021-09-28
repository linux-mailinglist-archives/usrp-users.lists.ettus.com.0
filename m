Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9CF41A437
	for <lists+usrp-users@lfdr.de>; Tue, 28 Sep 2021 02:27:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9F4B383C0D
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 20:27:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="CpT5PHRH";
	dkim-atps=neutral
Received: from sonic309-44.consmr.mail.bf2.yahoo.com (sonic309-44.consmr.mail.bf2.yahoo.com [74.6.129.218])
	by mm2.emwd.com (Postfix) with ESMTPS id F2C0B383C00
	for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 20:26:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1632788793; bh=Vs6s/lS+LY096BPy5aKGlRy7rtzTYSCWKz2TniwnHI8=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=CpT5PHRHFAvdXbtvc9DrFf4RrVmbwejAbkrjUVZ8qUeQWa2oXl41QxtfEu96F34XK+Od87yIlRPnI5MLvkJXlFSZLoJkjRPs/C1qnGzHZP8cKNgC4CfSPa17jaTfdRLbQ8/QrEf6Vh7XjELfgJ1rS9rhlxVNmSiEtM8OdQ9tV1zBuyoBCHEIAUk1Noz2SgP3xfuhpF8rvbccYtXvgjP7QeHjsi8MiOY4r3xXnLAXlMuZpNBhBGt3ktYBWAVs90NM0EkTtcgzqg2qIdfmSXq3l4XtZFZTDPHMPJNqJ5SVUb80pdvrqQBng/jvbljdNPlqnGIls7jVEQx0H8w1ADdvoA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1632788793; bh=yqC3c9aBlyNDuSnwDsQl/YuGFABskm5alnSCLbY5Ref=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=LluZF8RnSp6WnXVLgHPJm3stDzPEUV0xmttJfofZnyV58SSAZtZ7Nz95on1cJRYioe6Y6n3NsIkqdtPxcwlogKQ9Fcy/pGquWQ/aJ0z0eEyKvUcKD2cm3F8ymWaIn2i7Owi3E/N2tvnjbQfn2x+erPwDPL+nRRn/vvxNOrSxUpaQf7e5WUSiUDjpAbefqTgY5om8yO8YvMba4gW+Oa8yhh9gUfyi8mKnruyNaru1umhJtPdFmXBTvCHnfoCxnIB8+tYhi40M6MXG3D9Y/6iHORzJttXxTXK22KOzfd2EV/ITAtz/dA7PQs9qOgW1omXwTdklr78GL0rLH108C7Atgw==
X-YMail-OSG: jDMWqi4VM1lD7qs4XXa82y_W5v9q4ZUDmRgKnlT_qAORjYN5uF1U25kEEPzIo9f
 ZOZHtfGgnfhKjzAhZwFi6jiN1sSV0u3PYKLirk7b8F7qVZtBWei2macjdhm6kO2TIbzixyC2BPYx
 zjkqYik_hiQgxUcl5Uxnx0CoEKpBd.WLdq__LRo3_T80Z4ddYzXDEgVjVO20Q0fgEJOw4PYXhKOb
 Df7aOXWXFdeY.Rgg725QFAr1APh2uoWOhFVkF3FNvvddG4sMNtboYTwFzAEZUTdkrczACAIalSKm
 NETjfr9PVZhyXSjRqP9OC2jqC3lpbvyIu2FuzvcmtS_tzHyfHVF1sJniULSMB0rtt6poFm7BjtPA
 f9XHfFvzc9Bhc44f.LgxrDqGD3PipzmLuJZFK01O79OvVJj0zqqbWxYo9ZGNmPv9ZmMxnM8rGJX1
 NRZFmqJLx4kZlQ7ZrVf9ugcFBsYDGfzpKsVJzg8EYMmx8n5fCWUxZsKHUYTK0DpIG5d5nM.iJ5OW
 fzVUJiohSMhJ8BjcN2hOC5AYS97588KGOgkCetnSYaFCqTKS0xwWMhnFqmljO.1mGaPa0qDp211Z
 lhbzetyuO9V.89PBSu5UYkXXgBne_BSbeqxyHAhNq5.VZMV8duTHn1HCHl7iQZ31.eHeo_70csLp
 HWNQDrnG9jqjRxH53zfzHIY98GuFQtrZRsq7QYPZB0iSQaKratMfvmxKehglHHUA9GDPYvxzLStD
 wo9zg2_6Qpv6L5taMy1j1zV67th5r7smZ.3yP2oPu.b_m65395zsM3BYKXYmZPeFA94xWpKDvkvE
 3jJj0lhOL._rsT7tTugsUYGUQ_6tqt.HWYIBTyK8C7DH76wltKtUsxI8Fr_ruk4ju1GeyguWjUpx
 ncUUKJuy5d9CLU7p0s8JVnGWaCTpP2OE3iVd5.o53rAd.URLoJyh2kTIDvDzIVuaFD6QVIJYIgpf
 BT2EIyTB1v7.7TH_ncktzGUF5UgQCfeJBRJTo1yN9hzndiEkeOfKZbDk3qyX42QqSjZ.q40usmru
 FlsEVbX0Ym5dxk5_Vb5l4R5vKUIXCbkacSXJuElrlBkRAz8j4QiHhdmSvJCboxbohWgdzKlHzqyu
 wwlvjaHJuzE2aaPaffwjJx.8NVscbV3YDKHbbL8nq8W19hjpveFwQ90GWJ9xmWwVy2GS9oDOTC4G
 IXq_tQb5csv9.n2maOXAirmqOdN2nZpaYhC_2d1z_SqOD.pb_8qCN2Nst83VwooDFpQX_M3pLg64
 j0HpRncezHV0.MF5YoXpy9GJPaz6iYXRJmybPEMAFqh1Z7jJyaioDFA9MYOfiARX1UFaOdgwfo8r
 6ciqVVVoAaQK.aPmv3WG8Gn2v1v7uEXFFJqbsENMSJQ0gRtOGRFdEU2ceGn0qtJH29qffQSqZLP5
 SJR5nxpkspPp7V0PCl23BmzxKt2pa3_Ed.SR_eax0vFXGXloUldx.n6UJ1EJRjeg6ZVRPnOnGJZd
 pEiZtQn7iNhnJFXbIe1CvlnkTBNoykcJWMpN4q_u6USLYaKDV3XQF83J78acyr7ce.qi7Tz4exOW
 7aRO05Qx0g1oMKdortdGsJFQyY1bl2WY82_IJk0dGjEl_u7LbcOh16_OBV0BqWKC87tY9KCtpvol
 g3Srdf5X3CN0C5fQDTX7gZhSmhrtJgmc2StzZsheKFMoMMhOPWnBxOU5EXEgCENxDgBwN6no1TE3
 U8cCHtmkEhReJhvwLoMVTFjfCSeeP2OxYUKeYTN_td4IcfzkkhU2YUNmjq0meSvye7o1vn09ur6q
 sEX2WnR38QwHUvvr.MgZBoyCHvXGYyrrkPuRO1X7fRUy.eHosNyaOpu34lKLPSCHeeCCvM1wvXyg
 06vDjUdR8G5sgAWNLFacFFbKwZ31GRAJOVf0.34w1si7iMymMdRma1FaY.YPqPucagzX77AtF4pK
 s8gKPkUEA.kGQqBdYp_WPulqq3T8.vhCVuYdaIB1xgTiRyEiWMG0s1p3XMRZ_d_Xhfg5LeHwSVsf
 ludwjgWCyRz4sBveCC9RTDA4RDMPPrYp.73AIX2N2omsL_dg_hMArc1.6yoRmTAhAl0yJ2Nvn1eB
 9tw9OJ.wK4rjmbc6r1AiRX8wfs27rJgxzyT_XCDh4MwrQpbCyrzHXxZuwVbANNuHGp6DokpGyuwk
 QvwQMFqT_rDieJYZ5J9E7pZ.sNsZ1lnKTQm8w6_nVz61V1b0ynE4slv3eehJ8cyCtxyfrUzhGyY.
 OQU1ja85YotPaSMeFfEXddz7PwkhSxc3oZf.o3vzcCjJ6Wo5_jz9PD5cxeXF8kOc-
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.bf2.yahoo.com with HTTP; Tue, 28 Sep 2021 00:26:33 +0000
Date: Tue, 28 Sep 2021 00:24:32 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <599675072.1235424.1632788672233@mail.yahoo.com>
MIME-Version: 1.0
References: <599675072.1235424.1632788672233.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.19043 YMailNorrin
Message-ID-Hash: AXHB2HU7CYVBOWLOPFOVACDAFSLZYTEK
X-Message-ID-Hash: AXHB2HU7CYVBOWLOPFOVACDAFSLZYTEK
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problems cross compiling for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AXHB2HU7CYVBOWLOPFOVACDAFSLZYTEK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8035747105180577220=="

--===============8035747105180577220==
Content-Type: multipart/alternative;
	boundary="----=_Part_1235423_471891943.1632788672232"

------=_Part_1235423_471891943.1632788672232
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm trying to cross-compile a simple "hello world" c file on a host system =
running ubuntu 18.04. I installed version UHD_4.0.0.HEAD-0-g90ce6062 and I =
have the same version of UHD running on the N310 I'm using. As instructed, =
I followed the steps under "Obtaining an SDK" and "SDK Usage" at the follow=
ing link=20

https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk an=
d the command $CC -dumpmachine shows the correct result as shown.=20


apg@apg-virtual-machine:~$ $CC -dumpmachine
arm-oe-linux-gnueabi
My issue is when i try to compile a simple hello world.c file I get the fol=
lowing=20

apg@apg-virtual-machine:~$ arm-oe-linux-gnueabi-gcc hello_world.c=20
hello_world.c:1:10: fatal error: stdio.h: No such file or directory
=C2=A0=C2=A0=C2=A0 1 | #include <stdio.h>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~~~~
compilation terminated.

Not sure why i'm getting this simple error at the moment but the proper env=
=C2=A0 variables have been set as shown
apg@apg-virtual-machine:~$ echo $CC
arm-oe-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dco=
rtex-a9 --sysroot=3D/usr/local/oecore-x86_64/sysroots/cortexa9t2hf-neon-oe-=
linux-gnueabi
Perhaps there are some add'l paths that I need to be set ??


















------=_Part_1235423_471891943.1632788672232
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir=
=3D"ltr" data-setdir=3D"false"><div dir=3D"ltr" data-setdir=3D"false">I'm t=
rying to cross-compile a simple "hello world" c file on a host system runni=
ng ubuntu 18.04. I installed version <span>UHD_4.0.0.HEAD-0-g90ce6062 and I=
 have the same version of UHD running on the N310 I'm using. As instructed,=
 I followed the steps under "Obtaining an SDK" and "SDK Usage" at the follo=
wing link <br></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><br=
></span></div><div dir=3D"ltr" data-setdir=3D"false"><a href=3D"https://fil=
es.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk" rel=3D"nofol=
low" target=3D"_blank">https://files.ettus.com/manual/page_usrp_n3xx.html#n=
3xx_software_dev_sdk</a> and the command $CC -dumpmachine shows the correct=
 result as shown. <br></div><div dir=3D"ltr" data-setdir=3D"false"><br></di=
v><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-se=
tdir=3D"false"><div>apg@apg-virtual-machine:~$ $CC -dumpmachine<br><div>arm=
-oe-linux-gnueabi</div><div><br></div><div dir=3D"ltr" data-setdir=3D"false=
"><div>My issue is when i try to compile a simple hello world.c file I get =
the following <br></div><div><br></div><div>apg@apg-virtual-machine:~$ arm-=
oe-linux-gnueabi-gcc hello_world.c <br>hello_world.c:1:10: fatal error: std=
io.h: No such file or directory<br>&nbsp;&nbsp;&nbsp; 1 | #include &lt;stdi=
o.h&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br><div>compilation terminated.</div><div>=
<br></div><div><br></div><div dir=3D"ltr" data-setdir=3D"false"><div>Not su=
re why i'm getting this simple error at the moment but the proper env&nbsp;=
 variables have been set as shown</div><div><br></div><div>apg@apg-virtual-=
machine:~$ echo $CC<br><div>arm-oe-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -=
mfloat-abi=3Dhard -mcpu=3Dcortex-a9 --sysroot=3D/usr/local/oecore-x86_64/sy=
sroots/cortexa9t2hf-neon-oe-linux-gnueabi</div><div><br></div><div dir=3D"l=
tr" data-setdir=3D"false">Perhaps there are some add'l paths that I need to=
 be set ??<br></div><br></div></div><div dir=3D"ltr" data-setdir=3D"false">=
<br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr"=
 data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br=
></div><br></div><div><br></div></div><div dir=3D"ltr" data-setdir=3D"false=
"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><br></div><div=
><br></div></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div><br></div><div><br></div><div=
><br></div><div dir=3D"ltr" data-setdir=3D"false"><br><span></span><span></=
span><span></span></div></div></div></body></html>
------=_Part_1235423_471891943.1632788672232--

--===============8035747105180577220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8035747105180577220==--
