Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 519CB2D48B8
	for <lists+usrp-users@lfdr.de>; Wed,  9 Dec 2020 19:16:22 +0100 (CET)
Received: from [::1] (port=33442 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kn40i-0001y7-4g; Wed, 09 Dec 2020 13:16:20 -0500
Received: from mail-ej1-f54.google.com ([209.85.218.54]:38837)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kn40e-0001qM-Vl
 for usrp-users@lists.ettus.com; Wed, 09 Dec 2020 13:16:17 -0500
Received: by mail-ej1-f54.google.com with SMTP id a16so3498070ejj.5
 for <usrp-users@lists.ettus.com>; Wed, 09 Dec 2020 10:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RAQHkqXBHJ1Uz9LqSlvHQXhmw0A0W29zEJfWwnFN1es=;
 b=QmVEOnWMeatIZ/8yJa8jIBZNxeOjCReymGA1Tsp7mDmGVxcb7hMzjzaEW/b9g1c6G+
 i4WVta7VHPAzsiWHUh93kNvYa5vkmdAQ5Bss1MsufWvqkvQUNmY013HdnY7sTF5CJFuT
 vafLVm64zDP4JHciofTVffYakE4DqhH0Wd82ckCrLFXOUSKU7yF6itihtbtAAIU5at67
 JaqUrxXSdytqlqwDkUFThEeYIiOD2FJ7Tlzm+htxDi1LX44Z97nQzSDTnBCct4WABsfV
 CCwc8ek6o3FpvgIB1E9SSQLcm09/AvzSMGqE+lvgwKqByjTL20Od4M4iYMzQn05uxvdm
 5TPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RAQHkqXBHJ1Uz9LqSlvHQXhmw0A0W29zEJfWwnFN1es=;
 b=gf0kFd60eiOsmgLwi1SSkkTFx39y152ZODD4IjYgjH8dgW5z20X29Dq34EGAIqMXNi
 ZZEmH/e7EddOmkixAlNdTODo+Pf2ONDnc48T9OWP+TNHUUFH7jCrk/uTY3sfdzDVaY1x
 LBYqzYcgfslzH9ikOjoqyXxkrQua/QXESx5lSwOSX72AonMzXkvQKZgtg7yphu6PL80M
 x0SwwgUkuoiST4AAuYwyuKku6/M+b8I/N7iaDV0WBQg59h2P+WO7AcCZhN5OZECM4Kgv
 W5tKqJkWGCWqtlvKdoEcZP2mS7B05u6voHzMV3RTZcNCrqTjpEgCfK6+ly6WEK25O+EG
 //RA==
X-Gm-Message-State: AOAM533NbNtf+LL+d1qcV/0XYnZUViBpgdAGFBBIEIoZIapv+belE7cM
 /WDqvdHyqXVP2saw03yTTcAqPN2ekTooXyP2P9EhQU4kNX1EXJ8m
X-Google-Smtp-Source: ABdhPJzjF1FJzBXIdRQpb7kuR9tP5cvpRl8NcFPidgyjfYgcAFIIOTn2hcWB7CFD/DOuPJbSjvIIaaPepAflmTjl3/w=
X-Received: by 2002:a17:906:c097:: with SMTP id
 f23mr3251807ejz.136.1607537735821; 
 Wed, 09 Dec 2020 10:15:35 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR12MB33122B3455C6BB95A43D6C29B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAGNhwTOcfDK8q-qgtRyJdc7PGOzbCkvQ6GUVr3Zy7rdrojV_+A@mail.gmail.com>
 <MN2PR12MB33127F18BD732EBE83E306A2B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB33127F18BD732EBE83E306A2B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
Date: Wed, 9 Dec 2020 13:15:24 -0500
Message-ID: <CAGNhwTN9TB7-1Qrh6YWiA1K+V6sGt44SCfdEZE_K2Efr76HC+Q@mail.gmail.com>
To: Jim Palladino <jim@gardettoengineering.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E320 SFP speed/duplex question
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============1733703892058307374=="
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

--===============1733703892058307374==
Content-Type: multipart/alternative; boundary="000000000000b5069405b60c0b39"

--000000000000b5069405b60c0b39
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jim - Yes you are correct in the E320 FPGA image options: 1G, XG, and
AA. I booted up my E320 to verify; forgot that there is just a single SFP+
port on the E320 ... I've been working with X310's and N310's for a while
now, both of which have 2 SFP+ ports!

Since I'm on my E320, I tried out the XG and 1G FPGA images. Using
"ethtool" as you noted, the XG image shows "Speed" of 10000Mb/s, while the
1G image shows 10Mb/s ... even though as you note the link modes are just
"1000baseT/Half 1000baseT/Full". Strange!

Using the "1G" FPGA image, I can sustain 2x2 MIMO at 1.45 M-Samples/second
(but no 2 MS/s), with the wire format being SC16 (4 bytes per sample) ...
that's 92.8 Mb/s bidirectional .. so, clearly more than the 10 Mb/s noted
by "ethtool" ... much closer to 100 Mb/s link speed expect throughput
(about 90% of theoretical) but nowhere near 1 Gb/s! Admittedly I had to
move to a 1Gb link via a possibly-ill-configured-switch to get this to work
at all, since my internal USRP testing network is a mix of SFP+ 10 Gb and
QSFP+ 40 Gb links.

Using the "XG" FPGA image, I can sustain 2x2 MIMO at 60+ MS/s, which is
good.

I'm not sure what's going on with the 1G FPGA image, but if the link works
well enough for your needs then that's the bottom line here!

I believe the following is correct ... and I'm sure if I'm off a bit then
someone will chime in to correct me :)

