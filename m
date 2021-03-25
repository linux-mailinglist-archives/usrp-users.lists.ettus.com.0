Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C82349BAA
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 22:29:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28FB7383DC8
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 17:29:58 -0400 (EDT)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E888383E01
	for <USRP-users@lists.ettus.com>; Thu, 25 Mar 2021 17:29:06 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id y5so3315465qkl.9
        for <USRP-users@lists.ettus.com>; Thu, 25 Mar 2021 14:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=9idblMD2w4vo8JuXQ7UD4jfGyLIsqRQv0ILO1jramMo=;
        b=LVeJs3VKc07C+1qYujljuOgd5VlP9mKacBtVDThUVFoVwUQ4REcNRoa+mwS5LFR+UC
         FHRcMj4V81ULVKtSb0jqj+2juayG0BaX/51hILc0VXQBYcq1w/XkMg9AyP0zpNswDfD1
         S3v3UjrubURNpGsE3+/QfHx8DB/1MxW0yur2r6HGR+Yl5OuwnKXdHYaC0K+mW/Rc3tDx
         F6KOkzthtERMUpZS/loVXfYaKP5q+hlciSFT9YJkw06PoNBF23Ay+Or2no4X7aV2LkAg
         pyzLajPDigh3R8S0NOJ8JBIuNqul1XXkH/jqyyQBA7IsXQ7Mx1xggHZdx/XXRS8bN6zw
         KW8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=9idblMD2w4vo8JuXQ7UD4jfGyLIsqRQv0ILO1jramMo=;
        b=tGfW5K0CsucbNM5hiIsP4R1wTghuu7oCBzu74iJSa6uzW43knUeiJt82qscQDRBSMJ
         a6tIT5/R+3Ga9zPoSZ1HuNdSqFUhteKV/4BQASfisR10IswvLfiDuJ7F27qY6tpc3phd
         6gHMi6ARrFoRKVfgk1jNredDWp8M4jMPDUWfZPmDUsO46uWZIzqeG3rUwjO5lZPkKxx1
         tQx+/6onAnAoNt12QTJ3qwN8Ph9Y3RCpuucV7IhtvjeR33nx+46COq+b3pGOE3ZQOWQd
         NknAEwpquKyoICJC0P/OKiu3PoCC7vGHmQvayBXdHuhRYkp58M9WCI1bHhcKGvvb7Qpi
         4A6A==
X-Gm-Message-State: AOAM533UsPS45f6Z/SROcNhb9MMf/ePPQ+0xF0mTvKtk14+JYHg8dnbl
	bli/SVuphgYlAWFtqoujRjM2kYGukOA=
X-Google-Smtp-Source: ABdhPJws4WbNoQzh6Q4o5QI2CVvmIvjH0BXocIjAXke8bnLnm9PNJAW9EWVumw3UU3ckGpuD8d5EPQ==
X-Received: by 2002:a05:620a:cf4:: with SMTP id c20mr9971399qkj.134.1616707745753;
        Thu, 25 Mar 2021 14:29:05 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id l14sm4564922qtp.4.2021.03.25.14.29.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 14:29:05 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 25 Mar 2021 17:29:04 -0400
Message-Id: <9EB55D3B-393F-4114-B4B9-BDAACC7CFCB0@gmail.com>
References: <CO6PR19MB48017AA0B3E1F4B0414D5966C6629@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB48017AA0B3E1F4B0414D5966C6629@CO6PR19MB4801.namprd19.prod.outlook.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: OHJBFWCAJZ3HAJS7IMRASOSRJKGPHIFS
X-Message-ID-Hash: OHJBFWCAJZ3HAJS7IMRASOSRJKGPHIFS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Strong noise added to signal transmitted by X310 with a UBX 40 daughterboard
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OHJBFWCAJZ3HAJS7IMRASOSRJKGPHIFS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2296246001096603545=="


--===============2296246001096603545==
Content-Type: multipart/alternative; boundary=Apple-Mail-3F6C1FCB-EC29-400E-B43E-EFC7766BC2EC
Content-Transfer-Encoding: 7bit


--Apple-Mail-3F6C1FCB-EC29-400E-B43E-EFC7766BC2EC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

If you move the TX out of band with respect to the RX do you still see the n=
oise when the TX graph starts?



Sent from my iPhone

> On Mar 25, 2021, at 3:57 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com>=
 wrote:
>=20
> =EF=BB=BF
> So I was able to test setting up both USRPs with the same 10 MHz reference=
 signal, and there was no improvement to the noise being added.
> =20
> If the flowgraph just emits a CW tone, we see a similar response, the adde=
d noise is still there and at the same level, we just have the added spike o=
f the CW tone at the frequency we set it to.
> =20
> Best Regards,
> =20
> Jerrid
> =20
> From: Marcus D Leech <patchvonbraun@gmail.com>=20
> Sent: Wednesday, March 24, 2021 5:01 PM
> To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
> Cc: USRP-users@lists.ettus.com
> Subject: Re: [USRP-users] Strong noise added to signal transmitted by X310=
 with a UBX 40 daughterboard
