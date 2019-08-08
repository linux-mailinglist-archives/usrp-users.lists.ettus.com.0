Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A482868A1
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 20:19:47 +0200 (CEST)
Received: from [::1] (port=55350 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvn0r-0004ge-LB; Thu, 08 Aug 2019 14:19:45 -0400
Received: from sonic316-20.consmr.mail.ne1.yahoo.com ([66.163.187.146]:46842)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <royceconnerley@yahoo.com>)
 id 1hvjg1-0000TY-Bd
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 10:46:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1565275520; bh=oD0IapImIPdv5ii5TVAFAkkh/kSSarEqte1igrk/NR8=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From:Subject;
 b=oqPehlZJeHGadpxn2jxxemvfro8alkCjIgdmhSOkDe9L8L8vak6h/ZjKEVzct6lUBUga3Eq8WbfqRKLouKEyffayf7xb7rSIvW8NPbtul5UXxabOUsEJ0+/FrBNoKqnk3ad+q+YTLR/P9O1pS4v14JdEDtfU6Z/dTigfwgPasv2KJbA7xCJzn6Mg699DWYTWoMTPbwFPppl2Q6x/ACl2lpBn6kMm8/3T8Q5w4gjNpTjihv1v2UxxrCw4q9FBGNDD0VWUwLDbYaWH5tzP/g1RBQbSG9f2w9CnIxAGz+MdZv3egJp8neJfaUWuODegYOEJbxGJeJFu2Cio5Y2vNJmYzw==
X-YMail-OSG: b7407coVM1n8Ym_U3IZIUFl9Si6kVOMuHeR9vna882NSorZrHE7KoUkvIfR._pf
 h_jLoD7FPxDCcTzuD.m0yt_jaKuR4tXs05LHUizYzFn8mYPOCCDds3YfaAZ_TDybatwQY5IOrtdF
 JFTMxmuyV4FAJG7GUG3407pI0XsHNgorpIXSgUfxYTpwJc.2Qari4DthB08vb5XnnZj0IQ8nRSn3
 UnvDaNUJqkE5JY__.Fh4aHsOeTUNwVmFbaWwqtAZGaAxqu8exBurkiDH_JJGTg26mx9PNzf_FSjs
 KbVRSi0daVmFzYBAITNo1lttkYef.CZhMpuM22EsglmA1t9Jb.pwLxmPxOUY2M7w8sVWXggMfnOJ
 PP2G_N7uO__SMTxDvzWnaDB6NVJFgZ3Vs65tp.Flx68GSQ3QVC0LK5WTjB0KImzOCmclpK54qQxa
 Edg1qR8DxOyC0K4uZW9bqo2EAbkVVq8trkVW35L1E0K7qXthMOAvpT2Nh06GejS6cx6yifFnmL2L
 .T_T45exs53oT9c6HXQP46fY.cCaeVsW6Kpv0bTudE._L4S2saWN27jzZfb0YX3X9vw8SJ3UZwGG
 _b8k32cPi90nYNnn2etzJ5Zcr4ZCapOhjwfgzWjKkbNsqDhgDbDKsgy0pIjHiMgoh9Oti2IRJxyt
 w23Mxl2pmf6t1LmbNMBE6YwCzxNXu9pePeyqJkDbmIkaeFKexpSyw5UbwViF8ZCCIVoCPzcgeEiW
 mf2jLOoY8REu1lx.E_EJ4VPE8NGQDUnHN97QKAb_h7ytMhc4l7q5OsIsHmj3pPoDC6FPZlfOF3eD
 SGdBbFRllzHi8wNpOb6zhkrBusFml17W.33Hp6jdR8af8kFOFaIMbm3m53d0IZtRe6.WxXxnL_fQ
 Yrlh.sONRREqP3REAoGwU5v8EIlsR8sikfQiBNIKCo_Qa4p5xBEd.Zq7b.ZXnjTcxe3AMBXNC8rE
 ACH9LQMt_ROl7rYUcldoqJ0jvB2k41wLVCzS7OsAPtcTL9I4aYyI5Pb8HSsltAEzebne9UQjeK.7
 dKqm8Zw53Mz_3o1g81LVA0nItWRKoT1RuIGrt9i_OnaernXNUpMFU03q1gBIhPl5ptRZ3WSPx3NE
 vQnyLIpeYT0W_Tk50eLPR3TZjMnG0k0wZU7cYE7eWxpxY0batyvXF6Xk4FZfrn5CyJPyvet1TFxd
 SZgBGMioBMqlsma5DMcPNvlPs0vYBvsNHf.4UI0kXQoZPLGLbpgl7rdj9g0N3g_2dkLHosq1lEnK
 03HZy7eux5hzbDdCr7SLZRw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.ne1.yahoo.com with HTTP; Thu, 8 Aug 2019 14:45:20 +0000
