Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 690E587B88
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2019 15:41:34 +0200 (CEST)
Received: from [::1] (port=33568 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hw59A-00035F-6h; Fri, 09 Aug 2019 09:41:32 -0400
Received: from sonic314-14.consmr.mail.bf2.yahoo.com ([74.6.132.124]:45219)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <royceconnerley@yahoo.com>)
 id 1hvnZq-0000se-PR
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 14:55:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1565290514; bh=+xsWOobgt81nFNeoPQz8E3flm6xG951ps0nMwS6ioQY=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From:Subject;
 b=iGtKudLInZ49/x5GSGuwcTkC5h/hnVrJa0Xq6SvieMjeZY5O6bl2++khy3OAjn/3AlbU+5GPS4RlFktQiPKf3o4k78yVtnLicuXMSVDxa23QlMM1AqFaaN0v/zKieCysqgJrcAiHz+AS+32fIzfAJDOCwTEQVLAb828yzncliN68cK4HyXuAOB5FDiD11fLdjFK66ynyZvYuM5CH1NuHnLN8KBbiiiIK8M2M9HWbKvjCE9hsh38JWokqtwZjNRwTNSJnq1nIfwEhE7+VdxOo94SQghE0PYmRzqNaAZQBcRDYk4r0C+A4uXCzU/eEsNJh56siyMftn/pkDZIbU/Nbsw==
X-YMail-OSG: BBqF8ngVM1kvq2z.wFlyQs_gafPTbcZdlbKZdrPAsdM9RUl8GJADeqi9aSIlUUm
 FJN5ML6GlV_Qa_f_eZZTCaipQ0IYAQp7S2q.ZB9OSIW_lddXgOIBYxL6aLp1jUb59KEoM71QmOx9
 ZUDnwynj59eI0dFAl3eoO.SgolbHtrbPlMB.Y0eBq3CyaebtvpkD5ke9WLG.Yo04XZKbuXY2V8.s
 l8BKqlFGHROtv47aNQ5nzCixQ48NnUtmp0n.8LRfF1UeAECZ44Z4VkvLi8Hn0Y7bfCqX2gUkqTCB
 jgvCLqjZecBGYDMKDJSbUwnVzu_6_5JnqenFDgrkXtgDe_1K7jL5JHr7kWrVxd1hiAnVaEuG5XjQ
 tg3aywUpaFXfdhbGxP7XptNX_c_XlmjMNULdosUBoTmTL45kfz51IitVmqBJU3hKardvA1pFmfco
 u5oEFQeppJJGpuV8OhlgCIogTzjWmQ6Vudc5DoxVBurvEU3gMLZ.iyqufDx325NB.MFCFGACJyyr
 qtaj4WwJjgKU8GJ5C0xP88Zq8mN9yZYoJVVLxCjR6g4Ts2Oekhuj5ccuT3VlTslFIg3uyluCq958
 g7KaRQuQ.Qk9tQsBmqwZpGHEXIpRYg8w6MnGmduONU4EsQmYxAavnXU8epIkO3GRpzmUsr.GC9wG
 S5xzKrcbl7_zF2exBXhJIhsk_CDtx6ugK7vMvT8jNbynUycZ28Ha90ogRq.yrBmA4E_8rJKaf49Z
 GJsNG8p56cWDvryy8whuRnMDyXFUSEr24oLoo33oo7fEHWkdqgzb5SfNM7LL.824Ib8mXWItIrdS
 438xY.V3qhT6baGhvOcfap8AH1KczwNDpaTBLXM6z02d2D.JKBWgsFxMyAEpnRJdk0pXqGoJlXpx
 lKltdR_42q_UVzyyuK4UGKFARfB3xmJACr060x21UJPzyyDYsr5wFho5KFndCDS_iUeS3Khkz8zs
 _3oA2A_pgt8BqZzquXGLcpwqH1vzeOKNIVy0_AwSAkxSIIY4_MZkLDiQO3pAp.XHWFwhei9pRPDZ
 8rt338_ztXoLONl_6hyboBgQpwS4RiBOxBMP9zOxf.hf7sUUpIKCAwjG7ZEehHC.ZsnYj2mRbCWG
 nwh59vQD4BMzXlMNsMiqnBHi5uzeEr_Uod_mJPyG5k86k9Nir8WKLT8QdB6nYbtzpi1MdA9Tiukl
 pfRdEq.W86jmCknow4mvncMkE3FR4AFbl1V1MLH4vgrOxII5xyIIlXlv6H3QxReQ_uplg7WIHDsD
 ISMalAQWm0W2mkFQBz1Zf3aj9DQSUhdfRKKjAO1gc60ZUCA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.bf2.yahoo.com with HTTP; Thu, 8 Aug 2019 18:55:14 +0000
