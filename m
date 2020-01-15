Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 995F413CEA8
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jan 2020 22:15:18 +0100 (CET)
Received: from [::1] (port=55858 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irq0S-0002t3-3h; Wed, 15 Jan 2020 16:15:16 -0500
Received: from sonic309-21.consmr.mail.ne1.yahoo.com ([66.163.184.147]:41321)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1irq0O-0002gB-B6
 for usrp-users@lists.ettus.com; Wed, 15 Jan 2020 16:15:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1579122870; bh=E8ypAIf9mvKMtcnh+o7GYciObi9nbbc9KLZEP76Qxl8=;
 h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=KgO8GLZXZFs6qoH51AthQWOYQmF5jKzwbcB3ixVyZlh6lInPQqTzLhq2xy9H0dXiorOHc/097IX7NCFaiReumyTaeKwcxu50No+Q8VVtnHYaS7p18arYiAQJWEyo0i/Sagcgg+UfC73ANjYhijZ8JFY/FyRyaRtIANrRE3ZUZhgZZQ4Z8mJplA1AYrS+ps2d/3d1cQheMd9Avh2ZyW7rgyenurCD0hdI/KJJq7/6f7S6X6Nt9gnWBLoPlnC+LbMIo3Hr7FbGyw9v+NZYDYftfFHK2+Zj1sulxIJTxDajbd62YNWD6velEbXgsEa+wTKx0oOZVJ07F4/aBp96F2FOHA==
X-YMail-OSG: 3Z4bQLwVM1kaHE.K_jbe7.aRLKY1GyMV5ccQUL8eUFxlXLbE7G_6yhkBm0UL5g6
 t9QgiUg.kYNklw34xJcDBZyJ6ARhnfGmXWTdPU5ahJyddYA6L0RLEOOz0KkS0Gs.3f6uhbT8sWU7
 zXZQyi5Ro0miGBD.6vvSg.eM.LIY.ESRXm9ptKMlCJdW38Qp8iTstViViUyDzJUFpzIRSQjG4ESN
 T7GkcBS8LMey0yglpjMFsXdpAburTp2bokmERVAIa5BBvvBnKrjbV1hLeFepjp4rVXZqlt5ikIeN
 8nlJlNJJHOt2mk2IqNMBE18EVzw2udGjglvGyWiwYm3O0XtN8WL.qVBUOiKs714Xf8fBnhYgCP6o
 kuEdxnGOY0AhqTT47BRVh1mlb8dQh1jhtLnDYIh0fjepdtY.dq0hIKgYKSVT1uGwnq8s2VxoY0nu
 9qUSjNSkgB0ivThfU7FXYEHuDZgTWlTp1ZUxdl06HU_RyGkMiYsbunK3WIGsaLRwJNcZ59Sd49ry
 O2szcsQz3UWIlYiG4TplUna5cIqq8PVnxEXOaHsOJfGgGQCbf5w1G_PGYx6ifPoEWJ.KtVjlK3uU
 4Njx8AXsLQhadC5N7ZuVy7LeDYqYFqlT.M_0yRol_SLMDASi6cuLTAZjADw4QXkJwdkyEprBxYd4
 6DeFB7ABJsiJrtsGbHcovxFb4qs7Bfnk4oSCDbPTbO7TNG65u57YNkHnIjpEDXNEh6ZKFsP2NI.4
 hwtCuddmnfiT9gj9oVVt6q_VkX0cxMMjuhFrrEJrQmnNqnbLu_tK5WlhoWaekcpOWfCvOyWwvV65
 VaySP6j2fHT9dolbKSXh0RQ55EGE7V4CwB6_qEImGzdqSrOMDN.ZUQw625u3K6RqqZ.RSsahjMxW
 DZd4Dovv5hIyAn5cLWyeRPKpRSjt1H_xutDhN3uN_MM2WJkwWnfW.owWl6mSicXpFjSCwO0CxA2j
 QuuA.hv4D_qvFO98QJ9V53ma_Tox4nMuAzWO1eF.sIQY2STFMy1ULrNDgvt49tKJ2hWU0q4GK3Xo
 l752h2gObNPQMeXha3DhMEL.qnYoudsLMrbbYSGRP7rVB8sd_5neDTwpm3xKSTDg.Q5SJXKyAjJ0
 YiL.g13OfJj20pgzfXXYYLHKqzPgopoCTb7s2RsV8MtVcfpCnjv7tQoIuwUdA.n0z7khFnmH09RS
 5ejsv7radJZUwyGQXfAsQuBrU1TNw3Bun4wmUJe57_4lc2TAfg8iRxzXoBEtbkDUjckjU1SXn5qR
 Hkd.DdfqMVx_5zLjwwEnqDguwR__MXOjR9cH5XS3mWKBYYxssZJga8YCk2mLh.3QaPmcCVNd83Jf
 0vBOPW3J8YIucP4PIZtz3eJQrPdYyfjJdZcw.lNxsSaWNGt1IppBVOEXQnx3.lLoblJ.oXjOsgDO
 DJomLLQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Wed, 15 Jan 2020 21:14:30 +0000
Date: Wed, 15 Jan 2020 21:14:28 +0000 (UTC)
To: "sam.reiter@ettus.com" <sam.reiter@ettus.com>
Message-ID: <564835184.12134837.1579122868761@mail.yahoo.com>
In-Reply-To: <CANf970Z_4UwAS3gJnQmjB0GwNqVQGZSUjjOW-5FHOHcQyHSngw@mail.gmail.com>
References: <1991382912.12022218.1579112665200.ref@mail.yahoo.com>
 <1991382912.12022218.1579112665200@mail.yahoo.com>
 <CANf970Z_4UwAS3gJnQmjB0GwNqVQGZSUjjOW-5FHOHcQyHSngw@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14873 YahooMailAndroidMobile YMobile/1.0
 (com.yahoo.mobile.client.android.mail/6.2.4; Android/10; QP1A.190711.020;
 beyond2; samsung; SM-G975F; 5.86; 2047x1080; )
Subject: Re: [USRP-users] Supported ethernet controllers : X300 and U
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "santu_voonna@yahoo.com" <santu_voonna@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3240288116037448303=="
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

--===============3240288116037448303==
Content-Type: multipart/alternative; 
	boundary="----=_Part_12134836_1696364099.1579122868759"
Content-Length: 5479

------=_Part_12134836_1696364099.1579122868759
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Please see my comments inline:
That card should be fine for streaming, that controller just hasn't been ex=
plicitly tested as far as I know.=C2=A0[SV]: I am TXing data at 50MHz (not =
for rx) with one channel. Are there any other ethernet controllers rested?
Are you planning on using DPDK?[SV]: NO (as I can achieve required sampling=
 rate)

Sent from Yahoo Mail on Android=20
=20
  On Wed, 15 Jan 2020 at 19:07, Sam Reiter<sam.reiter@ettus.com> wrote:   S=
antosh,
That card should be fine for streaming, that controller just hasn't been ex=
plicitly tested as far as I know. Are you planning on using DPDK?
Sam Reiter=20

On Wed, Jan 15, 2020 at 12:26 PM voonna santosh via USRP-users <usrp-users@=
lists.ettus.com> wrote:

Hi There,=C2=A0 =C2=A0Good morning. As I could see in the documentation, Et=
tus recommends "X520 (Ethernet Controller)" at PC/host side. Is this a must=
?=C2=A0=C2=A0 =C2=A0We are planning to use X552 Ethernet Controller and I a=
m wondering will it cause any issue. Can you please let me know what are th=
e Ethernet Controllers can be used at PC side for SFP+ ports?BR,Santosh=C2=
=A0_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

 =20

------=_Part_12134836_1696364099.1579122868759
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Please see my comments inline:<div id=3D"yMail_cursorElementTracker_1579122=
630911"><br></div><div id=3D"yMail_cursorElementTracker_1579122632724"><div=
 id=3D"yMail_cursorElementTracker_1579122643523">That card should be fine f=
or streaming, that controller just hasn't been explicitly tested as far as =
I know.&nbsp;</div><div id=3D"yMail_cursorElementTracker_1579122645279">[SV=
]: I am TXing data at 50MHz (not for rx) with one channel. Are there any ot=
her ethernet controllers rested?</div><div id=3D"yMail_cursorElementTracker=
_1579122645468"><br></div><div id=3D"yMail_cursorElementTracker_15791226454=
68">Are you planning on using DPDK?</div><div id=3D"yMail_cursorElementTrac=
ker_1579122633763">[SV]: NO (as I can achieve required sampling rate)</div>=
</div><div id=3D"yMail_cursorElementTracker_1579122631108"><br><br><div id=
=3D"ymail_android_signature"><a id=3D"ymail_android_signature_link" href=3D=
"https://go.onelink.me/107872968?pid=3DInProduct&amp;c=3DGlobal_Internal_YG=
rowth_AndroidEmailSig__AndroidUsers&amp;af_wl=3Dym&amp;af_sub1=3DInternal&a=
mp;af_sub2=3DGlobal_YGrowth&amp;af_sub3=3DEmailSignature">Sent from Yahoo M=
ail on Android</a></div> <br> <blockquote style=3D"margin: 0 0 20px 0;"> <d=
iv style=3D"font-family:Roboto, sans-serif; color:#6D00F6;"> <div>On Wed, 1=
5 Jan 2020 at 19:07, Sam Reiter</div><div>&lt;sam.reiter@ettus.com&gt; wrot=
e:</div> </div> <div style=3D"padding: 10px 0 0 20px; margin: 10px 0 0 0; b=
order-left: 1px solid #6D00F6;"> <div id=3D"yiv8324057631"><div><div dir=3D=
"ltr"><div>Santosh,</div><div><br clear=3D"none"></div><div id=3D"yMail_cur=
sorElementTracker_1579122604386">That card should be fine for streaming, th=
at controller just hasn't been explicitly tested as far as I know. Are you =
planning on using DPDK?</div><div id=3D"yMail_cursorElementTracker_15791226=
07959"><br clear=3D"none"></div><div><div class=3D"yiv8324057631gmail_signa=
ture" dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter <br cle=
ar=3D"none"></div></div></div></div></div></div><br clear=3D"none"><div cla=
ss=3D"yiv8324057631gmail_quote"><div class=3D"yiv8324057631yqt6353199510 yQ=
TDBase" id=3D"yiv8324057631yqt54110"><div class=3D"yiv8324057631gmail_attr"=
 dir=3D"ltr">On Wed, Jan 15, 2020 at 12:26 PM voonna santosh via USRP-users=
 &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote =
class=3D"yiv8324057631gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex;"><div><div style=3D"font=
-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div =
dir=3D"ltr">Hi There,</div><div dir=3D"ltr">&nbsp; &nbsp;Good morning. As I=
 could see in the documentation, Ettus recommends "X520 (Ethernet Controlle=
r)" at PC/host side. Is this a must?&nbsp;</div><div dir=3D"ltr">&nbsp; &nb=
sp;We are planning to use X552 Ethernet Controller and I am wondering will =
it cause any issue. Can you please let me know what are the Ethernet Contro=
llers can be used at PC side for SFP+ ports?</div><div dir=3D"ltr">BR,</div=
><div dir=3D"ltr">Santosh&nbsp;</div></div></div>__________________________=
_____________________<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-use=
rs@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div> </div> </blockquote></div>
------=_Part_12134836_1696364099.1579122868759--


--===============3240288116037448303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3240288116037448303==--

