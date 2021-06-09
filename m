Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 239083A187A
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 17:05:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 245F23848E3
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 11:05:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="uPR8pZ+0";
	dkim-atps=neutral
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id F36AF3842B0
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 11:04:15 -0400 (EDT)
Received: by mail-ej1-f54.google.com with SMTP id k7so38909623ejv.12
        for <usrp-users@lists.ettus.com>; Wed, 09 Jun 2021 08:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ljQvA86buVxob9I0FEOGqttTijrJ8oB2A7WXPuoEPZ0=;
        b=uPR8pZ+0VLGrfpSv7XVoFbECQqQBYyNEQ6eAwrNjMbD6KUfANay6J2h6N/NHMhRBsC
         lXV5HGREy8w6iai5EOQ1udOraun2Hg1pKXNbtSEFx2Opk4H7KV0Wrt7Y7HNynUokodM7
         AO2bfR4X77Yin/d+tO804VJpnsrx4YC9p+aXQ8hS9m7Lx9Ec/HETZMc+5XlzdhnbBN5o
         dKDuSRE1BA7C6KtLGts0G/7XtGM4oLeAD8rd1fC2fspmoWzQPQJzMWU5LY9+GaZLDw1C
         e63wlaOi62rTe2WCCYdGHuICgbqx0BiBhQ2thiJuKXmQHXuXqehkEcpHg0va41UDDCOq
         YAjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ljQvA86buVxob9I0FEOGqttTijrJ8oB2A7WXPuoEPZ0=;
        b=swxitMxxMuF4cu4QFzapDX6Fm1GyNY37l3UnQhG67SAVam72HFZtBIRQbX80Wl4yRV
         +KR1TLE6sGY4ByPk0yTvd2QieU6TqO02ZeG+BqwI7+eDJJWeuoXGlzkgFoxEZHqfPVEX
         wlqPr9MCTI/XUPi+S95KrQzk5sUG+4im31mShkOMZN+NIth+YXldck40vZ1LA72eQQ20
         N2KyYlXrDfR14lY5okhBimL4C7jauDsh45fyMVVEFWahjrNsS9FF98Z7gxJLAhzzbKsI
         xHKAYgiBlG6gDL+PmFgP0RDfN/6ycKTI3+XTpu9lXv5GXuV16d/ecwzHx/iQwskN/Qup
         rVJA==
X-Gm-Message-State: AOAM531NQeqkvtJhWiNN3afn0DCEAcMp/Jd+CIYK65E0X1XdKq0Eo5pJ
	FHowgyFCqhYnHGwnCJTvB8jKHHVvTFBxWiprr0ahlBss
X-Google-Smtp-Source: ABdhPJz5K37lWkOFst8fRewRATXIzxFn7PaVeqPPKYmiJO5g7m1WDBEfkkNGbjQAmdpTNMf3N6v2zZVC8H+LxxmcaVE=
X-Received: by 2002:a17:906:e253:: with SMTP id gq19mr343657ejb.138.1623251054709;
 Wed, 09 Jun 2021 08:04:14 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR12MB3871FEF4DC52B838B49655BCAF369@MN2PR12MB3871.namprd12.prod.outlook.com>
 <DFE35F3A-B076-4EFA-9F10-AE27D8C619D1@gmail.com>
In-Reply-To: <DFE35F3A-B076-4EFA-9F10-AE27D8C619D1@gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Wed, 9 Jun 2021 11:04:02 -0400
Message-ID: <CAGNhwTMF6Jxt+SprdSUX6zoqo2YVsM72v7FKsrnmUp9X_ziWJg@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: AGMUT452BWCWJANXWULN262NR3U6KS65
X-Message-ID-Hash: AGMUT452BWCWJANXWULN262NR3U6KS65
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jason Matusiak <jason@gardettoengineering.com>, Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Troubles with the QSFP+ on the N3x0 series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AGMUT452BWCWJANXWULN262NR3U6KS65/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8811905729081329040=="

--===============8811905729081329040==
Content-Type: multipart/alternative; boundary="0000000000007f5f2b05c45696f5"

--0000000000007f5f2b05c45696f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have never used Aurora, and I know of no examples/writeups/tutorials of
USRPs and Aurora in action.

Supposedly some of the USRP have built-in self tests (BIST) that use Aurora
... but that's just on the USRP itself; no actual data links I believe.