Received: by smtp410.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 1bfe8767012734266cb77f86e7c08c37; 
 Thu, 08 Aug 2019 18:55:09 +0000 (UTC)
Message-Id: <C6A30D56-27FE-4F13-9778-777B1FF64F5D@yahoo.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Thu, 8 Aug 2019 13:55:07 -0500
In-Reply-To: <CA+JMMq_61dwhz=1nQOYEEaiZ05rKR6TeDxb7a0iWjNX13QGPfg@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
References: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
 <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
 <7C7EB5C4-8843-4D92-9E3A-65126048DA13@yahoo.com>
 <CADRnH22cZXxKQ6OhavSOdN+bob520J4rzHSOMooosdQcaeiSsA@mail.gmail.com>
 <4FF2A237-C699-4270-B467-A926FF39F208@yahoo.com>
 <CA+JMMq-x7xhKnsYMuG7WwFR7uGui_Fe8HYscO_RyZLkuD97ecw@mail.gmail.com>
 <CA+JMMq_61dwhz=1nQOYEEaiZ05rKR6TeDxb7a0iWjNX13QGPfg@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Mailman-Approved-At: Fri, 09 Aug 2019 09:41:29 -0400
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
Content-Type: multipart/mixed; boundary="===============8824875163857218085=="
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


--===============8824875163857218085==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E6E69E99-C3A9-4D9C-88C6-859D02DFDE13"


--Apple-Mail=_E6E69E99-C3A9-4D9C-88C6-859D02DFDE13
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Nick:

That was my first approach, but I can=E2=80=99t even fit two DDCs in the =
E310 FPGA.

Royce