The Aurora FPGA image is built with the free Xilinx Aurora FPGA-IP,
allowing for FPGA to FPGA high speed serial link. Think of it as a
link-layer transport protocol, where one needs to create the higher-layer
protocols to do actual data transport. Aurora was used in the DARPA
SC2 Colosseum for high-speed transfer between USRPs and other FPGA
processing devices. Aurora removes the internet protocol layers, providing
direct access to the physical networking interface: bits in, bits out
... No ethernet, IP, UDP handling!

We provide a little information on the UHD manual for the E320 about Aurora=
:

* < https://files.ettus.com/manual/page_usrp_e3xx.html#e320_fpga_flavours >

{{{
The Aurora image can be used to run BISTs on the SFP.
}}}

* <
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_troubleshooting_bis=
t
>

{{{
E320 Built-in Self-Test (BiST)
The E320 series devices have a built-in self-test that can be used to
verify the hardware. It is not automatically run, but it can be invoked
anytime by running the e320_bist executable. Calling

e320_bist -h
will list the available options. Tests can be run by specifying their name,
e.g.

e320_bist gpsdo
will test the functionality of the GPSDO. Calling e320_bist standard will
run a standard set of tests, verifying some base peripherals such as the
RTC, the fan and temperature sensors, etc.

Some tests require special hardware connected. For example, for the
sfp_loopback tests, a loopback module must be plugged into the SFP+.

Tests may also load different FPGA images, if required. The aforementioned
SFP tests will load the Aurora FPGA image and use Aurora to run the BER
tests on the SFP port. This is particularly relevant if either a custom
image was loaded, or if there is an active SSH or other connection coming
in via the SFP+ ports.
}}}

I hope this is useful! - MLD


On Wed, Dec 9, 2020 at 11:25 AM Jim Palladino <jim@gardettoengineering.com>
wrote:

> Hi Michael,
>
> Thanks for the response. I did load the FPGA image again using "1G". My
> options are "1G", "XG", "AA". I still have the issue where linux/ethtool =
is
> still reporting a 10Mbps / half-duplex link on sfp0. Again, I'm able to
> stream data, so maybe things are working fine.
>
> Thanks,
> Jim
>
> ------------------------------
> *From:* Michael Dickens <michael.dickens@ettus.com>
> *Sent:* Wednesday, December 9, 2020 11:07 AM
> *To:* Jim Palladino <jim@gardettoengineering.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] E320 SFP speed/duplex question
>
> Hi Jim - Just for completion: Try loading the "HG" image -- again if
> necessary: 1 Gb on SFP+ port 0 and 10 Gb on SFP+ port 1. Regardless of
> whatever Linux / ifconfig / ethtool shows, the SFP+-based networking will
> not work if the link speeds are not met on both ends. All USRPs will set
> the correct speed via the FPGA: 1 Gb or 10 Gb, depending on the FPGA imag=
e
> used. The only way to get different link speeds is a different FPGA image=
.
> Once configured on both ends, if data transport is working then, if Linux=
 /
> ifconfig / ethtool still shows 10 Gb link speed then, yes, something is o=
ff
> with those tools -- but, clearly the USRP is working as desired & that's
> the bottom line here hopefully! - MLD
>
>
> On Wed, Dec 9, 2020 at 9:44 AM Jim Palladino via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello,
> I just setup an E320 with a 1Gbps SFP. I've updated the filesystem, FPGA
> load (with the "1G" build"), etc and am using UHD 4.0. uhd_usrp_probe see=
ms
> happy, and I created a gnuradio flowgraph and streamed samples ok. I did
> not test throughput, though.
>
> What concerns me is that when I connect to the E320 via serial console an=
d
> boot, I see this:
> [   23.592701] nixge 40000000.ethernet sfp0: Link is Up - 10Mbps/Half -
> flow control off
> [   23.733169] nixge 40020000.ethernet int0: Link is Up - 10Mbps/Half -
> flow control off
>
> If I check with ethtool on the E320, I see:
> ----------------------------
> Settings for sfp0:
> Supported ports: [ TP MII ]
> Supported link modes:   1000baseT/Half 1000baseT/Full
> Supported pause frame use: Symmetric Receive-only
> Supports auto-negotiation: No
> Supported FEC modes: Not reported
> Advertised link modes:  1000baseT/Half 1000baseT/Full
> Advertised pause frame use: Symmetric Receive-only
> Advertised auto-negotiation: No
> Advertised FEC modes: Not reported
> Speed: 10Mb/s
> Duplex: Half
> Port: MII
> PHYAD: 0
> Transceiver: internal
> Auto-negotiation: off
> Link detected: yes
> ------------------------------------
>
> I know that the SFP is directly connected to the FPGA, and the load I put
> on the FPGA is for 1gbps. Is the ethtool reported speed of 10Mbps and
> duplex=3Dhalf even meaningful?
>
> By the way, our network switch that the sfp is ultimately connected to
> shows a 1gbps/full duplex connection on that port.
>
> I'm just a little confused with what is happening between
> linux/ethtool/ARM vs the FPGA SFP connection and whether or not I actuall=
y
> have a speed/duplex problem.
>
> Thanks,
> Jim
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_ma=
ilman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpY=
x0&m=3Dh6gfUd4_-1RcS5UAfGAHCk5wNYVY066vaNcSpuMyVKs&s=3Dv42cqkoKiKIWGSBTjv2y=
2lowcm0jBCLsg4iGVWB31w8&e=3D>
>
>

--000000000000b5069405b60c0b39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jim - Yes you are correct in the E320 FPGA image option=
s: 1G, XG, and AA. I booted up my E320 to verify; forgot that there is just=
 a single SFP+ port on the E320 ... I&#39;ve been working with X310&#39;s a=
nd N310&#39;s for a while now, both of which have 2 SFP+ ports!<div><br></d=
iv><div>Since I&#39;m on my E320, I tried out the XG and 1G FPGA images. Us=
ing &quot;ethtool&quot; as you noted, the XG image shows &quot;Speed&quot; =
of 10000Mb/s, while the 1G image shows 10Mb/s ... even though as you note t=
he link modes are just &quot;1000baseT/Half 1000baseT/Full&quot;. Strange!<=
/div><div><br></div><div>Using the &quot;1G&quot; FPGA image, I can sustain=
 2x2 MIMO at 1.45 M-Samples/second (but no 2 MS/s), with the wire format be=
ing SC16 (4 bytes per sample) ... that&#39;s=C2=A092.8 Mb/s bidirectional .=
. so, clearly more than the 10 Mb/s noted by &quot;ethtool&quot; ... much c=
loser to 100 Mb/s link speed expect throughput (about 90% of theoretical) b=
ut nowhere near 1 Gb/s! Admittedly I had to move to a 1Gb link via a possib=
ly-ill-configured-switch to get this to work at all, since my internal USRP=
 testing network is a mix of SFP+ 10 Gb  and QSFP+ 40 Gb=C2=A0links.</div><=
div><br></div><div>Using the &quot;XG&quot; FPGA image, I can sustain 2x2 M=
IMO at 60+ MS/s, which is good.</div><div><br></div><div>I&#39;m not sure w=
hat&#39;s going on with the 1G FPGA image, but if the link works well enoug=
h for your needs then that&#39;s the bottom line here!<br><div><br></div><d=
iv>I believe the following is correct ... and I&#39;m sure if I&#39;m off a=
 bit then someone will chime in to correct me :)</div><div><br></div><div>T=
