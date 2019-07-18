Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E156D2B3
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 19:25:09 +0200 (CEST)
Received: from [::1] (port=58218 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoA9U-0008Ej-4f; Thu, 18 Jul 2019 13:25:08 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:40772)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hoA9Q-00087y-4H
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 13:25:04 -0400
Received: by mail-qt1-f173.google.com with SMTP id a15so28015849qtn.7
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 10:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:date:subject:message-id
 :references:to;
 bh=fCri+cURH6mCK40rHjC6vwXzm8mLH3UibV7F22sI/ag=;
 b=aXsF4aBusZWRmIgweQ3CAlsq3K4SyPhw0QMGIEwM/+5byk+7gUehN7uPJzDsBmgNrl
 zyvq2J9iS+IcqzjYIzDFZGbqqV8aMseIMWV+4A1WnIOdRc7Tczi0YtjnSvWWTWh9mA92
 UF73j7NE8UheCgIX226L8aw0lyTJ8OAxp7Msi58KonK1+gUJXmisgWfwAfXiPTzrD7OX
 BU44Vc0rbnascaS6BaJzZlq3o8/WAJ4Zbqti4FhzyHm2Osfk84sv0TsLivC7935fCpHd
 eJRD0wpDORB4qjgB54me1kGQRJHIPbiLu65reRhXV0N6ZYZgENcsysua/KYNhC45/gHP
 vjxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
 :subject:message-id:references:to;
 bh=fCri+cURH6mCK40rHjC6vwXzm8mLH3UibV7F22sI/ag=;
 b=fpbLAldsNCDwAJRBr/he4wwd+Pcg5JljaLSKMM55paJW5pL1q8KHQKf9BxvDbRco7p
 tTC+G1yNLmvtUs6oFh3osD/chkvOd804ZuLjzePnV75nWl7bsWHytuozTFIxs/TIPSYg
 iSFD9H0u0O9QaW3uHw7PMyM1nOJl32xh8YWz7zFRP93Nl9s1AbBhktJU5lPIwq8iceXU
 KsdvVW8RahbjCh0hlMcV/1VxnfjkSNnOfBy9P4afawBFrKiRyBhwqhcypaltvNq9b1gy
 1hC3MiCnk3ECKfxRnrCM1UvHMT0lyLGqfaLmoL4NRS+gOVSJoKLi0xoGPvqIxeKRrjZO
 wI0w==
X-Gm-Message-State: APjAAAW94xoOu56ScPWhvrPL5NBg0Pjq1l6ZZogFRVTMNtaUHgJkXy30
 CgTaXswp0Ng6g4FuzMKc2yQXuctN
X-Google-Smtp-Source: APXvYqw1kRZkkHSi3zS1QEyBVT7st+DDl8V3fOi5poW0Twp8rmXflH31Q7ExXcpBMPOvRKE/1rcqaw==
X-Received: by 2002:a05:6214:2b0:: with SMTP id
 m16mr33833323qvv.23.1563470663457; 
 Thu, 18 Jul 2019 10:24:23 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id s8sm11938525qkg.64.2019.07.18.10.24.22
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 10:24:22 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 18 Jul 2019 13:24:22 -0400
Message-Id: <D975AAE1-4B39-430E-B0AB-C3A996368FB3@gmail.com>
References: <CAKJyDkKyb2H0gi_Kcy_5=YE0NTqLguMVfeWnGT6gXiQDe=3ppA@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (16F203)
Subject: [USRP-users] Fwd:  Phase coherency for low RX frequencies
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============5674937502493196694=="
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


--===============5674937502493196694==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-24D59632-D668-4BB9-B3B2-54A77A0B26DA
Content-Transfer-Encoding: 7bit


--Apple-Mail-24D59632-D668-4BB9-B3B2-54A77A0B26DA
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



