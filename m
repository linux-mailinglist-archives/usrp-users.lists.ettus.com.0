Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A7730F528
	for <lists+usrp-users@lfdr.de>; Thu,  4 Feb 2021 15:40:23 +0100 (CET)
Received: from [::1] (port=39866 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7fny-0005JZ-Bf; Thu, 04 Feb 2021 09:40:22 -0500
Received: from mail-oo1-f47.google.com ([209.85.161.47]:39242)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l7fnu-00059P-Dc
 for usrp-users@lists.ettus.com; Thu, 04 Feb 2021 09:40:18 -0500
Received: by mail-oo1-f47.google.com with SMTP id z36so804725ooi.6
 for <usrp-users@lists.ettus.com>; Thu, 04 Feb 2021 06:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8bDFUb/+e40ah1nOYeol8Uv3r8P1KAmAz2qVBJvKXTc=;
 b=FUknD7kf0bCPV70kWfIev0Kj36r8TExCYQNNinW3XjzHDv7SBdhDOVKdqEmXdK/MOT
 Ao5oBZ7pot2UFhG1y98hE6699K/NdDA6XQJrgskO8GMEpYvUmiiR8LcaH5yDl5R6h6fy
 Cw3rU0W/i4IoCgnBMZPAZQQsPPLHclJBzJ5R6gDDZTlG2QV0zl7wV6dT3HxeN6kh1Ih0
 iqMpcMOAdooXU0DiRAQRxxfjrnauSLnaLnSdgX0FoMGrzdhu3yV4jO1gASPZnWQtvN7f
 99XH2kxUvjIctHr6DoK/V6Q+DF7kfBPMRhzDAUW8LSttD3SVPzdXt2/R4+IpbTfBgflO
 Hf2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8bDFUb/+e40ah1nOYeol8Uv3r8P1KAmAz2qVBJvKXTc=;
 b=Xxf3V7gzXXxAeroRQ61GSEsXLGVrSQyoZvT8neo8JijsWwuf4N5hywkDtbzDq16c29
 nOU+Ipj9RHmnMxF0PdtTjJBboH7fqnzQMyYvbifPEhmiq8dqPyUssAlGlpwBKzDn7Vhi
 t5s3mWDYZs7nR4pzfkhUnl+ScRULo0i5uMM+nzBpNKIxAV4XobtgacmPaLYOXbWZ7usV
 6/6g9yUNwrsCIP4vqeXSdoWlN5/2k3rTkkVTA5jbnbtRQRjhPYVjpVz+s8VcvSdUgBBl
 BUiFgwBLkSc4TyW/PVpACpC19xPMF0rWxx4eyNDG0H2FzsUI01ktcioSrjT6z+kyfORp
 PgvA==
X-Gm-Message-State: AOAM531s1CVHlusp6r1TcLuqzSgUN+uVPx1b4ogjrI0V7EGPP8pu+BZA
 7limdmL4nOxvaJlihFQNi6xniI6TfXG+mqXGZgIFmw==
X-Google-Smtp-Source: ABdhPJyaOskhJ+zb+QKvgY4fBCZo2AN/0rV+Yo8r+iUk3uhLYhtnmPOaEbh2pLlOKD4CRSLxzpWYU4BZDlbLBsmfy1M=
X-Received: by 2002:a05:6820:283:: with SMTP id
 q3mr5873007ood.13.1612449577444; 
 Thu, 04 Feb 2021 06:39:37 -0800 (PST)
MIME-Version: 1.0
References: <CAOLzfSg88FT3Cm_-Dd0jL__BchiuGhR03jLW1nxCv5N3O-TQjg@mail.gmail.com>
 <84B751A1-3137-41AA-91FF-AAAEB03C7927@ettus.com>
 <CAOLzfSjROwto1SRtXa=H1ce6pRZssLYKF5mjQQrTSHdqOBXgrA@mail.gmail.com>
 <CAGNhwTMoUyL2jpAY-GXYBY43+h9Y2QyU8BX5Pe-Vn2bMMy+vpg@mail.gmail.com>
 <CAOLzfSj2Qa5K4NLwJx44Q=x9Vr-0iwV5EHz-k50Ag1=m6UP3SQ@mail.gmail.com>
 <CAB__hTQq4iP1yJWVE1iqVj0oxn_2pmLUt=tRrLQrfUkMX+7J6g@mail.gmail.com>
In-Reply-To: <CAB__hTQq4iP1yJWVE1iqVj0oxn_2pmLUt=tRrLQrfUkMX+7J6g@mail.gmail.com>
Date: Thu, 4 Feb 2021 09:39:26 -0500
Message-ID: <CAB__hTRm82m7pLmffmiNFoz3zbPZW1WAVdV2011hNzqCzuqNyA@mail.gmail.com>
To: Patrick Kane <prkane92@gmail.com>
Subject: Re: [USRP-users] N321 QSFP+ XQ image network connection
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7819787150907928130=="
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

--===============7819787150907928130==
Content-Type: multipart/alternative; boundary="0000000000004882b405ba83ac23"

--0000000000004882b405ba83ac23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I should add that when I said "I have not done this", I meant with N321s in
this proposed configuration.  However, I am presently using an XL710 (QDA1)
with a QSFP+ optical transceiver and MTP/LC breakout fiber to connect to
two N310s (using SFP+ optical transceivers).  I have done this both with
single-mode and multimode fiber.
Rob

On Thu, Feb 4, 2021 at 9:32 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Pat,
> Are you using fiber or copper to connect?  If you are using fiber, it
> seems to me it could work with a three QSFP optical transceivers and thre=
e
> MTP/LC breakout fibers that you would connect via couplers such that Host
> Lanes 0 and 1 go to the first N321 Lanes 0 and 1 while the Host Lanes 2 a=
nd
> 3 go to the second N321 Lanes 0 and 1.  The host NIC would be configured
> 1x4.  Note that I have not done this, but I am planning to purchase N321s
> soon and so I am interested in this topic.
> Rob
>
> On Wed, Feb 3, 2021 at 5:34 PM Patrick Kane via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I still cannot use a single 2-port QSFP+ NIC to connect to 2x  N321s.
>> Using the Intel tools to set the NIC to 2x2x10, the NIC doesn't recogniz=
e
>> the second physical port as a valid connection to a USRP, but works as a
>> loopback or a connection to another NIC. I asked Intel regarding the iss=
ues
>> to see if we were configuring the NIC incorrectly, and this is the respo=
nse
>> we got:
>>
>> *Response from Intel on XL710-QDA2*
>>
>> =E2=80=9CWhen configured for 2x2x10 the lanes are split between the port=
s. The A
>> configuration utilizes lanes 1 and 2 on the top port and lanes 3 and 4 o=
n
>> the bottom port. These correlate to the physical connections on the QSFP=
+
>> module. If you are able to configure the port of the other device to
>> utilize lanes 3 and 4, then it should be able to connect to the bottom p=
ort
>> in the A configuration.=E2=80=9D
>>
>>
>>
>> *Problem:* XQ FPGA image doesn=E2=80=99t accept connections from lanes 2=
 and 3,
>> just 0 and 1. This prevents the bottom port on the Intel NIC from workin=
g
>> in the 2x2x10 configuration:
>>
>>
>> InterfaceHGXGWXXQAQ
>> SFP+ 0 1 GbE 10 GbE White Rabbit White Rabbit 10 GbE
>> SFP+ 1 10 GbE 10 GbE 10 GbE Unused 10 GbE
>> QSFP+ lane 0 Unused Unused Unused 10 GbE Aurora
>> QSFP+ lane 1 Unused Unused Unused 10 GbE Aurora
>> QSFP+ lane 2 Unused Unused Unused *Unused* Aurora
>> QSFP+ lane 3 Unused Unused Unused *Unused* Aurora
>> In the 2 N321 configuration, lane 2 and 3 are valid, but point to a
>> different USRP. I'm hoping theres a UHD or FW change that can prevent th=
e
>> QSFP->2x10G breakout cable because that defeats the purpose of using a
>> QSFP+ NIC instead of a 4-port 10G NIC (Intel X710-DA4)
>>
>> Thanks,
>> Pat
>>
>> On Tue, Nov 24, 2020 at 1:01 PM Michael Dickens <
>> michael.dickens@ettus.com> wrote:
>>
>>> Hi Pat - I'm glad that info helped!
>>>
>>> Yes, I plan on adding this information into the N32x Getting Started
>>> Guide, once I have a better handle on it. Right now I have just a few d=
ata
>>> points & those are not consistent! and I don't know why! Thus ...
>>>
>>> Which Intel QSFP+ utility did you end up using? There are 2 that I can
>>> find:
>>>
>>> 1) EPCT:
>>> https://downloadcenter.intel.com/download/28933/Intel-Ethernet-Port-Con=
figuration-Tool-Linux-
>>>
>>> This is the newer version that seems to work.
>>>
>>> 2) QCU :
>>> https://downloadcenter.intel.com/download/25851/Intel-QSFP-Configuratio=
n-Utility-Linux-Final-Release?product=3D46828
>>>
>>> This one is deprecated, though it still works to some extent.
>>>
>>> =3D=3D=3D
>>>
>>> When I execute (A), I get the following options: "4x10" and "2x2x10". I
>>> do not get an "A" or "B" or "LOM" or whatever. Just literally those 2
>>> options.
>>>
>>> I think the first one means "1x(4x10)", meaning that just port0 is
>>> active & provides 4 data lates. I was hoping this option would work wit=
h a
>>> 1:4 SFP+ breakout cable from FS.com, but to the best of my testing I ca=
n
>>> get just 1 of those 4 SFP+ links to work. Supposedly if one uses the In=
tel
>>> 1:4 breakout cable this will work ... but that's paying $350 for an
>>> otherwise $50 cable! I'm still investigating here. Ideally this NIC wou=
ld
>>> provide "2x(4x10)" with 2 1:4 breakout cables, to get double the SFP+
>>> density of current NICs (e.g., the X710-DA4 ort X722-DA4).
>>>
>>> The second one implies to me that both ports are available & providing =
2
>>> data lanes each. The best I've been able to do is use "2x2x10" with por=
t0;
>>> port1 doesn't seem to be working in this setting.
>>>
>>> Admittedly, I might need to update to the current Intel Linux drivers
>>> for the XL710 NIC. I usually let the OS handle this for me -- in this c=
ase,
>>> Ubuntu 20.04 latest. There are new Intel drivers from early November 20=
20,
>>> but I don't think the XL710 had any updates from the prior version.
>>>
>>> I'm curious what driver version & OS / version you're using ... maybe
>>> let's catch up off-list for a bit & see what we can figure out here.
>>> Cheers! - MLD
>>>
>>> On Tue, Nov 24, 2020 at 9:06 AM Patrick Kane <prkane92@gmail.com> wrote=
:
>>>
>>>> Hi Mike,
>>>>
>>>> That seemed to do the trick, thanks for info! At some point, can we
>>>> make these steps part of the N32x getting started docs?
>>>>
>>>> Also- the config utilty makes me choose 2x2x10 A, B, or LOM. Choosing =
A
>>>> disables the second port on the QDA2, and B disables the first port. L=
OM
>>>> disables both ports (expected because it's not a MB NIC). My ideal cas=
e is
>>>> using 2x N321s over QSFP on the same XL710-QDA2 NIC. Have you had any =
luck
>>>> in this configuration?
>>>>
>>>> Thanks,
>>>> Pat
>>>>
>>>> On Mon, Nov 23, 2020 at 9:23 PM Michael Dickens <
>>>> michael.dickens@ettus.com> wrote:
>>>>
>>>>> Hi Pat - I recently verified that the N321 QAFP+ interface works with
>>>>> UHD 4.0 release. I am also using an Intel XL710 (QDA2, but that proba=
bly
>>>>> doesn=E2=80=99t matter too much). The trick for me was using the Inte=
l QSFP+ NIC
>>>>> configuration tool to set the NIC to 2x(2x10 Gb) mode. This is the se=
tting
>>>>> that the N321 requires, and one that the NIC provides. Once that was =
set
>>>>> then you need to configures the host and USRP network interfaces as
>>>>> you normally would. After all of that, the link worked very nicely! I=
 hope
>>>>> this is useful! - MLD
>>>>>
>>>>> On Nov 23, 2020, at 4:44 PM, Patrick Kane via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>> =EF=BB=BF
>>>>>
>>>>> I have an N321 connected to serial console and QSFP+ through a XL710
>>>>> Intel NIC. With the default HG image, I can connect through 1G and se=
rial
>>>>> as expected. I updated the filesystem to UHD 4.0.0.0 using mender, an=
d the
>>>>> build artifact reflects that this was successful. Then, after loading=
 the
>>>>> XQ image (using 2x 10Gb lanes through QSFP+ port), I lose all etherne=
t
>>>>> connectivity through the 1G port SFP0 (expected), but I get the follo=
wing
>>>>> output in the console window:
>>>>>
>>>>>
>>>>> [  451.560674] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full
>>>>> - flow control off
>>>>>
>>>>> [  453.800673] nixge 40000000.ethernet sfp0: Link is Down
>>>>>
>>>>> [  454.920676] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full
>>>>> - flow control off
>>>>>
>>>>> [  458.280672] nixge 40000000.ethernet sfp0: Link is Down
>>>>>
>>>>> [  459.400677] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full
>>>>> - flow control off
>>>>>
>>>>> [  462.760705] nixge 40000000.ethernet sfp0: Link is Down
>>>>>
>>>>> [  463.880678] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full
>>>>> - flow control off
>>>>>
>>>>> [  466.120673] nixge 40000000.ethernet sfp0: Link is Down
>>>>>
>>>>>
>>>>> uhd_usrp_probe:
>>>>>
>>>>>   _____________________________________________________
>>>>>
>>>>>  /
>>>>>
>>>>> |       Device: N300-Series Device
>>>>>
>>>>> |     _____________________________________________________
>>>>>
>>>>> |    /
>>>>>
>>>>> |   |       Mboard: ni-n3xx-31E00AC
>>>>>
>>>>> |   |   dboard_0_pid: 338
>>>>>
>>>>> |   |   dboard_0_serial: 31DB406
>>>>>
>>>>> |   |   dboard_1_pid: 338
>>>>>
>>>>> |   |   dboard_1_serial: 31DB407
>>>>>
>>>>> |   |   eeprom_version: 3
>>>>>
>>>>> |   |   fs_version: 20200914000806
>>>>>
>>>>> |   |   mender_artifact: v4.0.0.0_n3xx
>>>>>
>>>>> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
>>>>>
>>>>> |   |   pid: 16962
>>>>>
>>>>> |   |   product: n320
>>>>>
>>>>> |   |   rev: 7
>>>>>
>>>>> |   |   rpc_connection: local
>>>>>
>>>>> |   |   serial: 31E00AC
>>>>>
>>>>> |   |   type: n3xx
>>>>>
>>>>> |   |   MPM Version: 3.0
>>>>>
>>>>> |   |   FPGA Version: 8.0
>>>>>
>>>>> |   |   FPGA git hash: be53058.clean
>>>>>
>>>>> |   |
>>>>>
>>>>> |   |   Time sources:  internal, external, gpsdo, sfp0
>>>>>
>>>>> |   |   Clock sources: external, internal, gpsdo
>>>>>
>>>>> |   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga,
>>>>> gps_sky, gps_time, gps_tpv
>>>>>
>>>>>
>>>>> Are there any configuration items needed to connect to the N321
>>>>> through the QSFP+ port. Note that I only see eth0, sfp0, sfp1, and in=
t0 in
>>>>> /etc/network/interfaces.
>>>>>
>>>>>
>>>>> Thanks,
>>>>>
>>>>> Pat
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000004882b405ba83ac23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I should add that when I said &quot;I have not done this&q=
uot;, I meant with N321s in this proposed configuration.=C2=A0 However, I a=
m presently using an XL710 (QDA1) with a QSFP+ optical transceiver=C2=A0and=
 MTP/LC breakout fiber to connect to two N310s (using SFP+ optical transcei=
vers).=C2=A0 I have done this both with single-mode and multimode fiber.<di=
v>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Feb 4, 2021 at 9:32 AM Rob Kossler &lt;<a href=3D"mailto=
:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Pat,<div>Are you using=
 fiber or copper to connect?=C2=A0 If you are using fiber, it seems to me i=
t could work with a three QSFP optical transceivers and three MTP/LC breako=
ut fibers that you would connect via couplers such that Host Lanes 0 and 1 =
go to the first N321 Lanes 0 and 1 while the Host Lanes 2 and 3 go to the s=
econd N321 Lanes 0 and 1.=C2=A0 The host NIC would be configured 1x4.=C2=A0=
 Note that I have not done this, but I am planning to purchase N321s soon a=
nd so I am interested in this topic.</div><div>Rob</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 3, 2021=
 at 5:34 PM Patrick Kane via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>I still cannot use a single 2-port QSFP+ NIC to connect to 2x=C2=A0 N=
321s. Using the Intel tools to set the NIC to 2x2x10, the NIC doesn&#39;t r=
ecognize the second physical port as a valid connection to a USRP, but work=
s as a loopback or a connection to another NIC. I asked Intel regarding the=
 issues to see if we were configuring the NIC incorrectly, and this is the =
response we got:=C2=A0</div><div><br></div><div><p class=3D"MsoNormal" styl=
e=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"=
><b>Response from Intel on XL710-QDA2</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=E2=80=9CWhen configured for 2x2x10 the lanes a=
re split between the
ports. The A configuration utilizes lanes 1 and 2 on the top port and lanes=
 3
and 4 on the bottom port. These correlate to the physical connections on th=
e
QSFP+ module. If you are able to configure the port of the other device to
utilize lanes 3 and 4, then it should be able to connect to the bottom port=
 in
the A configuration.=E2=80=9D</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Problem:</b> XQ FPGA image doesn=E2=80=99t a=
ccept connections
from lanes 2 and 3, just 0 and 1. This prevents the bottom port on the Inte=
l
NIC from working in the 2x2x10 configuration:</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:11pt">=C2=A0 =C2=A0</s=
pan></p><table style=3D"font-variant-numeric:normal;font-variant-east-asian=
:normal;font-stretch:normal;font-size:14px;line-height:22px;font-family:Rob=
oto,sans-serif;border-collapse:collapse;margin-top:4px;margin-bottom:4px;co=
lor:rgb(0,0,0)"><tbody><tr><th style=3D"border:1px solid rgb(93,105,82);pad=
ding:5px 7px 4px;background-color:rgb(110,124,97);color:rgb(255,255,255);fo=
nt-size:15.4px">Interface</th><th style=3D"border:1px solid rgb(93,105,82);=
padding:5px 7px 4px;background-color:rgb(110,124,97);color:rgb(255,255,255)=
;font-size:15.4px">HG</th><th style=3D"border:1px solid rgb(93,105,82);padd=
ing:5px 7px 4px;background-color:rgb(110,124,97);color:rgb(255,255,255);fon=
t-size:15.4px">XG</th><th style=3D"border:1px solid rgb(93,105,82);padding:=
5px 7px 4px;background-color:rgb(110,124,97);color:rgb(255,255,255);font-si=
ze:15.4px">WX</th><th style=3D"border:1px solid rgb(93,105,82);padding:5px =
7px 4px;background-color:rgb(110,124,97);color:rgb(255,255,255);font-size:1=
5.4px">XQ</th><th style=3D"border:1px solid rgb(93,105,82);padding:5px 7px =
4px;background-color:rgb(110,124,97);color:rgb(255,255,255);font-size:15.4p=
x">AQ</th></tr><tr><td style=3D"border:1px solid rgb(93,105,82);padding:3px=
 7px 2px">SFP+ 0</td><td style=3D"border:1px solid rgb(93,105,82);padding:3=
px 7px 2px">1 GbE</td><td style=3D"border:1px solid rgb(93,105,82);padding:=
3px 7px 2px">10 GbE</td><td style=3D"border:1px solid rgb(93,105,82);paddin=
g:3px 7px 2px">White Rabbit</td><td style=3D"border:1px solid rgb(93,105,82=
);padding:3px 7px 2px">White Rabbit</td><td style=3D"border:1px solid rgb(9=
3,105,82);padding:3px 7px 2px">10 GbE</td></tr><tr><td style=3D"border:1px =
solid rgb(93,105,82);padding:3px 7px 2px">SFP+ 1</td><td style=3D"border:1p=
x solid rgb(93,105,82);padding:3px 7px 2px">10 GbE</td><td style=3D"border:=
1px solid rgb(93,105,82);padding:3px 7px 2px">10 GbE</td><td style=3D"borde=
r:1px solid rgb(93,105,82);padding:3px 7px 2px">10 GbE</td><td style=3D"bor=
der:1px solid rgb(93,105,82);padding:3px 7px 2px">Unused</td><td style=3D"b=
order:1px solid rgb(93,105,82);padding:3px 7px 2px">10 GbE</td></tr><tr><td=
 style=3D"border:1px solid rgb(93,105,82);padding:3px 7px 2px">QSFP+ lane 0=
</td><td style=3D"border:1px solid rgb(93,105,82);padding:3px 7px 2px">Unus=
ed</td><td style=3D"border:1px solid rgb(93,105,82);padding:3px 7px 2px">Un=
used</td><td style=3D"border:1px solid rgb(93,105,82);padding:3px 7px 2px">=
Unused</td><td style=3D"border:1px solid rgb(93,105,82);padding:3px 7px 2px=
">10 GbE</td><td style=3D"border:1px solid rgb(93,105,82);padding:3px 7px 2=
px">Aurora</td></tr><tr><td style=3D"border:1px solid rgb(93,105,82);paddin=
g:3px 7px 2px">QSFP+ lane 1</td><td style=3D"border:1px solid rgb(93,105,82=
);padding:3px 7px 2px">Unused</td><td style=3D"border:1px solid rgb(93,105,=
82);padding:3px 7px 2px">Unused</td><td style=3D"border:1px solid rgb(93,10=
5,82);padding:3px 7px 2px">Unused</td><td style=3D"border:1px solid rgb(93,=
105,82);padding:3px 7px 2px">10 GbE</td><td style=3D"border:1px solid rgb(9=
3,105,82);padding:3px 7px 2px">Aurora</td></tr><tr><td style=3D"border:1px =
solid rgb(93,105,82);padding:3px 7px 2px">QSFP+ lane 2</td><td style=3D"bor=
der:1px solid rgb(93,105,82);padding:3px 7px 2px">Unused</td><td style=3D"b=
order:1px solid rgb(93,105,82);padding:3px 7px 2px">Unused</td><td style=3D=
"border:1px solid rgb(93,105,82);padding:3px 7px 2px">Unused</td><td style=
=3D"border:1px solid rgb(93,105,82);padding:3px 7px 2px"><b><font color=3D"=
#ff0000">Unused</font></b></td><td style=3D"border:1px solid rgb(93,105,82)=
;padding:3px 7px 2px">Aurora</td></tr><tr><td style=3D"border:1px solid rgb=
(93,105,82);padding:3px 7px 2px">QSFP+ lane 3</td><td style=3D"border:1px s=
olid rgb(93,105,82);padding:3px 7px 2px">Unused</td><td style=3D"border:1px=
 solid rgb(93,105,82);padding:3px 7px 2px">Unused</td><td style=3D"border:1=
px solid rgb(93,105,82);padding:3px 7px 2px">Unused</td><td style=3D"border=
:1px solid rgb(93,105,82);padding:3px 7px 2px"><font color=3D"#ff0000"><b>U=
nused</b></font></td><td style=3D"border:1px solid rgb(93,105,82);padding:3=
px 7px 2px">Aurora</td></tr></tbody></table><br>In the 2 N321 configuration=
, lane 2 and 3 are valid, but point to a different USRP. I&#39;m hoping the=
res a UHD or FW change that can prevent the QSFP-&gt;2x10G breakout cable b=
ecause that defeats the purpose of using a QSFP+ NIC instead of a 4-port 10=
G NIC (Intel X710-DA4)=C2=A0</div><div><br></div><div>Thanks,</div><div><sp=
an style=3D"font-family:Calibri,sans-serif;font-size:11pt">Pat=C2=A0</span>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Nov 24, 2020 at 1:01 PM Michael Dickens &lt;<a href=3D"mailto=
:michael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hi Pat - I&#39;m glad that info helped!<div><br></div><div>Yes=
, I plan on adding this information into the N32x Getting Started Guide, on=
ce I have a better handle on it. Right now I have just a few data points &a=
mp; those are not consistent! and I don&#39;t know why! Thus ...<div><br></=
div><div>Which Intel QSFP+ utility did you end up=C2=A0using? There are 2 t=
hat I can find:</div><div><br></div><div>1) EPCT: <a href=3D"https://downlo=
adcenter.intel.com/download/28933/Intel-Ethernet-Port-Configuration-Tool-Li=
nux-" target=3D"_blank">https://downloadcenter.intel.com/download/28933/Int=
el-Ethernet-Port-Configuration-Tool-Linux-</a></div><div><br></div><div>Thi=
s is the newer version that seems to work.</div><div><br></div><div>2) QCU =
:=C2=A0<a href=3D"https://downloadcenter.intel.com/download/25851/Intel-QSF=
P-Configuration-Utility-Linux-Final-Release?product=3D46828" target=3D"_bla=
nk">https://downloadcenter.intel.com/download/25851/Intel-QSFP-Configuratio=
n-Utility-Linux-Final-Release?product=3D46828</a></div><div><br></div><div>=
This one is deprecated, though it still works to some=C2=A0extent.</div><di=
v><br></div><div>=3D=3D=3D</div><div><br></div><div>When I execute (A), I g=
et the following options: &quot;4x10&quot; and &quot;2x2x10&quot;. I do not=
 get an &quot;A&quot; or &quot;B&quot; or &quot;LOM&quot; or whatever. Just=
 literally those 2 options.<br><br></div><div>I think the first one means &=
