Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D5B3A169D
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 16:06:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E5DA384172
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 10:06:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="euQ37CHn";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 24075383FA6
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 10:05:01 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id u30so23709280qke.7
        for <usrp-users@lists.ettus.com>; Wed, 09 Jun 2021 07:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=BpRz13W1PY5uLXdERI0/hjcm0qKFM9EcUWTNdEEgawI=;
        b=euQ37CHn+GJ2iu8J9DWtUeKazQTZYy8qUYwlQCMMN7Ly4paWZbWVpO6tXmfche/ZI1
         yeKFD3GBqdLquAgGHetvDCi5t7D9zmRtxRSC3aCZ9dHKBvgQwqVUblxhqP69Y0ylqzOE
         ju3cQTN3YHXAw6J0wex4CVd0M0jYPuxeS7UNpIOpvIXmBVjcXnmG8C/IcAMpq8gCjLz4
         9GdnQ8hSS7uQIgU2rcKswOLSPJvSrIkeNm3yS8r1reaSF2Ha/3yC3JE6h+Vx85i3DlSH
         FpFbRCYS+bnCQGhwcrhx1+M3XmQPEmUk7Tez6YqcUtZluWUyCApjULKxn6cx1m0ftuQK
         JCRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=BpRz13W1PY5uLXdERI0/hjcm0qKFM9EcUWTNdEEgawI=;
        b=f/MBkTvieIBRE+ElIkKlyLZTTLg6RV1GmLA2uvFbf9onmOQhUfmAnVM7wyNUTBTMH4
         voIt9lO1GaEnEbd8LXV95QsBNE4jaGgGkmyOSFmpeSIP4Lm4aFduB3UB6DfkkEUsq/1j
         61tBbjBNmu9JChsEFCOT75Urnua7FmFjd7BufUiXxj1m5MgZLmV9F4QtOhhJkkwlW7xh
         UTOxYQw9batlDe2geK+j8Y2pDtuFxlolaUrPlKsCqMAff2y3j7QiIT7Sw1sPuCO+dSf1
         gvWV2RxSesIbfJgIRSOCqsumciuB8Z51KcjOXf+z4DiBtaaFo2xdm6TU7/GxRMtejCek
         kZxQ==
X-Gm-Message-State: AOAM531y1sRwhkVkbL598W2x4O3Cw8gbGD3z6EhcYboqfPBEXkyg3OGq
	bfn0R5nzEb9R8nx+RO3ResvrewZMyf8=
X-Google-Smtp-Source: ABdhPJwFGi597mV2j0HLPH7bXm3bAnbS1yEhpg51P80KUgG/C8Q8gBPKrdBWoKnk/vplpd/wXzyReQ==
X-Received: by 2002:a37:6684:: with SMTP id a126mr552853qkc.61.1623247501245;
        Wed, 09 Jun 2021 07:05:01 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:9238:68da:39ab:edce:21a8:57d3])
        by smtp.gmail.com with ESMTPSA id e4sm47885qtw.62.2021.06.09.07.05.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 07:05:00 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Paul Atreides <maud.dib1984@gmail.com>
In-Reply-To: <MN2PR12MB3871FEF4DC52B838B49655BCAF369@MN2PR12MB3871.namprd12.prod.outlook.com>
Date: Wed, 9 Jun 2021 10:04:59 -0400
Message-Id: <DFE35F3A-B076-4EFA-9F10-AE27D8C619D1@gmail.com>
References: <MN2PR12MB3871FEF4DC52B838B49655BCAF369@MN2PR12MB3871.namprd12.prod.outlook.com>
To: Jason Matusiak <jason@gardettoengineering.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: LOHZ5X7IGQ3I3H4QCHAWKDG56DPHPTEU
X-Message-ID-Hash: LOHZ5X7IGQ3I3H4QCHAWKDG56DPHPTEU
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Troubles with the QSFP+ on the N3x0 series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LOHZ5X7IGQ3I3H4QCHAWKDG56DPHPTEU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9122392872244036272=="