> =20
> You don=E2=80=99t need 1PPS for this. Having an external high quality refe=
rence may help, assuming my guess about your issue is correct. =20
> =20
> What happens if your flow graph just simply emits a Cw tone, using the mut=
e function perhaps tied to a GUI control or some such.=20
>=20
> Sent from my iPhone
>=20
>=20
> On Mar 24, 2021, at 7:13 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com>=
 wrote:
>=20
> =EF=BB=BF
> Ok, if that=E2=80=99s the case, would it help to have both USRPs connected=
 to the same 10 MHz reference signal and PPS? In this situation, would I nee=
d to provide a secondary source for the PPS, or can that use the 10 Mhz refe=
rence as well?
> =20
> Best Regards,
> =20
> Jerrid
> =20
> From: Marcus D. Leech <patchvonbraun@gmail.com>=20
> Sent: Wednesday, March 24, 2021 2:23 PM
> To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
> Cc: USRP-users@lists.ettus.com
> Subject: Re: [USRP-users] Strong noise added to signal transmitted by X310=
 with a UBX 40 daughterboard
> =20
> On 03/24/2021 05:10 PM, Jerrid Plymale wrote:
> The devices are operating using direct connection via coax cables.
> You absolutely need to put a 30dB attenuator in-line to prevent RX destruc=
tion in the case of "ooops" moments from setting the TX
>   power output too high.
>=20
>=20
>=20
> =20
> The target frequency is 1.57542 GHz, and our current bandwidth is 4 MHz. W=
e will need to increase the bandwidth to 20 MHz soon for further system deve=
lopment.
> =20
> The TX and RX gain are maxed on the receiving hardware. The TX gain of the=
 transmitting hardware is set to 0, as at max the noise strength increases t=
o ~ 20 dB.
> =20
> Attached are images of the FFT provided by the Frequency Sink in Gnuradio.=
 Hopefully these give a visual aid for the problem at hand. When I have the t=
ransmitter USRP turned off (image 1), it would seem like the noise floor com=
ing into the USRP is around -94 dB. When the transmitter is turned on and th=
e flowgraph is started with the transmitted signal muted (I am using a pytho=
n block with code to create custom signals that is then connected to a mute b=
lock that then connects to the UHD USRP sink block to be able to mute the si=
gnal during runtime), the noise floor increases to around -78 dB.
> =20
> Best Regards,
> =20
> Jerrid=20
> You are likely just seeing the LO leakage, along with the inevitable phase=
-noise curve of the LO.
>=20
>=20
>=20
>=20
> =20
> From: Marcus D Leech <patchvonbraun@gmail.com>=20
> Sent: Wednesday, March 24, 2021 11:58 AM
> To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
> Cc: USRP-users@lists.ettus.com
> Subject: Re: [USRP-users] Strong noise added to signal transmitted by X310=
 with a UBX 40 daughterboard
> =20
> Is the j B is over-the-air or direct connection?
> =20
> What frequency? Bandwidth?
> =20
> Do you have TX and RX gain turned all the way up?
> =20
> Can you share your flow-graphs, or minimum
> Graphs that show the problem?
>=20
> Sent from my iPhone
>=20
>=20
>=20
>=20
> On Mar 24, 2021, at 12:20 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com=
> wrote:
>=20
> =EF=BB=BF
> Hello All,
> =20
> I have been running tests in which I am transmitting a signal from one USR=
P X310 that=E2=80=99s using a UBX 40 daughterboard, and that signal is being=
 received by another USRP X310 using a UBX 40 daughterboard. I have noticed t=
hat when I have the receiving USRP running with the Gnuradio flowgraph activ=
e, as soon as I start the transmitting USRP=E2=80=99s Gnuradio flowgraph, th=
ere is a jump in the noise floor as it is seen by the receiving USRP, and it=
s roughly a 14 dB increase. This occurs even if I have the signal being tran=
smitted muted. Does anyone have any idea what the source of this added noise=
 could be? It is something that I need to mitigate as much as possible for t=
he tests I am running using these USRPs. Any feedback will be greatly apprec=
iated, thanks!
> =20
> Best Regards,
> =20
> Jerrid
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> =20

--Apple-Mail-3F6C1FCB-EC29-400E-B43E-EFC7766BC2EC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">If you move the TX out of band with respect=
 to the RX do you still see the noise when the TX graph starts?<div><br></di=
v><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><b=
r><blockquote type=3D"cite">On Mar 25, 2021, at 3:57 PM, Jerrid Plymale &lt;=
jerrid.plymale@canyon-us.com&gt; wrote:<br><br></blockquote></div><blockquot=
e type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:windowtext">So I was able to tes=
t setting up both USRPs with the same 10 MHz reference signal, and there was=
 no improvement to the noise being added.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">If the flowgraph jus=
t emits a CW tone, we see a similar response, the added noise is still there=
 and at the same level, we just have the added spike of the CW tone at the f=