quot;1x(4x10)&quot;, meaning that just port0 is active &amp; provides 4 dat=
a lates. I was hoping this option would work with a 1:4 SFP+ breakout cable=
 from FS.com, but to the best of my testing I can get just 1 of those 4 SFP=
+ links to work. Supposedly if one uses the Intel 1:4 breakout cable this w=
ill work ... but that&#39;s paying $350 for an otherwise $50 cable! I&#39;m=
 still investigating here. Ideally this NIC would provide &quot;2x(4x10)&qu=
ot; with 2 1:4 breakout cables, to get double the SFP+ density of current N=
ICs (e.g., the X710-DA4 ort X722-DA4).</div><div><br></div><div>The second =
one implies to me that both ports are available &amp; providing 2 data lane=
s each. The best I&#39;ve been able to do is use &quot;2x2x10&quot; with po=
rt0; port1 doesn&#39;t seem to be working in this setting.</div><div><br></=
div><div>Admittedly, I might need to update to the current Intel Linux driv=
ers for the XL710 NIC. I usually let the OS handle this for me -- in this c=
ase, Ubuntu 20.04 latest. There are new Intel drivers from early November 2=
020, but I don&#39;t think the XL710 had any updates from the prior version=
.</div><div><br></div><div>I&#39;m curious what driver version &amp; OS / v=
ersion you&#39;re using ... maybe let&#39;s catch up off-list for a bit &am=
p; see what we can figure out here. Cheers! - MLD</div></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 24=
, 2020 at 9:06 AM Patrick Kane &lt;<a href=3D"mailto:prkane92@gmail.com" ta=
rget=3D"_blank">prkane92@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Mike,=C2=A0<div><br><=
/div><div>That seemed to do the trick, thanks for info! At some point, can =
we make these steps part of the N32x getting started docs?=C2=A0</div><div>=
<br></div><div>Also- the config utilty makes me choose 2x2x10 A, B, or LOM.=
 Choosing A disables the second port on the QDA2, and B disables the first =