Received: by smtp426.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID bf383e77c0a56dd62ce02dd1294662bd; 
 Thu, 08 Aug 2019 14:45:18 +0000 (UTC)
Message-Id: <4FF2A237-C699-4270-B467-A926FF39F208@yahoo.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Thu, 8 Aug 2019 09:45:16 -0500
In-Reply-To: <CADRnH22cZXxKQ6OhavSOdN+bob520J4rzHSOMooosdQcaeiSsA@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
References: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
 <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
 <7C7EB5C4-8843-4D92-9E3A-65126048DA13@yahoo.com>
 <CADRnH22cZXxKQ6OhavSOdN+bob520J4rzHSOMooosdQcaeiSsA@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Mailman-Approved-At: Thu, 08 Aug 2019 14:19:42 -0400
Subject: Re: [USRP-users] RFNoC Polyphase Channelizer updates
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
From: Royce Connerley via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Royce Connerley <royceconnerley@yahoo.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6097516424813127267=="
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


--===============6097516424813127267==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_066118CE-096C-4443-B45F-DC75A36107F1"


--Apple-Mail=_066118CE-096C-4443-B45F-DC75A36107F1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

EJ:

I=E2=80=99m currently wanting to receive a total of four channels that =
are 12.5 kHz wide.  The channels are not equally spaced.

F2 =3D F1 + 1 MHz
F3 =3D F1 + 3.99375 MHz
F4 =3D F3 + 1 MHz

For this type of system, I typically have a number of channel pairs =
(repeater output and input separated by 1 MHz) that I need to monitor.

Royce

> On Aug 8, 2019, at 8:51 AM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>=20
> Hi Royce,
>=20
> Can you walk me through your use case real quick?
>=20
> - How many channels?
> - How wide is each channel?
> - Are the channels equally spaced?
>=20
> The polyphase channelizer in theseus-cores currently has a static =
number of "max channels" that get instantiated.... which is not =
insignificant. We've discussed exposing a build-time parameter that =
could scale down the max number of channels to save some resources, but =
1) that hasn't been implemented yet and 2) I'm not totally confident it =
would fit in the e310 anyway.=20
>=20
> But lets think through your scenario and we can discuss where we'd =
need the channelizer to go for it to work... for example, you probably =
also need the FPGA-based channel downselection in the channelizer -- the =
E310 wont be able to return all channels in real time! Or, we could =
consider other approaches -- the DDC channelizer in theseus-cores might =
be workable if you have just small number of channels and you need =
arbitrary spacing/channel widths.
>=20
> EJ
>=20
> On Thu, Aug 8, 2019, 8:52 AM Royce Connerley <royceconnerley@yahoo.com =
<mailto:royceconnerley@yahoo.com>> wrote:
> EJ:
>=20
> I want to pick a few narrowband channels scattered over about 5 MHz.  =
I would like to be able to use your channelizer in an E310.  Do you =
think it could fit in the E310=E2=80=99s FPGA?  When I run =
uhd_image_builder with just the channelizer and a FIFO, I=E2=80=99m =
seeing the following errors:
>=20
> ERROR: [Place 30-640] Place Check : This design requires more =
RAMB36/FIFO cells than are available in the target device. This design =
requires 324 of such cell types but only 140 compatible sites are =
available in the target device. Please analyze your synthesis results =
and constraints to ensure the design is mapped to Xilinx primitives as =
expected. If so, please consider targeting a larger device.
> ERROR: [Place 30-640] Place Check : This design requires more RAMB18 =
and RAMB36/FIFO cells than are available in the target device. This =
design requires 703 of such cell types but only 280 compatible sites are =
available in the target device. Please analyze your synthesis results =
and constraints to ensure the design is mapped to Xilinx primitives as =
expected. If so, please consider targeting a larger device.
> ERROR: [Place 30-640] Place Check : This design requires more RAMB36E1 =
cells than are available in the target device. This design requires 324 =
of such cell types but only 140 compatible sites are available in the =
target device. Please analyze your synthesis results and constraints to =
ensure the design is mapped to Xilinx primitives as expected. If so, =
please consider targeting a larger device.
>=20
> Royce Connerley
>=20
>> On Jul 24, 2019, at 6:34 PM, EJ Kreinar <ejkreinar@gmail.com =
<mailto:ejkreinar@gmail.com>> wrote:
>>=20
>> Hi Royce,
>>=20
>> Phil and I have been working on the channelizer in the theseus-cores =
repo here: gitlab.com/theseus-cores/theseus-cores =
<http://gitlab.com/theseus-cores/theseus-cores>
>>=20
>> The master branch has a (potentially) working channelizer, at least =
according to my recent tests on the x310, as long as the network =
interface supports the desired output rate.
>>=20
>> There's also an fpga solution for channel downselection in a branch =
that Phil put together. The ball is in my court to turn the crank and =
merge to master with supporting software, but I haven't gotten much of a =
chance recently.=20
>>=20
>> If you're interested in testing we could definitely use some more =
people to give it a shot :D Let me know if you need a sample bitstream =
or if you can build one yourself.
>>=20
>> EJ
>>=20
>> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC =
polyphase channelizer.  Has there been any activity on this?
>>=20
>> Royce Connerley
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>=20