A quick internet search turned up this <
https://github.com/NISystemsEngineering/USRP-Streaming-Examples >, which
uses X310 + daughterboards along with NI PXIe devices to receive
Aurora-based data.

Aurora was also used in the DARPA Colosseum; I don't know if they have ever
released examples/writeups/tutorials that would be useful in this regard.

It's a cool feature that I'd love to see in use more (same as White Rabbit)
... but how to use it is a good question! Hopefully others who do have
Aurora experience can chime in! - MLD


On Wed, Jun 9, 2021 at 10:05 AM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> I=E2=80=99m digging into this myself now Using X310s. Yes, Aurora is an F=
PGA to
> FPGA interface Created by Xilinx. Ettus has HA and XA images for the X
> series and I believe AA and something else for N3xx series. Ettus also ha=
s
> an aurora BIST python script for X310 in the firmware directory of UHD. I=
t
> took forever to find this, but it=E2=80=99s very useful. I=E2=80=99m sure=
 there=E2=80=99s some
> equivalent for N3xx too, but I haven=E2=80=99t looked. The script basical=
ly just
> confirms that the SFP1 ports are setup to communicate properly over Auror=
a
> and is sending data between those two interfaces across 2 devices. In the
> =E2=80=9CUHD FOUR-O=E2=80=9D video from GRCON2019 there is A demo of two =
X310s passing an
> RF stream between them using GNURadio and RFNoC. Other than that, yes it=
=E2=80=99s
> very sparse as far as evidence or examples of how Aurora can be used with
> Ettus products.
>
> Hoping to have some better information to offer here soon, but for now
> that=E2=80=99s about all I have.
>
> Hope this is helpful.
>
> <end transmission>
>
> On Jun 9, 2021, at 09:14, Jason Matusiak <jason@gardettoengineering.com>
> wrote:
>
> =EF=BB=BF
> Thank you for all the info Michael.
>
> Are you aware of any examples/writeups/tutorials of USRPs and Aurora in
> action?  I am trying to wrap my head around how it is intended to be used=
.
> It seems like it can only really be used in an FPGA-to-FPGA environment,
> but almost everything I find in Ettus documentation is just that certain
> devices are Aurora capable, and not much else to go on. TIA.
>
> ------------------------------
> *From:* Michael Dickens <michael.dickens@ettus.com>
> *Sent:* Friday, June 4, 2021 5:00 PM
> *To:* Jason Matusiak <jason@gardettoengineering.com>
> *Cc:* Ettus Mail List <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Troubles with the QSFP+ on the N3x0 series
>
> When using White Rabbit, the WR link does not appear to the OS; WR signal
> processing is handled directly in the FPGA, and made available to the OS =
/
> UHD via special commands. Or, that's what's supposed to happen. As of UHD
> 3.14.0.0rc1 WR does not work; we just recently found out this fact, and w=
e
> are working hard to get the issue(s) resolved.
>
> I've never used the Aurora FPGA image .. AA or AQ. From <
> https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_sfp_protocols
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.com_m=
anual_page-5Fusrp-5Fn3xx.html-23n3xx-5Frh-5Fsfp-5Fprotocols&d=3DDwMFaQ&c=3D=
euGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO=
4RbBBLexficV9DG8&m=3DENRZJm0dongj94OSx26akoZ47ZDgZyJD7Vw1ImyuPXk&s=3DZl6FED=
U7AJWOGXHESoUNB4E4yyfYiMqxrShWRYTVIq8&e=3D>
> > it looks like AQ uses all 4 QSFP+ lanes, which between the actual Auror=
a
> protocol and using all 4 10 Gb lanes one should be able to get 40 Gb
> aggregate data ... literally bits in, bits out ... no ENET overhead!
>
>
> On Fri, Jun 4, 2021 at 4:43 PM Jason Matusiak <
> jason@gardettoengineering.com> wrote:
>
> Afternoon Michael! This is exactly the info I needed. I misspoke when I
> said WX, I meant XQ.
>
> After putting the new image on, we knew the /data/ directory still had th=
e
> two sfp network setups, but we were expecting something in addition for t=
he
> qsfp. It makes sense that it doesn't //need// to change since we are only
> using 2 lanes of one, or 2 lanes of the other. BUT, what I couldn't be 10=
0%
> sure of is since white rabbit needs Ethernet as well, why wouldn't THAT b=
e
> the sfp0 configuration, make sense? I'm not working the white rabbit side=
,
> but I understand it to be ip based.
>
> Lastly. If we go the pure Aurora route, I know that we lose white rabbit,
> but we gain a full 40Gbps, right?
>
> Thanks again.
> On Jun 4, 2021, at 4:18 PM, Michael Dickens <michael.dickens@ettus.com>
> wrote:
>
> Hi Jason - Answers, and more. I hope this is useful and helps clarify the
> options. - MLD
>
> 1) The N32x QSFP+ port/link/interface should work with UHD 3.15 via the X=
Q
> FPGA image. I haven't tried that in a while, but it did work for me once
> upon a time.
>
> 2) When using the WX FPGA image on any N3xy, you get just SFP+ port 1 for
> data, which is just a single 10 Gb link -- not the QSFP+ port (which is o=
n
> the N32x only, by the way). If you use the XQ FPGA image with the N32x th=
en
> you get 1x or 2x 10 Gb links via the QSFP+ port: lanes 0 and 1 (or 1 and =
2
> if you count lanes as 1's-based). In theory you could use 2x SFP+ 10 Gb
> links on a host NIC and aggregate them via fiber into a QSFP+ adapter
> attached to the USRP; I've never tried this directly, but I can say that
> taking QSFP+ off a host NIC and switching lanes works fine using the
> appropriate adapters and fiber cables and connectors. Just make sure that
> lanes 0 &/or 1 on the USRP side match up correctly with the other side
> coming in (whatever lane[s] you choose to use, so long as it/they are val=
id
> on the NIC).
>
> 3) When using the WX FPGA image with an N3xy, "ifconfig" will report back
> just "sfp1" as the 10 Gb data link that is connected to SFP+ port 1 on th=
e
> USRP; not the QSFP+ port (which is, again, on just the N32x); this single
> link is set that up as you would any data link on a USRP and host. If you
> use the XQ FPGA image with an N32x, "ifconfig" will report back "sfp0" an=
d
> "sfp1" as the 2 10 Gb data links, and you set those up just as you would =
if
> you were using the XG FPGA image. The FPGA maps between the data link (SF=
P+
> or QSFP+) and the OS, so that the OS "sees" 1 or 2 10 Gb links; or that's
> how I understand this to work ... the end result is the same regardless o=
f
> where the mapping happens :)
>
>
> On Fri, Jun 4, 2021 at 2:26 PM Jason Matusiak <
> jason@gardettoengineering.com> wrote:
>
> I have been away from USRPs for a while but am back to using some N3x0
> units and am having some issues.
>
> 1 - Does QSFP work with UHD 3.15?  We'd prefer not to go up to v4 yet due
> to some issues we've seen in testing it, but I am not sure how well
> supported QSFP is on 3.15.
>
> 2 - When using the QSFP with White Rabbit (WX image), is it correct to sa=
y
> that the QSFP link is really x2 10Gb links, not a single 20Gb?  Meaning
> that we would need a 40Gb QSFP that can handle 4 10G outputs, correct?
>
> 3 - Lastly, I cannot find any documentation on setting up the QSFP.  I've
> downloaded a new WX image over Mender, but I don't see where/how to
> configure the QSFP.  Is there an article or writeup anywhere that walks
> through the steps?
>
> Thank you
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000007f5f2b05c45696f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have never used Aurora, and I know of no=C2=A0examples/w=
riteups/tutorials of USRPs and Aurora in action.<div><br></div><div>Suppose=
dly some of the USRP have built-in self tests (BIST) that use Aurora ... bu=
t that&#39;s just on the USRP itself; no actual data links I believe.<div><=
br></div><div>A quick internet search turned up this &lt;=C2=A0<a href=3D"h=
ttps://github.com/NISystemsEngineering/USRP-Streaming-Examples">https://git=
hub.com/NISystemsEngineering/USRP-Streaming-Examples</a> &gt;, which uses X=
310=C2=A0+ daughterboards along with NI PXIe devices to receive Aurora-base=
d data.</div><div><br></div><div>Aurora was also used in the DARPA Colosseu=
m; I don&#39;t know if they have ever released=C2=A0examples/writeups/tutor=
ials that would be useful in this regard.</div><div><br></div><div>It&#39;s=
 a cool feature that I&#39;d love to see in use more (same as White Rabbit)=
 ... but how to use=C2=A0it is a good question! Hopefully others who do hav=
