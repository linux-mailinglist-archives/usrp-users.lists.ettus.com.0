Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E59549DB05
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jan 2022 07:53:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1547384E7F
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jan 2022 01:53:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="Oga+ij8N";
	dkim-atps=neutral
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id C4BE2384E7E
	for <usrp-users@lists.ettus.com>; Thu, 27 Jan 2022 01:52:53 -0500 (EST)
Received: by mail-qv1-f52.google.com with SMTP id i19so2000989qvx.12
        for <usrp-users@lists.ettus.com>; Wed, 26 Jan 2022 22:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:date:from:subject:thread-topic:in-reply-to:message-id
         :references:to:content-transfer-encoding;
        bh=qCypCp1TBn38D0QRzux8t+wv8puvzTZw3I7uiYVYJBw=;
        b=Oga+ij8NuoqcysCquDlYVJW0uMMDHd4ZagXM+IWEWDavTi1CUunugmUlgLHqyHzotM
         ziCJU4czYYSdxAZvTJw1ezFO0jYOHuLgtVupiIqaRnRoCle9gy7p7LYtPofgaY9a8qVA
         TMeA5kCwQDRkqXWWsJWJrLg0jBlfoOnSWVsuCr5lya8rn72yaBRljj+l8q2LMqTIhfNH
         tdS/sAaQh7wGHw/rvcTZ/9toEc3MiHXsYRZ0413yCJjAQw1VXCnrUmdTzpmCFsuPVVJA
         ZU0ZlkCOIwKrfTlDOX8XnqZ53cpZmIzLme+8WsZFwlQKduyyATC5qciv/2Z1SJrssvFE
         syfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:from:subject:thread-topic
         :in-reply-to:message-id:references:to:content-transfer-encoding;
        bh=qCypCp1TBn38D0QRzux8t+wv8puvzTZw3I7uiYVYJBw=;
        b=kc0xFcq/O5QiJEehvv/dX2+R/zuwTSiT1MmY/XR9V4kEhbtkiDZcwXHoRcXHOS9nx5
         f7tAPQ27x87zCdX/DOotJY7/pjcJdnnBHnveCkle8oKrJGMDrHdoIcyqLcypjo9xtx1t
         P96XlmML6MxEu8+W0P52kl1D8pO4wZMY0EygXBX1v7fF/55Ue4K7ei4Lk2wIstOka6GP
         s3Jpn4oKgm9esQyEWHi2YbRdjOCsSmppdfnPJBYMsPrK/UywHtrhyaIrJBjQUpoe5f7G
         ojuA3Ah2gsAb3Ii6E/NmD9Jc1X+HLblYrJkxXcCa3u3EcHPms3gzIZBoyMAWQp0k1uGH
         vjVA==
X-Gm-Message-State: AOAM533YVPLqkZDDML+FOaQUUmosnuN1KvDuaUxKTrPZdbEFs69nRPTU
	BX2jXamY7p/qWRX8l7gvJdtY1A==
X-Google-Smtp-Source: ABdhPJxubmlG5rg78WhW3FnexkeymdD0E4JdNvNZmqxG/iaG+5NdISqM3jKzMBkYuX9J8Ajle0n+nw==
X-Received: by 2002:a05:6214:5186:: with SMTP id kl6mr2213479qvb.39.1643266372700;
        Wed, 26 Jan 2022 22:52:52 -0800 (PST)
Received: from Uvumilivu (2603-6080-9a01-a487-9ca6-1930-7a12-8083.res6.spectrum.com. [2603:6080:9a01:a487:9ca6:1930:7a12:8083])
        by smtp.gmail.com with ESMTPSA id i4sm1059468qkn.23.2022.01.26.22.52.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Jan 2022 22:52:52 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 27 Jan 2022 01:52:48 -0500