--Apple-Mail=_066118CE-096C-4443-B45F-DC75A36107F1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">EJ:<div class=3D""><br class=3D""></div><div class=3D"">I=E2=80=
=99m currently wanting to receive a total of four channels that are 12.5 =
kHz wide. &nbsp;The channels are not equally spaced.</div><div =
class=3D""><br class=3D""></div><div class=3D"">F2 =3D F1 + 1 =
MHz</div><div class=3D"">F3 =3D F1 + 3.99375 MHz</div><div class=3D"">F4 =
=3D F3 + 1 MHz</div><div class=3D""><br class=3D""></div><div =
class=3D"">For this type of system, I typically have a number of channel =
pairs (repeater output and input separated by 1 MHz) that I need to =
monitor.<br class=3D""><div><br class=3D""></div><div>Royce</div><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Aug =
8, 2019, at 8:51 AM, EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com"=
 class=3D"">ejkreinar@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div dir=3D"auto" class=3D"">Hi Royce,<div dir=3D"auto" =
class=3D""><br class=3D""></div><div dir=3D"auto" class=3D"">Can you =
walk me through your use case real quick?</div><div dir=3D"auto" =
class=3D""><br class=3D""></div><div dir=3D"auto" class=3D"">- How many =
channels?</div><div dir=3D"auto" class=3D"">- How wide is each =
channel?</div><div dir=3D"auto" class=3D"">- Are the channels equally =
spaced?</div><div dir=3D"auto" class=3D""><br class=3D""></div><div =
dir=3D"auto" class=3D"">The polyphase channelizer in theseus-cores =
currently has a static number of "max channels" that get =
instantiated.... which is not insignificant. We've discussed exposing a =
build-time parameter that could scale down the max number of channels to =
save some resources, but 1) that hasn't been implemented yet and 2) I'm =
not totally confident it would fit in the e310 anyway.&nbsp;</div><div =
dir=3D"auto" class=3D""><br class=3D""></div><div class=3D"">But lets =
think through your scenario and we can discuss where we'd need the =
channelizer to go for it to work... for example, you probably also need =
the FPGA-based channel downselection in the channelizer -- the E310 wont =
be able to return all channels in real time! Or, we could consider other =
approaches -- the DDC channelizer in theseus-cores might be workable if =
you have just small number of channels and you need arbitrary =
spacing/channel widths.</div><div class=3D""><br class=3D""></div><div =
class=3D"">EJ</div></div></div><br class=3D""><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug =
8, 2019, 8:52 AM Royce Connerley &lt;<a =
href=3D"mailto:royceconnerley@yahoo.com" target=3D"_blank" =
class=3D"">royceconnerley@yahoo.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;" class=3D"">EJ:<div class=3D""><br class=3D""></div><div =
class=3D"">I want to pick a few narrowband channels scattered over about =
5 MHz.&nbsp; I would like to be able to use your channelizer in an =
E310.&nbsp; Do you think it could fit in the E310=E2=80=99s FPGA?&nbsp; =
When I run uhd_image_builder with just the channelizer and a FIFO, I=E2=80=
=99m seeing the following errors:</div><div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D"">ERROR: [Place 30-640] =
Place Check : This design requires more RAMB36/FIFO cells than are =
available in the target device. This design requires 324 of such cell =
types but only 140 compatible sites are available in the target device. =
Please analyze your synthesis results and constraints to ensure the =
design is mapped to Xilinx primitives as expected. If so, please =
consider targeting a larger device.</div><div class=3D"">ERROR: [Place =
30-640] Place Check : This design requires more RAMB18 and RAMB36/FIFO =
cells than are available in the target device. This design requires 703 =
of such cell types but only 280 compatible sites are available in the =
target device. Please analyze your synthesis results and constraints to =
ensure the design is mapped to Xilinx primitives as expected. If so, =
please consider targeting a larger device.</div><div class=3D"">ERROR: =
[Place 30-640] Place Check : This design requires more RAMB36E1 cells =
than are available in the target device. This design requires 324 of =
such cell types but only 140 compatible sites are available in the =
target device. Please analyze your synthesis results and constraints to =
ensure the design is mapped to Xilinx primitives as expected. If so, =
please consider targeting a larger device.</div></div><div class=3D""><br =
class=3D""></div><div class=3D"">Royce Connerley</div><div class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Jul =
24, 2019, at 6:34 PM, EJ Kreinar &lt;<a =
href=3D"mailto:ejkreinar@gmail.com" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">ejkreinar@gmail.com</a>&gt; wrote:</div><br =
class=3D"gmail-m_-7955918035240629135m_-4832231494987881177Apple-interchan=
ge-newline"><div class=3D""><div dir=3D"auto" class=3D"">Hi Royce,<div =
dir=3D"auto" class=3D""><br class=3D""></div><div dir=3D"auto" =
class=3D"">Phil and I have been working on the channelizer in the =
theseus-cores repo here: <a =
href=3D"http://gitlab.com/theseus-cores/theseus-cores" rel=3D"noreferrer" =
target=3D"_blank" =
class=3D"">gitlab.com/theseus-cores/theseus-cores</a></div><div =
dir=3D"auto" class=3D""><br class=3D""></div><div dir=3D"auto" =
class=3D"">The master branch has a (potentially) working channelizer, at =
least according to my recent tests on the x310, as long as the network =
interface supports the desired output rate.</div><div dir=3D"auto" =
class=3D""><br class=3D""></div><div dir=3D"auto" class=3D"">There's =
also an fpga solution for channel downselection in a branch that Phil =
put together. The ball is in my court to turn the crank and merge to =
master with supporting software, but I haven't gotten much of a chance =
recently.&nbsp;</div><div dir=3D"auto" class=3D""><br =
class=3D""></div><div dir=3D"auto" class=3D"">If you're interested in =
testing we could definitely use some more people to give it a shot :D =
Let me know if you need a sample bitstream or if you can build one =
yourself.</div><div dir=3D"auto" class=3D""><br class=3D""></div><div =
dir=3D"auto" class=3D"">EJ</div><div dir=3D"auto" =
class=3D""></div></div><br class=3D""><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2019, 4:39 PM Royce =
Connerley via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
 rel=3D"noreferrer" target=3D"_blank" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">At the 2018 GRCon, EJ Kreinar spoke =
about improvements to the RFNoC polyphase channelizer.&nbsp; Has there =
been any activity on this?<br class=3D"">
<br class=3D"">
Royce Connerley<br class=3D"">
_______________________________________________<br class=3D"">
USRP-users mailing list<br class=3D"">
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank" class=3D"">USRP-users@lists.ettus.com</a><br=
 class=3D"">
<a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
</blockquote></div>
</div></blockquote></div><br class=3D""></div></blockquote></div>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_066118CE-096C-4443-B45F-DC75A36107F1--


--===============6097516424813127267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6097516424813127267==--

