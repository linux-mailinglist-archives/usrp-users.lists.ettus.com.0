Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D21340F8F
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 22:10:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F4186383728
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 17:10:06 -0400 (EDT)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 5BF1A3818C4
	for <USRP-users@lists.ettus.com>; Thu, 18 Mar 2021 17:09:15 -0400 (EDT)
Received: by mail-qt1-f174.google.com with SMTP id x9so5216142qto.8
        for <USRP-users@lists.ettus.com>; Thu, 18 Mar 2021 14:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=hgg6NE0NIKhxxUhpVtNv3upI9MR/ubD9/AqTIfigQbQ=;
        b=U+flM2xvS0it8inImprdSSdmp7TwVJfDYDAV5M461r5w5PxjHf5ab7yGg+0O6sQbHl
         vWKPLhbj2BALwymKuDYFiIS5CWqMiQOt3xdCknXk5WncHHTO1XbzMeKq25ncdpUhxyPE
         l0zJs8ZgsHNKywPBcsnQYewmv9/SqU4ITSScbY9oOr7MoB6pl9ket73vAXApPjWyG+Ag
         M0TGyEd8Ig9xxWPyzhwjaUupGFouM7AsrrP6LM76Uj7ZFoooLMMSaN12SJa7wqB4sQK4
         x9YrIiSoVEpcevTqJGLlo5ssj/SjMOdWqQ2rYEO+miPimYNUhkUqj0Tx1V6ctQv2ewE8
         SXYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=hgg6NE0NIKhxxUhpVtNv3upI9MR/ubD9/AqTIfigQbQ=;
        b=PwEbDY0jFHE6ssHfNf0OAnD5oF5SYoEE/CDbCcFW1z5R4kTTSiLVE2mcrpOYy31j8p
         sIGo58cHo3GNaShz10rcJgP18/wX7sZ3teHa5AquPmM4uZQ6mV63jVVNqFvvJ1fP/1zP
         DXVaZFv6Sv4zMFPO09UyqGCuV3TF4FrUd5GJoVn7c/kK6KVkWDegawhir/t92q493i6s
         N36qX/ws+oz5IWg30SqKlK1ghNB+c5ug93CRBeW+IcD/Fa7CMood/mptUV0NckjgBckW
         8U8gbe5HQeklhn3EaAmkOeeeloq+1GjNU4h+XS/XQtlXdaz4HdVC0zeNc6QnsHj9XuhH
         oMFQ==
X-Gm-Message-State: AOAM531ZM0xPwcqYZmoceYyZCs6jqrLpKbEpUgbI7yLMXG4+7dz6/EHf
	iVe2zk0w94vNrq3Tzpa6JwsnAY3IsYo=
X-Google-Smtp-Source: ABdhPJyQfaBkraATTnjMTfmVmZCiuiQj4KHtu4hQZq6olrSUXFXqLeqS+jrFpsh5e3x612f9UCrmjg==
X-Received: by 2002:a05:622a:50c:: with SMTP id l12mr5458400qtx.44.1616101754601;
        Thu, 18 Mar 2021 14:09:14 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id e15sm2325993qti.79.2021.03.18.14.09.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 14:09:14 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 18 Mar 2021 17:09:13 -0400
Message-Id: <35024BFC-78E2-4CE2-8205-2320945C55F0@gmail.com>
References: <42410c3ff66e427aa6ef3655d8b9837b@oc11expo22.exchange.mit.edu>
In-Reply-To: <42410c3ff66e427aa6ef3655d8b9837b@oc11expo22.exchange.mit.edu>
To: "Richard J. Muri" <ri28856@mit.edu>
X-Mailer: iPhone Mail (18D52)
Message-ID-Hash: EJ7SPQSRO6XSCEZFT2TTOENC7HPAN6IF
X-Message-ID-Hash: EJ7SPQSRO6XSCEZFT2TTOENC7HPAN6IF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 PPS issues
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EJ7SPQSRO6XSCEZFT2TTOENC7HPAN6IF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2283725540216487682=="