Thread-Topic: RE: [USRP-users] Re: Synchronization of two USRP x310s
In-Reply-To: <7c5f400a-5a54-a10d-37dc-45556677b574@ettus.com>
Message-ID: <6F7E2DA2-22E3-4C81-B12A-E66FB6CFC070@hxcore.ol>
References: 
 <CAKhiL6XkCaqTqbx3S3AbCUh1Cdkg2JQ-hQwp367K2DkogscniQ@mail.gmail.com>
 <b190375f-9565-ddc8-5289-6af588630efe@gmail.com>
 <CAKhiL6V55sfozy+b--6b21GJvERyUfVjPW26KWnuhdh39ow9_w@mail.gmail.com>
 <b2bb9131-5ea3-e152-49a1-8c400abdcbf3@gmail.com>
 <C6114C28-BFA1-47A4-9800-CF6AC1F16A88@hxcore.ol>,<7c5f400a-5a54-a10d-37dc-45556677b574@ettus.com>
To: =?utf-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: ZZZ3GCY33GRWFZFOGTXPP7GZ2OTSZJX4
X-Message-ID-Hash: ZZZ3GCY33GRWFZFOGTXPP7GZ2OTSZJX4
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synchronization of two USRP x310s
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZZ3GCY33GRWFZFOGTXPP7GZ2OTSZJX4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: LoyCurtis Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: LoyCurtis Smith <ljsmith9@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============7079417341197694411=="

--===============7079417341197694411==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US link=3Dblue vlink=3D"#954F72" style=3D=
'word-wrap:break-word'><div class=3DWordSection1><p class=3DMsoNormal>Hi Ma=
rcus, </p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Th=
ank you for the explanation. I really appreciate it.</p><p class=3DMsoNorma=
l><o:p>&nbsp;</o:p></p><p class=3DMsoNormal> I did not look at it that way.=
 </p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span s=
tyle=3D'color:#4472C4'>V/r <o:p></o:p></span></p><p class=3DMsoNormal><span=
 style=3D'color:#4472C4'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><=
span style=3D'color:#4472C4'>LoyCurtis Smith<o:p></o:p></span></p><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><div style=3D'mso-element:para-border-div=
;border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in 0in'><p c=
lass=3DMsoNormal style=3D'border:none;padding:0in'><b>From: </b><a href=3D"=
mailto:marcus.mueller@ettus.com">Marcus M=C3=BCller</a><br><b>Sent: </b>Wed=
nesday, January 26, 2022 04:51<br><b>To: </b><a href=3D"mailto:usrp-users@l=
ists.ettus.com">usrp-users@lists.ettus.com</a>; <a href=3D"mailto:ljsmith9@=
ncsu.edu">ljsmith9@ncsu.edu</a><br><b>Subject: </b>Re: [USRP-users] Re: Syn=
chronization of two USRP x310s</p></div><p class=3DMsoNormal><o:p>&nbsp;</o=
:p></p><p class=3DMsoNormal>Hi LoyCurtis,</p><p class=3DMsoNormal><o:p>&nbs=
p;</o:p></p><p class=3DMsoNormal>there's no general resource; this is just =
time synchronization for wireless networks; </p><p class=3DMsoNormal>you'd =
need to implement it within the bounds of the wireless system you're buildi=
ng. GPS </p><p class=3DMsoNormal>does it differently than GSM than LTE than=
 distributed radar systems than=E2=80=A6</p><p class=3DMsoNormal><o:p>&nbsp=
;</o:p></p><p class=3DMsoNormal>I don't know whether and if so, how, OAI im=
plements such things. This is a question for </p><p class=3DMsoNormal>the O=
AI documentation, I guess.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Typically, cellular base stations tend to have a shared c=
lock and time =E2=80=93 either via </p><p class=3DMsoNormal>GPS-disciplined=
 oscillators (such as the GPSDOs for the USRPs!) or via explicit </p><p cla=
