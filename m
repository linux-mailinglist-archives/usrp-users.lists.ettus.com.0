Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D9E86281
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 15:01:47 +0200 (CEST)
Received: from [::1] (port=56118 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvi37-0002m0-RY; Thu, 08 Aug 2019 09:01:45 -0400
Received: from sonic307-1.consmr.mail.bf2.yahoo.com ([74.6.134.40]:43591)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <royceconnerley@yahoo.com>)
 id 1hvhv2-0001sb-Pw
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 08:53:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1565268764; bh=1vKBWyAOtc7P/UaSdxD7+04IMNA3d+v65vj/1ZADr8Q=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From:Subject;
 b=SGU59FOkPoVP2PrdJ4h0Cz3aP6CMd5HZZdmOGpmvItrrrvcYFecBEiWhyO5rtVVci8Y8+Bfi/w9+Wq7GALsha0HKBMoIAmQu0tDn4ofqJslFgAiBXTomznenCCKq0ZscaCBOBeRdFfxYZ4BaKP8Ua0ha2h99NZx4bcfyGOZ+3FY/beZDZGLKD5UvVyobOP5bOo/N8sTDkYgZ6plnukUqDIMdMrBZAgGSW8WcnNRYmthMV05p2g4SSIHwd7KcEHiqnRdym9IcgeTPpph8haxUKzRz/1omVJjCq62kyH4pjv7vi9YilnVppqRlLvOEXKTDWAi1CXp6l/3byTQVXP7Y3A==
X-YMail-OSG: fulggewVM1nOXmgdBwMO52c5ejElhbK3PeHYichmqmm490.YjMtlr7gKhxneRFG
 e16m719u4hS7uE.Hyen_OLPy.UEmlmprm7kS7cSmiS_vcNJWES5HSnO.vRXA..Md11zvjebw4mne
 Xd_ZbjoJieO5wDLf6uUxGms5eQnr.TL0wZg14A3CMIcIT73ynL04ROEUppgvgwOeTOPJBgttx4Cd
 t5Runndb8w_9L0qM3LRjqxJfpjxs6LY1OGbtZEfnA.9BdZ38Jt.ZoUn16SRZ0kE6QqZB9iV_8xza
 jTyvMVuOxXuMuEkwGF1qB38qSf89m8OR49ITwFxyrFZIToYsSsi5jWuFywhEzir4l0sjwCBQ81Xo
 PupGLmdlehN2a8cfHZAggdDdmbc_B6tZNVKI.a3pTygeYnJSRYWs.VuQv9CNOUSEAemSZseQENsO
 0NC7w5wQBZzYhmV6edWeL5krpCTKIxvf9FePiKbuDVRK7IyJ9crY6tfp.oiAdFYfBCLBWZb8QQns
 7C0WXoOayuA9ei9mXQAMzFjnFesUW4vG8Xxr3CoGEJGD_6dHJE0S7v7RjhZdv6VhMWhYQUHRmYKo
 BWZmNGZnaVXJrFTojHBLKYbtRwmvJiBamx0InU0F6EQ8pxRcAFXvlzhMckLRGrsKgi7Ye1QrJD8U
 UziJFkgm.BO.kvuUhJguauuQayH9omhVceGUBYueRtKsp0uCY22QJUiU2LNiSBczNjD0COfahApa
 uLscR3OywhwgzNuOH.Y1JHw6lb8PFZZPXlzNPXSVGgUF4MrBTretbt7.kYgDiuL31Xtv2b8ncRXk
 b_50qwjBg7XkUF7x9hXYOBaWm2rNu2sW4lGZlgosr8xoRgrk.nOoCk.NHEJkLak.kHZZJL7fbMlQ
 LBqlpe2iu5J7FDjAV_0b_ah40TY_bW23OoD3Jbi0UqGPCc47.w44QmTOigQnzrZCQENaQmrbbBeB
 aKwLufkB09opcO7AUwbopedS6OHzJmbmCvHL3XeC1iY34kT6k0Q8UeebKMNDl81GvYQRvhbfx2Bh
 rDu5NvrzxyK_9RkmZyrZMcOB.Q0ganHi0190kgpzy50d9J3BxNYsBv4iqeajBiW59_Punw99iY.l
 BX7G77s8HMgOCf_RKVsrrIo5MAhmkhlCxICNER4radFbTApwrt93qxLbNu1UfRLAKA7_1ikqMH0A
 KH_Vnj_bxEvYDQvIHW8qp0kl8_CqB9krR9Wq_ZuNrP7A8kjZ90VDdi.U2A35lrce8NKvLGfIJADU
 41xFb7Ref6IcPVJINhmqynY2d2vWAFjnX3CLQ8NBTPaW35nFdfjFp6A--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.bf2.yahoo.com with HTTP; Thu, 8 Aug 2019 12:52:44 +0000