--===============9122392872244036272==
Content-Type: multipart/alternative; boundary=Apple-Mail-803D155F-3469-4A4E-82F7-56128F63FDCC
Content-Transfer-Encoding: 7bit


--Apple-Mail-803D155F-3469-4A4E-82F7-56128F63FDCC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m digging into this myself now Using X310s. Yes, Aurora is an FPGA=
 to FPGA interface Created by Xilinx. Ettus has HA and XA images for the X s=
eries and I believe AA and something else for N3xx series. Ettus also has an=
 aurora BIST python script for X310 in the firmware directory of UHD. It too=
k forever to find this, but it=E2=80=99s very useful. I=E2=80=99m sure there=
=E2=80=99s some equivalent for N3xx too, but I haven=E2=80=99t looked. The s=
cript basically just confirms that the SFP1 ports are setup to communicate p=
roperly over Aurora and is sending data between those two interfaces across 2=
 devices. In the =E2=80=9CUHD FOUR-O=E2=80=9D video from GRCON2019 there is A=
 demo of two X310s passing an RF stream between them using GNURadio and RFNo=
C. Other than that, yes it=E2=80=99s very sparse as far as evidence or examp=
les of how Aurora can be used with Ettus products.

Hoping to have some better information to offer here soon, but for now that=E2=
=80=99s about all I have.

Hope this is helpful.

<end transmission>

> On Jun 9, 2021, at 09:14, Jason Matusiak <jason@gardettoengineering.com> w=
rote:
> =EF=BB=BF
> Thank you for all the info Michael.
>=20
> Are you aware of any examples/writeups/tutorials of USRPs and Aurora in ac=
tion?  I am trying to wrap my head around how it is intended to be used.  It=
 seems like it can only really be used in an FPGA-to-FPGA environment, but a=
lmost everything I find in Ettus documentation is just that certain devices a=
re Aurora capable, and not much else to go on. TIA.
>=20
> From: Michael Dickens <michael.dickens@ettus.com>
> Sent: Friday, June 4, 2021 5:00 PM
> To: Jason Matusiak <jason@gardettoengineering.com>
> Cc: Ettus Mail List <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Troubles with the QSFP+ on the N3x0 series
> =20
> When using White Rabbit, the WR link does not appear to the OS; WR signal p=
rocessing is handled directly in the FPGA, and made available to the OS / UH=
D via special commands. Or, that's what's supposed to happen. As of UHD 3.14=
.0.0rc1 WR does not work; we just recently found out this fact, and we are w=
orking hard to get the issue(s) resolved.
>=20
> I've never used the Aurora FPGA image .. AA or AQ. =46rom < https://files.=
ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_sfp_protocols > it looks like A=
Q uses all 4 QSFP+ lanes, which between the actual Aurora protocol and using=
 all 4 10 Gb lanes one should be able to get 40 Gb aggregate data ... litera=
lly bits in, bits out ... no ENET overhead!
>=20
>=20
> On Fri, Jun 4, 2021 at 4:43 PM Jason Matusiak <jason@gardettoengineering.c=
om> wrote:
> Afternoon Michael! This is exactly the info I needed. I misspoke when I sa=
id WX, I meant XQ.
>=20
> After putting the new image on, we knew the /data/ directory still had the=
 two sfp network setups, but we were expecting something in addition for the=
 qsfp. It makes sense that it doesn't //need// to change since we are only u=
sing 2 lanes of one, or 2 lanes of the other. BUT, what I couldn't be 100% s=
ure of is since white rabbit needs Ethernet as well, why wouldn't THAT be th=
e sfp0 configuration, make sense? I'm not working the white rabbit side, but=
 I understand it to be ip based.