port. LOM disables both ports (expected because it&#39;s not a MB NIC). My =
ideal case is using 2x N321s over QSFP on the same XL710-QDA2 NIC. Have you=
 had any luck in this configuration?=C2=A0</div><div><br></div><div>Thanks,=
</div><div>Pat</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, Nov 23, 2020 at 9:23 PM Michael Dickens &lt;<a =
href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.dickens=
@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto"><div dir=3D"ltr">Hi Pat - I recently verified =
that the N321 QAFP+ interface works with UHD 4.0 release. I am also using a=
n Intel XL710 (QDA2, but that probably doesn=E2=80=99t matter too much). Th=
e trick for me was using the Intel QSFP+ NIC configuration tool to set the =
NIC to 2x(2x10 Gb) mode. This is the setting that the N321 requires, and on=
e that the NIC provides. Once that was set then you need to configures the =
host<span style=3D"color:rgb(0,0,0)">=C2=A0and USRP</span>=C2=A0network int=
erfaces as you normally would. After all of that, the link worked very nice=
ly! I hope this is useful! - MLD=C2=A0</div><div dir=3D"ltr"><br><blockquot=
e type=3D"cite">On Nov 23, 2020, at 4:44 PM, Patrick Kane via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">I have an N321 connected =
to serial console and QSFP+ through a XL710 Intel NIC. With the default HG =
image, I can connect through 1G and serial as expected. I updated the files=
ystem to UHD 4.0.0.0 using mender, and the build artifact reflects that thi=
s was successful. Then, after loading the XQ image (using 2x 10Gb lanes thr=
ough QSFP+ port), I lose all ethernet connectivity through the 1G port SFP0=
 (expected), but I get the following output in the console window:</span></=
p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&qu=
ot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 451.560674] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 453.800673] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 454.920676] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 458.280672] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 459.400677] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 462.760705] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 463.880678] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 466.120673] nixge
40000000.ethernet sfp0: Link is Down</span><span style=3D"font-size:10pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:black"> </span></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&qu=
ot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p class=3D"MsoNor=
mal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;font-family:=
Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot;Segoe U=
I&quot;,sans-serif;color:black">uhd_usrp_probe:</span></p><div>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">=C2=A0 __________________=
___________________________________</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">=C2=A0/</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Device:
N300-Series Device</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0 /</sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard:
ni-n3xx-31E00AC</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_0_pid: 338</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_0_serial:
31DB406</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_1_pid: 338</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_1_serial:
31DB407</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 eeprom_version: 3</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 fs_version:
20200914000806</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 mender_artifact:
v4.0.0.0_n3xx</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 mpm_sw_version:
4.0.0.0-g90ce6062</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 pid: 16962</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 product: n320</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 rev: 7</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 rpc_connection:
local</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 serial: 31E00AC</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 type: n3xx</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 MPM Version: 3.0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 FPGA Version: 8.0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 FPGA git hash:
be53058.clean</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |</span></p=
>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Time sources:=C2=A0
internal, external, gpsdo, sfp0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Clock sources:
external, internal, gpsdo</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Sensors:
ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv</s=
pan></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;f=
ont-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt=
;font-family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p=
 class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal"><font colo=
r=3D"#000000" face=3D"Segoe UI, sans-serif"><span style=3D"font-size:13.333=
3px">Are there any configuration items needed to connect to the N321 throug=
h the QSFP+ port. Note that I only see eth0, sfp0, sfp1, and int0 in /etc/n=
etwork/interfaces.</span></font></p><p class=3D"MsoNormal" style=3D"margin:=
2pt 0in;line-height:normal"><font color=3D"#000000" face=3D"Segoe UI, sans-=
serif"><span style=3D"font-size:13.3333px"><br></span></font></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal"><font color=3D"#=
000000" face=3D"Segoe UI, sans-serif"><span style=3D"font-size:13.3333px">T=
hanks,</span></font></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line=
-height:normal"><font color=3D"#000000" face=3D"Segoe UI, sans-serif"><span=
 style=3D"font-size:13.3333px">Pat</span></font></p>

</div><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;fon=
t-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p>

</div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></blockquote></div>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000004882b405ba83ac23--


--===============7819787150907928130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7819787150907928130==--