> On Aug 8, 2019, at 1:36 PM, Nick Foster <bistromath@gmail.com> wrote:
>=20
> Nevermind, I just saw you're doing it in an E310. Reading is =
fundamental.
>=20
> You might consider splitting the problem into a pair of DDCs instead.
>=20
> Nick
>=20
> On Thu, Aug 8, 2019 at 11:35 AM Nick Foster <bistromath@gmail.com =
<mailto:bistromath@gmail.com>> wrote:
> Royce,
>=20
> Is there a reason you absolutely need it to be done in RFNoC? This is =
only 5MHz of bandwidth, and any commodity PC should be able to handle =
channelizing it in software.
>=20
> Nick
>=20
> On Thu, Aug 8, 2019 at 11:19 AM Royce Connerley via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
> EJ:
>=20
> I=E2=80=99m currently wanting to receive a total of four channels that =
are 12.5 kHz wide.  The channels are not equally spaced.
>=20
> F2 =3D F1 + 1 MHz
> F3 =3D F1 + 3.99375 MHz
> F4 =3D F3 + 1 MHz
>=20
> For this type of system, I typically have a number of channel pairs =
(repeater output and input separated by 1 MHz) that I need to monitor.
>=20
> Royce
>=20
>> On Aug 8, 2019, at 8:51 AM, EJ Kreinar <ejkreinar@gmail.com =
<mailto:ejkreinar@gmail.com>> wrote:
>>=20
>> Hi Royce,
>>=20
>> Can you walk me through your use case real quick?
>>=20
>> - How many channels?
>> - How wide is each channel?
>> - Are the channels equally spaced?
>>=20
>> The polyphase channelizer in theseus-cores currently has a static =
number of "max channels" that get instantiated.... which is not =
insignificant. We've discussed exposing a build-time parameter that =
could scale down the max number of channels to save some resources, but =
1) that hasn't been implemented yet and 2) I'm not totally confident it =
would fit in the e310 anyway.=20
>>=20
>> But lets think through your scenario and we can discuss where we'd =
need the channelizer to go for it to work... for example, you probably =
also need the FPGA-based channel downselection in the channelizer -- the =
E310 wont be able to return all channels in real time! Or, we could =
consider other approaches -- the DDC channelizer in theseus-cores might =
be workable if you have just small number of channels and you need =
arbitrary spacing/channel widths.
>>=20
>> EJ
>>=20
>> On Thu, Aug 8, 2019, 8:52 AM Royce Connerley =
<royceconnerley@yahoo.com <mailto:royceconnerley@yahoo.com>> wrote:
>> EJ:
>>=20
>> I want to pick a few narrowband channels scattered over about 5 MHz.  =
I would like to be able to use your channelizer in an E310.  Do you =
think it could fit in the E310=E2=80=99s FPGA?  When I run =
uhd_image_builder with just the channelizer and a FIFO, I=E2=80=99m =
seeing the following errors:
>>=20
>> ERROR: [Place 30-640] Place Check : This design requires more =
RAMB36/FIFO cells than are available in the target device. This design =
requires 324 of such cell types but only 140 compatible sites are =
available in the target device. Please analyze your synthesis results =
and constraints to ensure the design is mapped to Xilinx primitives as =
expected. If so, please consider targeting a larger device.
>> ERROR: [Place 30-640] Place Check : This design requires more RAMB18 =
and RAMB36/FIFO cells than are available in the target device. This =
design requires 703 of such cell types but only 280 compatible sites are =
available in the target device. Please analyze your synthesis results =
and constraints to ensure the design is mapped to Xilinx primitives as =
expected. If so, please consider targeting a larger device.
>> ERROR: [Place 30-640] Place Check : This design requires more =
RAMB36E1 cells than are available in the target device. This design =
requires 324 of such cell types but only 140 compatible sites are =
available in the target device. Please analyze your synthesis results =
and constraints to ensure the design is mapped to Xilinx primitives as =
expected. If so, please consider targeting a larger device.
>>=20
>> Royce Connerley
>>=20
>>> On Jul 24, 2019, at 6:34 PM, EJ Kreinar <ejkreinar@gmail.com =
<mailto:ejkreinar@gmail.com>> wrote:
>>>=20
>>> Hi Royce,
>>>=20
>>> Phil and I have been working on the channelizer in the theseus-cores =
repo here: gitlab.com/theseus-cores/theseus-cores =
<http://gitlab.com/theseus-cores/theseus-cores>
>>>=20
>>> The master branch has a (potentially) working channelizer, at least =
according to my recent tests on the x310, as long as the network =
interface supports the desired output rate.
>>>=20
>>> There's also an fpga solution for channel downselection in a branch =
that Phil put together. The ball is in my court to turn the crank and =
merge to master with supporting software, but I haven't gotten much of a =
chance recently.=20
>>>=20
>>> If you're interested in testing we could definitely use some more =
people to give it a shot :D Let me know if you need a sample bitstream =
or if you can build one yourself.
>>>=20
>>> EJ
>>>=20
>>> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC =
polyphase channelizer.  Has there been any activity on this?
>>>=20
>>> Royce Connerley
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>


--Apple-Mail=_E6E69E99-C3A9-4D9C-88C6-859D02DFDE13
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Nick:<div class=3D""><br class=3D""></div><div class=3D"">That =
was my first approach, but I can=E2=80=99t even fit two DDCs in the E310 =
FPGA.</div><div class=3D""><br class=3D""></div><div class=3D"">Royce<br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Aug 8, 2019, at 1:36 PM, Nick Foster &lt;<a =
href=3D"mailto:bistromath@gmail.com" =
class=3D"">bistromath@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"">Nevermind, I just saw you're doing it in an =
E310. Reading is fundamental.</div><div class=3D""><br =
class=3D""></div><div class=3D"">You might consider splitting the =
problem into a pair of DDCs instead.<br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D"">Nick<br =
class=3D""></div></div><br class=3D""><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019 at 11:35 AM Nick =
Foster &lt;<a href=3D"mailto:bistromath@gmail.com" =
class=3D"">bistromath@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr" class=3D""><div =
class=3D"">Royce,</div><div class=3D""><br class=3D""></div><div =
class=3D"">Is there a reason you absolutely need it to be done in RFNoC? =
This is only 5MHz of bandwidth, and any commodity PC should be able to =
handle channelizing it in software.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Nick<br class=3D""></div></div><br =
class=3D""><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Aug 8, 2019 at 11:19 AM Royce Connerley via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" class=3D"">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br class=3D""></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div class=3D"">EJ:<div class=3D""><br =
class=3D""></div><div class=3D"">I=E2=80=99m currently wanting to =
receive a total of four channels that are 12.5 kHz wide.&nbsp; The =
channels are not equally spaced.</div><div class=3D""><br =
class=3D""></div><div class=3D"">F2 =3D F1 + 1 MHz</div><div class=3D"">F3=
 =3D F1 + 3.99375 MHz</div><div class=3D"">F4 =3D F3 + 1 MHz</div><div =