>=20
> Lastly. If we go the pure Aurora route, I know that we lose white rabbit, b=
ut we gain a full 40Gbps, right?
>=20
> Thanks again.
> On Jun 4, 2021, at 4:18 PM, Michael Dickens <michael.dickens@ettus.com> wr=
ote:
> Hi Jason - Answers, and more. I hope this is useful and helps clarify the o=
ptions. - MLD
>=20
> 1) The N32x QSFP+ port/link/interface should work with UHD 3.15 via the XQ=
 FPGA image. I haven't tried that in a while, but it did work for me once up=
on a time.
>=20
> 2) When using the WX FPGA image on any N3xy, you get just SFP+ port 1 for d=
ata, which is just a single 10 Gb link -- not the QSFP+ port (which is on th=
e N32x only, by the way). If you use the XQ FPGA image with the N32x then yo=
u get 1x or 2x 10 Gb links via the QSFP+ port: lanes 0 and 1 (or 1 and 2 if y=
ou count lanes as 1's-based). In theory you could use 2x SFP+ 10 Gb links on=
 a host NIC and aggregate them via fiber into a QSFP+ adapter attached to th=
e USRP; I've never tried this directly, but I can say that taking QSFP+ off a=
 host NIC and switching lanes works fine using the appropriate adapters and f=
iber cables and connectors. Just make sure that lanes 0 &/or 1 on the USRP s=
ide match up correctly with the other side coming in (whatever lane[s] you c=
hoose to use, so long as it/they are valid on the NIC).
>=20
> 3) When using the WX FPGA image with an N3xy, "ifconfig" will report back j=
ust "sfp1" as the 10 Gb data link that is connected to SFP+ port 1 on the US=
RP; not the QSFP+ port (which is, again, on just the N32x); this single link=
 is set that up as you would any data link on a USRP and host. If you use th=
e XQ FPGA image with an N32x, "ifconfig" will report back "sfp0" and "sfp1" a=
s the 2 10 Gb data links, and you set those up just as you would if you were=
 using the XG FPGA image. The FPGA maps between the data link (SFP+ or QSFP+=
) and the OS, so that the OS "sees" 1 or 2 10 Gb links; or that's how I unde=
rstand this to work ... the end result is the same regardless of where the m=
apping happens :)
>=20
>=20
> On Fri, Jun 4, 2021 at 2:26 PM Jason Matusiak < jason@gardettoengineering.=
com> wrote:=20
> I have been away from USRPs for a while but am back to using some N3x0 uni=
ts and am having some issues.=20
>=20
> 1 - Does QSFP work with UHD 3.15?  We'd prefer not to go up to v4 yet due t=
o some issues we've seen in testing it, but I am not sure how well supported=
 QSFP is on 3.15.=20
>=20
> 2 - When using the QSFP with White Rabbit (WX image), is it correct to say=
 that the QSFP link is really x2 10Gb links, not a single 20Gb?  Meaning tha=
t we would need a 40Gb QSFP that can handle 4 10G outputs, correct?=20
>=20
> 3 - Lastly, I cannot find any documentation on setting up the QSFP.  I've d=
ownloaded a new WX image over Mender, but I don't see where/how to configure=
 the QSFP.  Is there an article or writeup anywhere that walks through the s=
teps?=20
>=20
> Thank you
> _______________________________________________=20
> USRP-users mailing list -- usrp-users@lists.ettus.com=20
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-803D155F-3469-4A4E-82F7-56128F63FDCC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"conten=
t-type" content=3D"text/html; charset=3Dutf-8">I=E2=80=99m digging into this=
 myself now Using X310s. Yes, Aurora is an FPGA to FPGA interface Created by=
 Xilinx. Ettus has HA and XA images for the X series and I believe AA and so=
mething else for N3xx series. Ettus also has an aurora BIST python script fo=
r X310 in the firmware directory of UHD. It took forever to find this, but i=
t=E2=80=99s very useful. I=E2=80=99m sure there=E2=80=99s some equivalent fo=
r N3xx too, but I haven=E2=80=99t looked. The script basically just confirms=
 that the SFP1 ports are setup to communicate properly over Aurora and is se=