--===============2283725540216487682==
Content-Type: multipart/alternative; boundary=Apple-Mail-4033EA0F-9328-400E-A648-789F5642895E
Content-Transfer-Encoding: 7bit


--Apple-Mail-4033EA0F-9328-400E-A648-789F5642895E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Could you post scope traces?  My guess is that the edges are not crisp enoug=
h for the 1PPS input processing.=20

Sent from my iPhone

> On Mar 18, 2021, at 5:00 PM, Richard J. Muri <ri28856@mit.edu> wrote:
>=20
> =EF=BB=BF
> Hello,
> =20
> I=E2=80=99m using a series of x310 USRPs synchronized together using both a=
n external 10 MHz reference and a PPS. I have two configurations: in my lab a=
n Octoclock provides the PPS signal, and in the field configuration I use a G=
PS referenced stratum 1 NTP server. =20
> =20
> The lab configuration USRPs blink an LED on the front panel in time with t=
he PPS. The field configuration does not blink the LEDs at all. Both configu=
rations light the 10 MHz reference LED.
> =20
> I am not fully sure if this is a problem. Occasionally when I run the appl=
ication in the field configuration, it works for about a minute and then app=
ears to drift out of sync, however most of the time everything seems to oper=
ate as intended. It=E2=80=99s very possible my field configuration has other=
 issues, and my system has not quite reached the maturity to be running mult=
iple hour/day long test to measure drift on the application synchronization.=

> =20
> I examined the PPS connection with a T cable and a scope. Both produce a P=
PS pulse with a sharp spike to an initial voltage, followed by a longer expo=
nential curve up to 5V. The octoclock drives to 2.5V initially, and the sync=
server drives to 4V initial.
> =20
> I have tried using shorter cables and a 6dB attenuator on the syncserver c=
onnection to see if I could get the PPS to light, but neither seemed to have=
 any effect.
> =20
> Does anybody have any guidance on how to make sure my x310s in the field c=
onfiguration are actually benefitting from the PPS?
> =20
> Thank you!
> Richard
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-4033EA0F-9328-400E-A648-789F5642895E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Could you post scope traces? &nbsp;My guess=
 is that the edges are not crisp enough for the 1PPS input processing.&nbsp;=
<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><bloc=
kquote type=3D"cite">On Mar 18, 2021, at 5:00 PM, Richard J. Muri &lt;ri2885=
6@mit.edu&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I=E2=80=99m using a series of x310 USRPs synchronized=
 together using both an external 10 MHz reference and a PPS. I have two conf=
igurations: in my lab an Octoclock provides the PPS signal, and in the field=
 configuration I use a
<a href=3D"https://www.microsemi.com/product-directory/gps-instruments/4135-=
syncserver-s650">
GPS referenced stratum 1 NTP server</a>. &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The lab configuration USRPs blink an LED on the front=
 panel in time with the PPS. The field configuration does not blink the LEDs=
 at all. Both configurations light the 10 MHz reference LED.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am not fully sure if this is a problem. Occasionall=
y when I run the application in the field configuration, it works for about a=
 minute and then appears to drift out of sync, however most of the time ever=
ything seems to operate as intended.
 It=E2=80=99s very possible my field configuration has other issues, and my s=
ystem has not quite reached the maturity to be running multiple hour/day lon=
g test to measure drift on the application synchronization.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I examined the PPS connection with a T cable and a sc=
ope. Both produce a PPS pulse with a sharp spike to an initial voltage, foll=
owed by a longer exponential curve up to 5V. The octoclock drives to 2.5V in=
itially, and the syncserver drives
 to 4V initial. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have tried using shorter cables and a 6dB attenuato=
r on the syncserver connection to see if I could get the PPS to light, but n=
either seemed to have any effect.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anybody have any guidance on how to make sure my=
 x310s in the field configuration are actually benefitting from the PPS?<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you!<o:p></o:p></p>
<p class=3D"MsoNormal">Richard<o:p></o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-4033EA0F-9328-400E-A648-789F5642895E--

--===============2283725540216487682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2283725540216487682==--