Received: by smtp401.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 58b466edc4732a0ec4a6607fcd0979a4; 
 Thu, 08 Aug 2019 12:52:39 +0000 (UTC)
Message-Id: <7C7EB5C4-8843-4D92-9E3A-65126048DA13@yahoo.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Thu, 8 Aug 2019 07:52:38 -0500
In-Reply-To: <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
References: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
 <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Mailman-Approved-At: Thu, 08 Aug 2019 09:01:42 -0400
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
Content-Type: multipart/mixed; boundary="===============5243103636854703627=="
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


--===============5243103636854703627==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_507B9708-9976-4611-B40D-7EF9423A6F77"


--Apple-Mail=_507B9708-9976-4611-B40D-7EF9423A6F77
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

EJ:

I want to pick a few narrowband channels scattered over about 5 MHz.  I =
would like to be able to use your channelizer in an E310.  Do you think =
it could fit in the E310=E2=80=99s FPGA?  When I run uhd_image_builder =
with just the channelizer and a FIFO, I=E2=80=99m seeing the following =
errors:

ERROR: [Place 30-640] Place Check : This design requires more =
RAMB36/FIFO cells than are available in the target device. This design =
requires 324 of such cell types but only 140 compatible sites are =
available in the target device. Please analyze your synthesis results =
and constraints to ensure the design is mapped to Xilinx primitives as =
expected. If so, please consider targeting a larger device.
ERROR: [Place 30-640] Place Check : This design requires more RAMB18 and =
RAMB36/FIFO cells than are available in the target device. This design =
requires 703 of such cell types but only 280 compatible sites are =
available in the target device. Please analyze your synthesis results =
and constraints to ensure the design is mapped to Xilinx primitives as =
expected. If so, please consider targeting a larger device.
ERROR: [Place 30-640] Place Check : This design requires more RAMB36E1 =
cells than are available in the target device. This design requires 324 =
of such cell types but only 140 compatible sites are available in the =
target device. Please analyze your synthesis results and constraints to =
ensure the design is mapped to Xilinx primitives as expected. If so, =
please consider targeting a larger device.

Royce Connerley

> On Jul 24, 2019, at 6:34 PM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>=20
> Hi Royce,
>=20
> Phil and I have been working on the channelizer in the theseus-cores =
repo here: gitlab.com/theseus-cores/theseus-cores =
<http://gitlab.com/theseus-cores/theseus-cores>
>=20
> The master branch has a (potentially) working channelizer, at least =
according to my recent tests on the x310, as long as the network =
interface supports the desired output rate.
>=20
> There's also an fpga solution for channel downselection in a branch =
that Phil put together. The ball is in my court to turn the crank and =
merge to master with supporting software, but I haven't gotten much of a =
chance recently.=20
>=20
> If you're interested in testing we could definitely use some more =
people to give it a shot :D Let me know if you need a sample bitstream =
or if you can build one yourself.
>=20
> EJ
>=20
> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC =
polyphase channelizer.  Has there been any activity on this?
>=20
> Royce Connerley
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>


--Apple-Mail=_507B9708-9976-4611-B40D-7EF9423A6F77
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">EJ:<div class=3D""><br class=3D""></div><div class=3D"">I =
want to pick a few narrowband channels scattered over about 5 MHz. =
&nbsp;I would like to be able to use your channelizer in an E310. =
&nbsp;Do you think it could fit in the E310=E2=80=99s FPGA? &nbsp;When I =
run uhd_image_builder with just the channelizer and a FIFO, I=E2=80=99m =
seeing the following errors:</div><div class=3D""><br =
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
class=3D""></div><div class=3D"">Royce Connerley</div><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Jul =
24, 2019, at 6:34 PM, EJ Kreinar &lt;<a =
href=3D"mailto:ejkreinar@gmail.com" class=3D"">ejkreinar@gmail.com</a>&gt;=
 wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"auto" class=3D"">Hi Royce,<div dir=3D"auto" class=3D""><br =
class=3D""></div><div dir=3D"auto" class=3D"">Phil and I have been =
working on the channelizer in the theseus-cores repo here: <a =
href=3D"http://gitlab.com/theseus-cores/theseus-cores" =
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
 class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">At the 2018 GRCon, EJ =
Kreinar spoke about improvements to the RFNoC polyphase =
channelizer.&nbsp; Has there been any activity on this?<br class=3D"">
<br class=3D"">
Royce Connerley<br class=3D"">
_______________________________________________<br class=3D"">
USRP-users mailing list<br class=3D"">
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer" class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D"">
<a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" rel=3D"noreferrer noreferrer" target=3D"_blank" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
</blockquote></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_507B9708-9976-4611-B40D-7EF9423A6F77--


--===============5243103636854703627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5243103636854703627==--