>>=20
>> I have just been corrected by one of my colleagues at Ettus.=20
>>=20
>> While there is an up conversion stage for frequencies below 450Mhz, the L=
O for that stage is fixed frequency, and derived from the sample clock and c=
oherent across channels.=20
>>=20
>> So there should be no random phase offset among channels even below 450Mh=
z when LO sharing.=20
>>=20
>>> This is correct as far as I know. Although I don=E2=80=99t have an N320 i=
n my lab, it uses an up conversion scheme for lower frequencies. That scheme=
 does not participate in the LO sharing.=20
>>>=20
>>> Sent from my iPhone
>>>=20
>>>=20
>>> On Jul 18, 2019, at 11:17 AM, Sammy Welschen via USRP-users <usrp-users@=
lists.ettus.com> wrote:
>>>=20
>>> I have to acquire phase coherent data on multiple channels using USRP N3=
10/320 devices.
>>>=20
>>> =20
>>>=20
>>> Am I correct in assuming that for frequencies below 450 MHz, there is no=
 way to remove random phase differences between channels due to the addition=
al frequency shift involved (shown for example in the block diagram  http://=
www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png)? As I underst=
and it, by using the same LO signal for all channels I could remove the diff=
erences for frequencies above 450 MHz, but this is of no use for frequencies=
 below 450 MHz due to this the additional stage.
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-24D59632-D668-4BB9-B3B2-54A77A0B26DA
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><br><br><blockquote type=3D"cite"><div dir=3D=
"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"><br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">I ha=
ve just been corrected by one of my colleagues at Ettus.&nbsp;<div><br></div=
><div>While there is an up conversion stage for frequencies below 450Mhz, th=
e LO for that stage is fixed frequency, and derived from the sample clock an=
d coherent across channels.&nbsp;</div><div><br></div><div>So there should b=
e no random phase offset among channels even below 450Mhz when LO sharing.&n=
bsp;</div><div><br><blockquote type=3D"cite"><div dir=3D"ltr"><div class=3D"=
gmail-m_8464511976241383310WordSection1"><div><div><div><p class=3D"MsoNorma=
l" style=3D"margin-bottom:12pt">This is correct as far as I know. Although I=
 don=E2=80=99t have an N320 in my lab, it uses an up conversion scheme for l=
ower frequencies. That scheme does not participate in the LO sharing.&nbsp;<=
u></u><u></u></p>
<div id=3D"gmail-m_8464511976241383310m_-2455621878214780349AppleMailSignatu=
re">
<p class=3D"MsoNormal">Sent from my iPhone<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><br>
On Jul 18, 2019, at 11:17 AM, Sammy Welschen via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<div>
<p class=3D"MsoNormal">I have to acquire phase coherent data on multiple cha=
nnels using USRP N310/320 devices.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<p class=3D"MsoNormal">Am I correct in assuming that for frequencies below 4=
50 MHz, there is no way to remove random phase differences between channels d=
ue to the additional frequency shift involved (shown for example in the bloc=
k diagram&nbsp;
<a href=3D"https://urldefense.com/v3/__http:/www.ettus.com/wp-content/upload=
s/2019/03/N320BlockDiagram.png__;!fqWJcnlTkjM!9UAjRx1UqNGGgw_MyGxeNp4dcd08af=
k3IjpbsIlbrDYEk9H2AfliCLM52OcRdC4$" target=3D"_blank">
http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png</a>)? A=
s I understand it, by using the same LO signal for all channels I could remo=
ve the differences for frequencies above 450 MHz, but this is of no use for f=
requencies below 450 MHz due
 to this the additional stage.<u></u><u></u></p>
</div>
</div>
</blockquote>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com__;!fqWJcnlTkjM!9UAjRx1UqNGGgw_MyGxeNp4dcd08afk3=
IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg$" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><u></u><u></u></p>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com__;!fqWJcnlTkjM!9UAjRx1UqNGGgw_MyGxeNp4dcd08afk3=
IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg$" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><u></u><u></u></p>
</div>
</div>
</div>


</div></blockquote></div></div></blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-24D59632-D668-4BB9-B3B2-54A77A0B26DA--


--===============5674937502493196694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5674937502493196694==--