e Aurora experience can chime in! - MLD</div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 9, 2021 =
at 10:05 AM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com">mau=
d.dib1984@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"auto"><div dir=3D"ltr">I=E2=80=99m digging i=
nto this myself now Using X310s. Yes, Aurora is an FPGA to FPGA interface C=
reated by Xilinx. Ettus has HA and XA images for the X series and I believe=
 AA and something else for N3xx series. Ettus also has an aurora BIST pytho=
n script for X310 in the firmware directory of UHD. It took forever to find=
 this, but it=E2=80=99s very useful. I=E2=80=99m sure there=E2=80=99s some =
equivalent for N3xx too, but I haven=E2=80=99t looked. The script basically=
 just confirms that the SFP1 ports are setup to communicate properly over A=
urora and is sending data between those two interfaces across 2 devices. In=
 the =E2=80=9CUHD FOUR-O=E2=80=9D video from GRCON2019 there is A demo of t=
wo X310s passing an RF stream between them using GNURadio and RFNoC. Other =
than that, yes it=E2=80=99s very sparse as far as evidence or examples of h=
ow Aurora can be used with Ettus products.<div><div><div><div><br></div><di=
v>Hoping to have some better information to offer here soon, but for now th=
at=E2=80=99s about all I have.</div><div><br></div><div>Hope this is helpfu=
l.</div><div><br><div dir=3D"ltr">&lt;<span>end transmission&gt;</span></di=
v><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 9, 2021, at 09:14, =
Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" target=
=3D"_blank">jason@gardettoengineering.com</a>&gt; wrote:<br><br></blockquot=
e></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF





<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Thank you for all the info Michael.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Are you aware of any examples/writeups/tutorials of USRPs and Aurora in act=
ion?=C2=A0 I am trying to wrap my head around how it is intended to be used=
.=C2=A0 It seems like it can only really be used in an FPGA-to-FPGA environ=
ment, but almost everything I find in Ettus
 documentation is just that certain devices are Aurora capable, and not muc=
h else to go on. TIA.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-5087964951129985746divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fro=
m:</b> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" tar=
get=3D"_blank">michael.dickens@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, June 4, 2021 5:00 PM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> Ettus Mail List &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Troubles with the QSFP+ on the N3x0 series=
</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">When using White Rabbit, the WR link does not appear to th=
e OS; WR signal processing is handled directly in the FPGA, and made availa=
ble=C2=A0to the OS / UHD via special commands. Or, that&#39;s what&#39;s su=
pposed to happen. As of UHD 3.14.0.0rc1 WR does
 not work; we just recently found out this fact, and we are working hard to=
 get the issue(s) resolved.
<div><br>
</div>
<div>I&#39;ve never used the Aurora FPGA image .. AA or AQ. From &lt;=C2=A0=
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ett=
us.com_manual_page-5Fusrp-5Fn3xx.html-23n3xx-5Frh-5Fsfp-5Fprotocols&amp;d=
=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQL=
yUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3DENRZJm0dongj94OSx26akoZ47ZDg=
ZyJD7Vw1ImyuPXk&amp;s=3DZl6FEDU7AJWOGXHESoUNB4E4yyfYiMqxrShWRYTVIq8&amp;e=
=3D" target=3D"_blank">https://files.ettus.com/manual/page_usrp_n3xx.html#n=
3xx_rh_sfp_protocols</a>
 &gt; it looks like AQ uses all 4 QSFP+ lanes, which between the actual Aur=
ora protocol and using all 4 10 Gb lanes one should be able to get 40 Gb ag=
gregate data ... literally bits in, bits out ... no ENET overhead!</div>
<div><br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Fri, Jun 4, 2021 at 4:43 PM Jason Matusiak &lt;<a href=
=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@gardettoe=
ngineering.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div style=3D"zoom:0%">
<div dir=3D"auto">Afternoon Michael! This is exactly the info I needed. I m=
isspoke when I said WX, I meant XQ.<br>
<br>
</div>
<div dir=3D"auto">After putting the new image on, we knew the /data/ direct=
ory still had the two sfp network setups, but we were expecting something i=
n addition for the qsfp. It makes sense that it doesn&#39;t //need// to cha=
nge since we are only using 2 lanes of
 one, or 2 lanes of the other. BUT, what I couldn&#39;t be 100% sure of is =