class=3D""><br class=3D""></div><div class=3D"">For this type of system, =
I typically have a number of channel pairs (repeater output and input =
separated by 1 MHz) that I need to monitor.<br class=3D""><div =
class=3D""><br class=3D""></div><div class=3D"">Royce</div><div =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Aug 8, 2019, at 8:51 AM, EJ Kreinar &lt;<a =
href=3D"mailto:ejkreinar@gmail.com" target=3D"_blank" =
class=3D"">ejkreinar@gmail.com</a>&gt; wrote:</div><br =
class=3D"gmail-m_-7263944204764884790gmail-m_-7668041020443800314Apple-int=
erchange-newline"><div class=3D""><div dir=3D"ltr" class=3D""><div =
dir=3D"auto" class=3D"">Hi Royce,<div dir=3D"auto" class=3D""><br =
class=3D""></div><div dir=3D"auto" class=3D"">Can you walk me through =
your use case real quick?</div><div dir=3D"auto" class=3D""><br =
class=3D""></div><div dir=3D"auto" class=3D"">- How many =
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
rgb(204,204,204);padding-left:1ex"><div class=3D"">EJ:<div class=3D""><br =
class=3D""></div><div class=3D"">I want to pick a few narrowband =
channels scattered over about 5 MHz.&nbsp; I would like to be able to =
use your channelizer in an E310.&nbsp; Do you think it could fit in the =
E310=E2=80=99s FPGA?&nbsp; When I run uhd_image_builder with just the =
channelizer and a FIFO, I=E2=80=99m seeing the following =
errors:</div><div class=3D""><br class=3D""></div><div class=3D""><div =
class=3D"">ERROR: [Place 30-640] Place Check : This design requires more =
RAMB36/FIFO cells than are available in the target device. This design =
requires 324 of such cell types but only 140 compatible sites are =
available in the target device. Please analyze your synthesis results =
and constraints to ensure the design is mapped to Xilinx primitives as =
expected. If so, please consider targeting a larger device.</div><div =
class=3D"">ERROR: [Place 30-640] Place Check : This design requires more =
RAMB18 and RAMB36/FIFO cells than are available in the target device. =
This design requires 703 of such cell types but only 280 compatible =
sites are available in the target device. Please analyze your synthesis =
results and constraints to ensure the design is mapped to Xilinx =
primitives as expected. If so, please consider targeting a larger =
device.</div><div class=3D"">ERROR: [Place 30-640] Place Check : This =
design requires more RAMB36E1 cells than are available in the target =
device. This design requires 324 of such cell types but only 140 =
compatible sites are available in the target device. Please analyze your =
synthesis results and constraints to ensure the design is mapped to =
Xilinx primitives as expected. If so, please consider targeting a larger =
device.</div></div><div class=3D""><br class=3D""></div><div =
class=3D"">Royce Connerley</div><div class=3D""><br class=3D""><blockquote=
 type=3D"cite" class=3D""><div class=3D"">On Jul 24, 2019, at 6:34 PM, =
EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">ejkreinar@gmail.com</a>&gt; wrote:</div><br =
class=3D"gmail-m_-7263944204764884790gmail-m_-7668041020443800314gmail-m_-=
7955918035240629135m_-4832231494987881177Apple-interchange-newline"><div =
class=3D""><div dir=3D"auto" class=3D"">Hi Royce,<div dir=3D"auto" =
class=3D""><br class=3D""></div><div dir=3D"auto" class=3D"">Phil and I =
have been working on the channelizer in the theseus-cores repo here: <a =
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
</div></blockquote></div><br =
class=3D""></div></div>_______________________________________________<br =
class=3D"">
USRP-users mailing list<br class=3D"">
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">
<a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
</blockquote></div>
</blockquote></div>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_E6E69E99-C3A9-4D9C-88C6-859D02DFDE13--


--===============8824875163857218085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8824875163857218085==--