he=C2=A0Aurora FPGA image is built with the free Xilinx Aurora FPGA-IP, all=
owing for FPGA to FPGA high speed serial link. Think of it as a link-layer =
transport protocol, where one needs to create the higher-layer protocols to=
 do actual data transport. Aurora was used in the DARPA SC2=C2=A0Colosseum =
for high-speed transfer between USRPs and other FPGA processing devices. Au=
rora removes the internet protocol layers, providing direct access to the p=
hysical networking interface: bits in, bits out ...=C2=A0No ethernet, IP, U=
DP handling!</div><div><br></div><div>We provide a little information on th=
e UHD manual for the E320 about Aurora:</div><div><br></div><div>* &lt;=C2=
=A0<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e320_fpga_=
flavours">https://files.ettus.com/manual/page_usrp_e3xx.html#e320_fpga_flav=
ours</a> &gt;</div><div><br></div><div>{{{</div><div>The Aurora image can b=
e used to run BISTs on the SFP.</div><div>}}}</div><div><br></div><div>* &l=
t;=C2=A0<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_=
troubleshooting_bist">https://files.ettus.com/manual/page_usrp_e3xx.html#e3=
xx_troubleshooting_bist</a> &gt;</div><div><br></div><div>{{{</div><div>E32=
0 Built-in Self-Test (BiST)<br>The E320 series devices have a built-in self=
-test that can be used to verify the hardware. It is not automatically run,=
 but it can be invoked anytime by running the e320_bist executable. Calling=
<br><br>e320_bist -h<br>will list the available options. Tests can be run b=
y specifying their name, e.g.<br><br>e320_bist gpsdo<br>will test the funct=
ionality of the GPSDO. Calling e320_bist standard will run a standard set o=
f tests, verifying some base peripherals such as the RTC, the fan and tempe=
rature sensors, etc.<br><br>Some tests require special hardware connected. =
For example, for the sfp_loopback tests, a loopback module must be plugged =
into the SFP+.<br><br>Tests may also load different FPGA images, if require=
d. The aforementioned SFP tests will load the Aurora FPGA image and use Aur=
ora to run the BER tests on the SFP port. This is particularly relevant if =
either a custom image was loaded, or if there is an active SSH or other con=
nection coming in via the SFP+ ports.<br></div><div>}}}</div><div><br></div=
><div>I hope this is useful! - MLD<br><br></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 9, 2020 =
at 11:25 AM Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com=
">jim@gardettoengineering.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi Michael,=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks for the response. I did load the FPGA image again using &quot;1G&quo=
t;. My options are &quot;1G&quot;, &quot;XG&quot;, &quot;AA&quot;. I still =
have the issue where linux/ethtool is still reporting a 10Mbps / half-duple=
x link on sfp0. Again, I&#39;m able to stream data, so maybe things are wor=
king
 fine.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-703746577162683608appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-703746577162683608divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" targ=