ss=3DMsoNormal>distribution (via coax) or implicit distribution (recovered =
from the clock of the </p><p class=3DMsoNormal>networking link). So, in lar=
ger networks, this is something that's solved with hardware </p><p class=3D=
MsoNormal>making a shared clock available. However, there's in principle no=
 mathematical obstacle </p><p class=3DMsoNormal>that a base station that's =
able to receive other base stations could not derive its own </p><p class=
=3DMsoNormal>version of time =E2=80=93 just as a handset/UE does in a cellu=
lar network. It is, though, a bit </p><p class=3DMsoNormal>dangerous, since=
 of course everything you recover from a noisy, variable-group-delay </p><p=
 class=3DMsoNormal>channel, has its own variance, and so would the recovere=
d clock and time (i.e., you get </p><p class=3DMsoNormal>offset, jitter); a=
nd seeing that this is then used by many UEs to coordinate access, again </=
p><p class=3DMsoNormal>incurring additional error, this can seriously limit=
 performance.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNo=
rmal>Also, a hardware solution comes as no additional computational cost to=
 the signal </p><p class=3DMsoNormal>calculation; doing a resampling by 1.0=
0001 and a delay by 0.3376 sample periods is </p><p class=3DMsoNormal>relat=
ively expensive in terms of CPU cycles.</p><p class=3DMsoNormal><o:p>&nbsp;=
</o:p></p><p class=3DMsoNormal>Best regards,</p><p class=3DMsoNormal>Marcus=
</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>DISCLAIM=
ER: Any attached Code is provided As Is. It has not been tested or validate=
d as a product, for use in a deployed application or system, or for use in =
hazardous environments. You assume all risks for use of the Code. Use of th=
e Code is subject to terms of the licenses to the UHD or RFNoC code with wh=
ich the Code is used. Standard licenses to UHD and RFNoC can be found at ht=
tps://www.ettus.com/sdr-software/licenses/.</p><p class=3DMsoNormal><o:p>&n=
bsp;</o:p></p><p class=3DMsoNormal>NI will only perform services based on i=
ts understanding and condition that the goods or services (i) are not for t=
he use in the production or development of any item produced, purchased, or=
 ordered by any entity with a footnote 1 designation in the license require=
ment column of Supplement No. 4 to Part 744, U.S. Export Administration Reg=
ulations and (ii) such a company is not a party to the transaction.=C2=A0 I=
f our understanding is incorrect, please notify us immediately because a sp=
ecific authorization may be required from the U.S. Commerce Department befo=
re the transaction may proceed further.</p><p class=3DMsoNormal><o:p>&nbsp;=
</o:p></p><p class=3DMsoNormal>On 26.01.22 09:30, LoyCurtis Smith via USRP-=
users wrote:</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMs=
oNormal>&gt; Is there a resource for synchronizing multiple USRP x310s with=
out an external reference </p><p class=3DMsoNormal>&gt; clock?</p><p class=
=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt; Also, would=
 SBX-120 daughterboards perform better when using multiple USRPs because of=
 </p><p class=3DMsoNormal>&gt; its phase sync feature?</p><p class=3DMsoNor=
mal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt; V/r</p><p class=3DMs=
oNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt; LoyCurtis Smith<=
/p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt; =
*From: *Marcus D. Leech &lt;mailto:patchvonbraun@gmail.com&gt;</p><p class=
=3DMsoNormal>&gt; *Sent: *Tuesday, January 25, 2022 11:14</p><p class=3DMso=
Normal>&gt; *To: *LoyCurtis Smith &lt;mailto:ljsmith9@ncsu.edu&gt;</p><p cl=
ass=3DMsoNormal>&gt; *Cc: *usrp-users@lists.ettus.com</p><p class=3DMsoNorm=
al>&gt; *Subject: *Re: [USRP-users] Re: Synchronization of two USRP x310s</=
p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt; O=
n 2022-01-25 11:12, LoyCurtis Smith wrote:</p><p class=3DMsoNormal>&gt;<o:p=
>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0 Would th=
eir mechanism included UHD based code?</p><p class=3DMsoNormal>&gt;<o:p>&nb=
sp;</o:p></p><p class=3DMsoNormal>&gt; Since UHD is the way ANY application=
 talks to the radios, yes.&nbsp; But I have no idea if </p><p class=3DMsoNo=