nding data between those two interfaces across 2 devices. In the =E2=80=9CUH=
D FOUR-O=E2=80=9D video from GRCON2019 there is A demo of two X310s passing a=
n RF stream between them using GNURadio and RFNoC. Other than that, yes it=E2=
=80=99s very sparse as far as evidence or examples of how Aurora can be used=
 with Ettus products.<div><div><div><div><br></div><div>Hoping to have some b=
etter information to offer here soon, but for now that=E2=80=99s about all I=
 have.</div><div><br></div><div>Hope this is helpful.</div><div><br><div dir=
=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highlight=
-color: rgba(26, 26, 26, 0.298);">end transmission&gt;</span></div><div dir=3D=
"ltr"><br><blockquote type=3D"cite">On Jun 9, 2021, at 09:14, Jason Matusiak=
 &lt;jason@gardettoengineering.com&gt; wrote:<br><br></blockquote></div><blo=
ckquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Thank you for all the info Michael.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Are you aware of any examples/writeups/tutorials of USRPs and Aurora in acti=
on?&nbsp; I am trying to wrap my head around how it is intended to be used.&=
nbsp; It seems like it can only really be used in an FPGA-to-FPGA environmen=
t, but almost everything I find in Ettus
 documentation is just that certain devices are Aurora capable, and not much=
 else to go on. TIA.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" col=
or=3D"#000000" style=3D"font-size: 11pt;"><b>From:</b> Michael Dickens &lt;m=
ichael.dickens@ettus.com&gt;<br>
<b>Sent:</b> Friday, June 4, 2021 5:00 PM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> Ettus Mail List &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Troubles with the QSFP+ on the N3x0 series<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">When using White Rabbit, the WR link does not appear to the=
 OS; WR signal processing is handled directly in the FPGA, and made availabl=
e&nbsp;to the OS / UHD via special commands. Or, that's what's supposed to h=
appen. As of UHD 3.14.0.0rc1 WR does
 not work; we just recently found out this fact, and we are working hard to g=
et the issue(s) resolved.
<div><br>
</div>
<div>I've never used the Aurora FPGA image .. AA or AQ. =46rom &lt;&nbsp;<a h=
ref=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.co=
m_manual_page-5Fusrp-5Fn3xx.html-23n3xx-5Frh-5Fsfp-5Fprotocols&amp;d=3DDwMFa=
Q&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfs=
F4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3DENRZJm0dongj94OSx26akoZ47ZDgZyJD7Vw1Im=
yuPXk&amp;s=3DZl6FEDU7AJWOGXHESoUNB4E4yyfYiMqxrShWRYTVIq8&amp;e=3D">https://=
files.ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_sfp_protocols</a>
 &gt; it looks like AQ uses all 4 QSFP+ lanes, which between the actual Auro=
ra protocol and using all 4 10 Gb lanes one should be able to get 40 Gb aggr=
egate data ... literally bits in, bits out ... no ENET overhead!</div>
<div><br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jun 4, 2021 at 4:43 PM Jason=
 Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com">jason@gardett=
oengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; borde=
r-left:1px solid rgb(204,204,204); padding-left:1ex">
<div style=3D"zoom:0%">
<div dir=3D"auto">Afternoon Michael! This is exactly the info I needed. I mi=
sspoke when I said WX, I meant XQ.<br>
<br>
</div>
<div dir=3D"auto">After putting the new image on, we knew the /data/ directo=
ry still had the two sfp network setups, but we were expecting something in a=
ddition for the qsfp. It makes sense that it doesn't //need// to change sinc=
e we are only using 2 lanes of
 one, or 2 lanes of the other. BUT, what I couldn't be 100% sure of is since=
 white rabbit needs Ethernet as well, why wouldn't THAT be the sfp0 configur=