et=3D"_blank">michael.dickens@ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, December 9, 2020 11:07 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank">jim@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] E320 SFP speed/duplex question</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Jim - Just for completion: Try loading the &quot;HG&quo=
t; image -- again if necessary: 1 Gb on SFP+ port 0 and 10 Gb on SFP+ port =
1. Regardless=C2=A0of whatever Linux / ifconfig / ethtool shows, the SFP+-b=
ased networking will not work if the link speeds
 are not met on both ends. All USRPs will set the correct speed via the FPG=
A: 1 Gb or 10 Gb,=C2=A0depending on the FPGA image used. The only way to ge=
t different link speeds is a different FPGA image. Once configured on both =
ends, if data transport is working then,
 if Linux / ifconfig / ethtool still shows 10 Gb link speed then, yes, some=
thing is off with those tools -- but, clearly the USRP is working as desire=
d &amp; that&#39;s the bottom line here hopefully! - MLD<br>
<br>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Dec 9, 2020 at 9:44 AM Jim Palladino via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I just setup an E320 with a 1Gbps SFP. I&#39;ve updated the filesystem, FPG=
A load (with the &quot;1G&quot; build&quot;), etc and am using UHD 4.0. uhd=
_usrp_probe seems happy, and I created a gnuradio flowgraph and streamed sa=
mples ok. I did not test throughput, though.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
What concerns me is that when I connect to the E320 via serial console and =
boot, I see this:<br>
[ =C2=A0 23.592701] nixge 40000000.ethernet sfp0: Link is Up - 10Mbps/Half =
- flow control off</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
[ =C2=A0 23.733169] nixge 40020000.ethernet int0: Link is Up - 10Mbps/Half =
- flow control off =C2=A0 =C2=A0
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
If I check with ethtool on the E320, I see:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
----------------------------<br>
Settings for sfp0:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Supported ports: [ TP MII ]</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Supported link modes: =C2=A0 1000baseT/Half 1000baseT/Full</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Supported pause frame use: Symmetric Receive-only</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Supports auto-negotiation: No</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Supported FEC modes: Not reported</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Advertised link modes: =C2=A01000baseT/Half 1000baseT/Full</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Advertised pause frame use: Symmetric Receive-only</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Advertised auto-negotiation: No</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Advertised FEC modes: Not reported</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Speed: 10Mb/s</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Duplex: Half</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Port: MII</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
PHYAD: 0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Transceiver: internal</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Auto-negotiation: off</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Link detected: yes =C2=A0 =C2=A0 <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
------------------------------------</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I know that the SFP is directly connected to the FPGA, and the load I put o=
n the FPGA is for 1gbps. Is the ethtool reported speed of 10Mbps and duplex=
=3Dhalf even meaningful?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
By the way, our network switch that the sfp is ultimately connected to show=
s a 1gbps/full duplex connection on that port.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m just a little confused with what is happening between linux/ethtool=
/ARM vs the FPGA SFP connection and whether or not I actually have a speed/=
duplex problem.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGu=
qHauOvsPdD2NZkfwDnwpYx0&amp;m=3Dh6gfUd4_-1RcS5UAfGAHCk5wNYVY066vaNcSpuMyVKs=
&amp;s=3Dv42cqkoKiKIWGSBTjv2y2lowcm0jBCLsg4iGVWB31w8&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--000000000000b5069405b60c0b39--


--===============1733703892058307374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1733703892058307374==--