since white rabbit needs Ethernet as well, why wouldn&#39;t THAT be the sfp=
0 configuration, make sense? I&#39;m not working the white rabbit side, but=
 I understand it to be ip based.<br>
<br>
</div>
<div dir=3D"auto">Lastly. If we go the pure Aurora route, I know that we lo=
se white rabbit, but we gain a full 40Gbps, right?<br>
<br>
</div>
<div dir=3D"auto">Thanks again.</div>
<div>On Jun 4, 2021, at 4:18 PM, Michael Dickens &lt;<a href=3D"mailto:mich=
ael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; =
wrote:
<blockquote style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">Hi Jason - Answers, and more. I hope this is useful and he=
lps clarify the options. - MLD
<div><br>
</div>
<div>1) The N32x QSFP+ port/link/interface should work with UHD 3.15 via th=
e XQ FPGA image. I haven&#39;t tried that in a while, but it did work for m=
e once upon a time.
</div>
<div><br>
</div>
<div>2) When using the WX FPGA image on any N3xy, you get just SFP+ port 1 =
for data, which is just a single 10 Gb link -- not the QSFP+ port (which is=
 on the N32x only, by the way). If you use the XQ FPGA image with the N32x =
then you get 1x or 2x 10 Gb links
 via the QSFP+ port: lanes 0 and 1 (or 1 and 2 if you count lanes as 1&#39;=
s-based). In theory you could use 2x SFP+ 10 Gb links on a host NIC and agg=
regate them via fiber into a QSFP+ adapter attached to the USRP; I&#39;ve n=
ever tried this directly, but I can say
 that taking QSFP+ off a host NIC and switching lanes works fine using the =
appropriate adapters and fiber cables and connectors. Just make sure that l=
anes 0 &amp;/or 1 on the USRP side match up correctly with the other side c=
oming in (whatever lane[s] you choose
 to use, so long as it/they are valid on the NIC). </div>
<div><br>
</div>
<div>3) When using the WX FPGA image with an N3xy, &quot;ifconfig&quot; wil=
l report back just &quot;sfp1&quot; as the 10 Gb data link that is connecte=
d to SFP+ port 1 on the USRP; not the QSFP+ port (which is, again, on just =
the N32x); this single link is set that up as you would
 any data link on a USRP and host. If you use the XQ FPGA image with an N32=
x, &quot;ifconfig&quot; will report back &quot;sfp0&quot; and &quot;sfp1&qu=
ot; as the 2 10 Gb data links, and you set those up just as you would if yo=
u were using the XG FPGA image. The FPGA maps between the data
 link (SFP+ or QSFP+) and the OS, so that the OS &quot;sees&quot; 1 or 2 10=
 Gb links; or that&#39;s how I understand this to work ... the end result i=
s the same regardless of where the mapping happens :)
</div>
<div><br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Fri, Jun 4, 2021 at 2:26 PM Jason Matusiak &lt;
<a href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@ga=
rdettoengineering.com</a>&gt; wrote:
<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I have been away from USRPs for a while but am back to using some N3x0 unit=
s and am having some issues.
<br>
<br>
1 - Does QSFP work with UHD 3.15?=C2=A0 We&#39;d prefer not to go up to v4 =
yet due to some issues we&#39;ve seen in testing it, but I am not sure how =
well supported QSFP is on 3.15.
<br>
<br>
2 - When using the QSFP with White Rabbit (WX image), is it correct to say =
that the QSFP link is really x2 10Gb links, not a single 20Gb?=C2=A0 Meanin=
g that we would need a 40Gb QSFP that can handle 4 10G outputs, correct?
<br>
<br>
3 - Lastly, I cannot find any documentation on setting up the QSFP.=C2=A0 I=
&#39;ve downloaded a new WX image over Mender, but I don&#39;t see where/ho=
w to configure the QSFP.=C2=A0 Is there an article or writeup anywhere that=
 walks through the steps?
<br>
<br>
Thank you </div>
</div>
_______________________________________________ <br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a> <br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
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


<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></div></div></div></div></blockquote></div>

--0000000000007f5f2b05c45696f5--

--===============8811905729081329040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8811905729081329040==--