requency we set it to.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Best Regards,<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Jerrid <o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></s=
pan></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b><=
span style=3D"color:windowtext"> Marcus D Leech &lt;patchvonbraun@gmail.com&=
gt;
<br>
<b>Sent:</b> Wednesday, March 24, 2021 5:01 PM<br>
<b>To:</b> Jerrid Plymale &lt;jerrid.plymale@canyon-us.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Strong noise added to signal transmitted by=
 X310 with a UBX 40 daughterboard<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">You don=E2=80=99t need 1PPS for this. Having an exter=
nal high quality reference may help, assuming my guess about your issue is c=
orrect. &nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">What happens if your f=
low graph just simply emits a Cw tone, using the mute function perhaps tied t=
o a GUI control or some such.&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Mar 24, 2021, at 7:=
13 PM, Jerrid Plymale &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.com">je=
rrid.plymale@canyon-us.com</a>&gt; wrote:<o:p></o:p></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">=EF=BB=BF <span style=3D"color:windowtext"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Ok, if that=E2=80=99=
s the case, would it help to have both USRPs connected to the same 10 MHz re=
ference signal and PPS? In this situation, would I need to provide a seconda=
ry source for the PPS, or can that use the
 10 Mhz reference as well?</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;</span><o:p></=
o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Best Regards,</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;</span><o:p></=
o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Jerrid</span><o:p></=
o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">&nbsp;</span><o:p></=
o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b><=
span style=3D"color:windowtext"> Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
<br>
<b>Sent:</b> Wednesday, March 24, 2021 2:23 PM<br>
<b>To:</b> Jerrid Plymale &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.com=
">jerrid.plymale@canyon-us.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.et=
tus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Strong noise added to signal transmitted by=
 X310 with a UBX 40 daughterboard</span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 03/24/2021 05:10 PM, Jerrid Plymale wrote:<o:p></o=
:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">The devices are operating using direct connection via=
 coax cables.<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal">You absolutely need to put a 30dB attenuator in-line t=
o prevent RX destruction in the case of "ooops" moments from setting the TX<=
br>
&nbsp; power output too high.<br>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">The target frequency is 1.57542 GHz, and our current b=
andwidth is 4 MHz. We will need to increase the bandwidth to 20 MHz soon for=
 further system development.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">The TX and RX gain are maxed on the receiving hardwar=
e. The TX gain of the transmitting hardware is set to 0, as at max the noise=
 strength increases to ~ 20 dB.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Attached are images of the FFT provided by the Freque=
ncy Sink in Gnuradio. Hopefully these give a visual aid for the problem at h=
and. When I have the transmitter USRP turned off (image 1), it would seem li=
ke the noise floor coming into
 the USRP is around -94 dB. When the transmitter is turned on and the flowgr=
aph is started with the transmitted signal muted (I am using a python block w=
ith code to create custom signals that is then connected to a mute block tha=
t then connects to the UHD USRP
 sink block to be able to mute the signal during runtime), the noise floor i=
ncreases to around -78 dB.
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Jerrid&nbsp; <o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal">You are likely just seeing the LO leakage, along with=
 the inevitable phase-noise curve of the LO.<br>
<br>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b>From:</b> Marcus D Leech <a href=3D"mailto:patchvo=
nbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a> <br>
<b>Sent:</b> Wednesday, March 24, 2021 11:58 AM<br>
<b>To:</b> Jerrid Plymale <a href=3D"mailto:jerrid.plymale@canyon-us.com">&l=
t;jerrid.plymale@canyon-us.com&gt;</a><br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.et=
tus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Strong noise added to signal transmitted by=
 X310 with a UBX 40 daughterboard<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Is the j B is over-the-air or direct connection?<o:p>=
</o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">What frequency? Bandwidth?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Do you have TX and RX gain turned all the way up?<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Can you share your flow-graphs, or minimum<o:p></o:p>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Graphs that show the p=
roblem?<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Mar 24, 2021, at 12=
:20 PM, Jerrid Plymale &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.com">j=
errid.plymale@canyon-us.com</a>&gt; wrote:<o:p></o:p></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p></p>
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">I have been running tests in which I am transmitting a=
 signal from one USRP X310 that=E2=80=99s using a UBX 40 daughterboard, and t=
hat signal is being received by another USRP X310 using a UBX 40 daughterboa=
rd. I have noticed that when I have the
 receiving USRP running with the Gnuradio flowgraph active, as soon as I sta=
rt the transmitting USRP=E2=80=99s Gnuradio flowgraph, there is a jump in th=
e noise floor as it is seen by the receiving USRP, and its roughly a 14 dB i=
ncrease. This occurs even if I have the
 signal being transmitted muted. Does anyone have any idea what the source o=
f this added noise could be? It is something that I need to mitigate as much=
 as possible for the tests I am running using these USRPs. Any feedback will=
 be greatly appreciated, thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
</div>
</blockquote>
</div>
</blockquote>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</blockquote>
</div>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-3F6C1FCB-EC29-400E-B43E-EFC7766BC2EC--

--===============2296246001096603545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2296246001096603545==--