rmal>&gt; OAI, as one of dozens and dozens of different appilcations</p><p =
class=3DMsoNormal>&gt; &nbsp; &quot;out there&quot; has any way to support =
that functionality.</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=
=A0=C2=A0=C2=A0 Also, I assume that the only other option would be to purch=
ase an Octoclock or some</p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=
=A0 other clock distribution module?</p><p class=3DMsoNormal>&gt;<o:p>&nbsp=
;</o:p></p><p class=3DMsoNormal>&gt; Yes, you'd need some kind of shared 10=
MHz reference clock and 1PPS source, AND your </p><p class=3DMsoNormal>&gt;=
 application needs to be able to configure the radios to</p><p class=3DMsoN=
ormal>&gt; &nbsp; use it.</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p>=
<p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;<o:p=
>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0 On Tue, =
Jan 25, 2022 at 10:40 Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote=
:</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt=
;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 On 2022-01-24 20:53, LoyC=
urtis Smith via USRP-users wrote:</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</=
o:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 My system setup is as follows:</p><p class=
=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=B72 x USRP=
 x310 with CBX-120 daughterboard</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o=
:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=B72 x Ubuntu 18.04 workstation</p><p cla=
ss=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=B72 x T=
aoglas 45.8113 antenna</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =C2=B72 x&nbsp; Internal Reference Clock (Master Cloc=
k set at 184.32 MHz)</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p cl=
ass=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =C2=B72 x Internal Time source</p><p class=3DMsoNormal>&=
gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=B72 x Connected via 1 =
Gig-E interfaces</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =C2=B72 x Using UHD 4.1</p><p class=3DMsoNormal>&gt;<o:p>&n=
bsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The devices have been in two setups: s=
tacked and a few inches apart.</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p=
></p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 I am attempting to deploy a 5G network using th=
e openairinterface (OAI)</p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 software system. Both d=
evices synchronize initially, then they fail. With</p><p class=3DMsoNormal>=
&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 openairinterface, I am using frequency offset compensation at the UE. I=
ts a</p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 useful parameter when running over the air a=
nd/or without an external</p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clock/time source</p><p=
 class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 (https://gitlab.eurecom.fr/oai/openairinterface5g/blo=
b/develop/doc/RUNMODEM.md)</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p=
><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 Is there a way to synchronize the reference clock/=
timing of both USRP x310s</p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 over the air? In the fu=
ture, I will be attempting to connect a third USRP</p><p class=3DMsoNormal>=
&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 x310. My setup will include one base station and two user devices.</p><=
p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 V/r</=
p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Lo=
yCurtis Smith</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DM=
soNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Unless OAI pr=
ovides some mechanism for that, the answer would be no.&nbsp; You need a</p=
><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
shared reference clock.</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p=
 class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ________________________________=
_______________</p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 USRP-users mailing list -- usrp-users@lists.ettus.com</p=
><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p><p clas=
s=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=
=A0=C2=A0=C2=A0 -- </p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0 V/r</p><p class=3DMsoNormal>&gt=
;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt;=C2=A0=C2=A0=C2=A0=C2=A0 Loy=
Curtis Smith</p><p class=3DMsoNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMs=
oNormal>&gt;<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&gt; ________________=
_______________________________</p><p class=3DMsoNormal>&gt; USRP-users mai=
ling list -- usrp-users@lists.ettus.com</p><p class=3DMsoNormal>&gt; To uns=
ubscribe send an email to usrp-users-leave@lists.ettus.com</p><p class=3DMs=
oNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--===============7079417341197694411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7079417341197694411==--