ation, make sense? I'm not working the white rabbit side, but I understand i=
t to be ip based.<br>
<br>
</div>
<div dir=3D"auto">Lastly. If we go the pure Aurora route, I know that we los=
e white rabbit, but we gain a full 40Gbps, right?<br>
<br>
</div>
<div dir=3D"auto">Thanks again.</div>
<div class=3D"x_gmail_quote">On Jun 4, 2021, at 4:18 PM, Michael Dickens &lt=
;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.dick=
ens@ettus.com</a>&gt; wrote:
<blockquote class=3D"x_gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex; borde=
r-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">Hi Jason - Answers, and more. I hope this is useful and hel=
ps clarify the options. - MLD
<div><br>
</div>
<div>1) The N32x QSFP+ port/link/interface should work with UHD 3.15 via the=
 XQ FPGA image. I haven't tried that in a while, but it did work for me once=
 upon a time.
</div>
<div><br>
</div>
<div>2) When using the WX FPGA image on any N3xy, you get just SFP+ port 1 f=
or data, which is just a single 10 Gb link -- not the QSFP+ port (which is o=
n the N32x only, by the way). If you use the XQ FPGA image with the N32x the=
n you get 1x or 2x 10 Gb links
 via the QSFP+ port: lanes 0 and 1 (or 1 and 2 if you count lanes as 1's-bas=
ed). In theory you could use 2x SFP+ 10 Gb links on a host NIC and aggregate=
 them via fiber into a QSFP+ adapter attached to the USRP; I've never tried t=
his directly, but I can say
 that taking QSFP+ off a host NIC and switching lanes works fine using the a=
ppropriate adapters and fiber cables and connectors. Just make sure that lan=
es 0 &amp;/or 1 on the USRP side match up correctly with the other side comi=
ng in (whatever lane[s] you choose
 to use, so long as it/they are valid on the NIC). </div>
<div><br>
</div>
<div>3) When using the WX FPGA image with an N3xy, "ifconfig" will report ba=
ck just "sfp1" as the 10 Gb data link that is connected to SFP+ port 1 on th=
e USRP; not the QSFP+ port (which is, again, on just the N32x); this single l=
ink is set that up as you would
 any data link on a USRP and host. If you use the XQ FPGA image with an N32x=
, "ifconfig" will report back "sfp0" and "sfp1" as the 2 10 Gb data links, a=
nd you set those up just as you would if you were using the XG FPGA image. T=
he FPGA maps between the data
 link (SFP+ or QSFP+) and the OS, so that the OS "sees" 1 or 2 10 Gb links; o=
r that's how I understand this to work ... the end result is the same regard=
less of where the mapping happens :)
</div>
<div><br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jun 4, 2021 at 2:26 PM Jason=
 Matusiak &lt;
<a href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@gar=
dettoengineering.com</a>&gt; wrote:
<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; borde=
r-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I have been away from USRPs for a while but am back to using some N3x0 units=
 and am having some issues.
<br>
<br>
1 - Does QSFP work with UHD 3.15?&nbsp; We'd prefer not to go up to v4 yet d=
ue to some issues we've seen in testing it, but I am not sure how well suppo=
rted QSFP is on 3.15.
<br>
<br>
2 - When using the QSFP with White Rabbit (WX image), is it correct to say t=
hat the QSFP link is really x2 10Gb links, not a single 20Gb?&nbsp; Meaning t=
hat we would need a 40Gb QSFP that can handle 4 10G outputs, correct?
<br>
<br>
3 - Lastly, I cannot find any documentation on setting up the QSFP.&nbsp; I'=
ve downloaded a new WX image over Mender, but I don't see where/how to confi=
gure the QSFP.&nbsp; Is there an article or writeup anywhere that walks thro=
ugh the steps?
<br>
<br>
Thank you </div>
</div>
_______________________________________________ <br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">
usrp-users@lists.ettus.com</a> <br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a> <br>
</blockquote>
</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
</div>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></div></div></div></body></html>=

--Apple-Mail-803D155F-3469-4A4E-82F7-56128F63FDCC--

--===============9122392872244036272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9122392872244036272==--
