Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8943E2D78F8
	for <lists+usrp-users@lfdr.de>; Fri, 11 Dec 2020 16:18:44 +0100 (CET)
Received: from [::1] (port=52604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knkBo-0005Bd-Ce; Fri, 11 Dec 2020 10:18:36 -0500
Received: from mail-ej1-f53.google.com ([209.85.218.53]:38908)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1knkBk-00057n-Sk
 for usrp-users@lists.ettus.com; Fri, 11 Dec 2020 10:18:33 -0500
Received: by mail-ej1-f53.google.com with SMTP id a16so12827089ejj.5
 for <usrp-users@lists.ettus.com>; Fri, 11 Dec 2020 07:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WCaQsfXrxKPgGq7CaV5hIvO6+i596Q1ksRRFtRubGoc=;
 b=AFJkWEbD2MUQiRYwHGAzkvQ/9fmqQuFZnBC9vZpruVE3eJUZlS0utmWxEICYcnlSc4
 OQopJlBUczxXf9enRhJwWPcHlBXMpdu7IJpSZ0sSpKs/z3YCR1zyBWtOqKE+Ei00OMYZ
 Jqeed7ux+VhSy25dONfZTmTafKyYvK/58nN8ZLYRXEap/wSOJtVbiqGOrp6AoFGu1bdR
 JfYq+Zx7GK8o+dxz5YCV3yiinFJ0e1kSl8r9JcvPGrgmQUuOtrF8WK67mIdM0nbAC3sY
 dDMpfHj846nn46hz1e/DN8Ga7baMqLRxDrHceXeC4EqlrO2uJVVNpGtkcOI9cofzOEkH
 NTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WCaQsfXrxKPgGq7CaV5hIvO6+i596Q1ksRRFtRubGoc=;
 b=Q5DrTl1phpq4u6TOuuXtNH94EjSOlEe1wIXDxbD/fH9zJFXHTdIBMGi7jbHsjGcDsv
 AGuQhmOTtYALjyLqclnIEOiuXiloeGC9dwgMdnIN+h+JjW0Bgbgvv/gZu6FyIa9tE+Wy
 sETkzZDm2F15a83n72hL+30Bpqa8b+hJrrvcJmyB42t5g4jdD8cXp7JCLXlxvQaQuLDR
 WqydVRkHIjpX0VajfKlFzbpAKhnRO/A3Z+VdyvQDSWqthTvLeAaFsIjMkNoMFGuluPtq
 rtmLpkXzg024SC95wLH3HBVHh9afLAsrIjNRsnWa7NI6bFYeWHP2qoFCFArlY60d3L5q
 09PA==
X-Gm-Message-State: AOAM530pe4FTZ4OymKM61tPqQvyn6FNg0tncQVwBXkbnOEj0wXGj69hT
 UFAzzrKm6na5jOW9P60KODeHgveW6U4+y9XA+P2YthwO/x0i6w==
X-Google-Smtp-Source: ABdhPJwAWBywnNLUP4+S7MCIqer7pC96CcTqU4hXDCy8q81EM5ub5pzW1b+pCBUXoLN6qqb/A0YtR/q2ZOEGa7Mz+Wc=
X-Received: by 2002:a17:906:614:: with SMTP id
 s20mr11149086ejb.202.1607699871488; 
 Fri, 11 Dec 2020 07:17:51 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR12MB33122B3455C6BB95A43D6C29B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAGNhwTOcfDK8q-qgtRyJdc7PGOzbCkvQ6GUVr3Zy7rdrojV_+A@mail.gmail.com>
 <MN2PR12MB33127F18BD732EBE83E306A2B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAGNhwTN9TB7-1Qrh6YWiA1K+V6sGt44SCfdEZE_K2Efr76HC+Q@mail.gmail.com>
 <MN2PR12MB33129BC6FB4562E21995BBAFB8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB3312C09B3527B6399272229DB8CB0@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3312C09B3527B6399272229DB8CB0@MN2PR12MB3312.namprd12.prod.outlook.com>
Date: Fri, 11 Dec 2020 10:17:39 -0500
Message-ID: <CAGNhwTOwex=uo=_CQ_16_6GOpfJEh5CsP=eCkb=TQisOnOcK4A@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7139446339020181229=="
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

--===============7139446339020181229==
Content-Type: multipart/alternative; boundary="000000000000bf08dd05b631cb6d"

--000000000000bf08dd05b631cb6d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for reporting back, Jim! I'm glad redoing the 1G networking resolved
the issue & got you to the expected max sample rate for the E320 in network
mode. Since I almost never use the 1G SFP+ mode, I'm not worried about my
1G networking & will just stick with the 10G SFP+ mode which works nicely
for my physical setup. I'm glad to have helped & also that the issue
got resolved so quickly! Good luck with your USRP work! - MLD


On Thu, Dec 10, 2020 at 7:08 AM Jim Palladino <jim@gardettoengineering.com>
wrote:

> Hello,
>
> I just wanted to follow up that I changed the configuration of the 1gbps
> network interface on my development computer (this is the interface
> directly connected to the SFP on the E320). I believe I may have had an I=
P
> conflict yesterday. After making this change and restarting everything, I
> am able to sustain rates around 28Msps without overflows now -- or at lea=
st
> they are very rare. This is much better than the 4Msps I was seeing
> yesterday. I think everything is working as it should be.
>
> Michael Dickens -- thanks for your help and your quick response yesterday=
.
>
> Jim
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Jim
> Palladino via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, December 9, 2020 2:03 PM
> *To:* Michael Dickens <michael.dickens@ettus.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] E320 SFP speed/duplex question
>
> Thanks again for the response and information. I'm seeing pretty much wha=
t
> you are. If I make a gnuradio flowgraph with a UHD:Usrp_Source connected =
to
> a Null_Sink, I can set the sample rate to 4MHz without overflows. With a
> sample rate of 5MHz, I see "OOOOO" repeating in the console. So the maxim=
um
> throughput I am seeing is about 32*4MHz =3D 128Mbps. As you said, it is
> definitely higher than the 10Mbps reported by ethtool, but not as high as=
 I
> need. Unfortunately, I don't have a 10Gbit interface available.
>
> I started out with the SFP connected to a switch, through our company's
> network, and to my development machine. I thought maybe the extra
> infrastructure was the issue, even though an iperf throughput test (from
> the management port to my computer) showed about 480Mbps. I assumed the S=
FP
> port to my computer would allow for a similar throughput through the
> network. Anyhow, I ended up hooking the SFP directly to a 1gbps Ethernet
> port on my computer (taking the switch and network out of the loop). This
> made no difference in the throughput I can achieve. It's still a little
> over 100Mbps.
>
> If you have any ideas what the throughput issue could be, I would greatly
> appreciate it. We really need to run at higher sample rates than I'm
> currently able to do.
>
> Thanks,
> Jim
>
> ------------------------------
> *From:* Michael Dickens <michael.dickens@ettus.com>
> *Sent:* Wednesday, December 9, 2020 1:15 PM
> *To:* Jim Palladino <jim@gardettoengineering.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] E320 SFP speed/duplex question
>
> Hi Jim - Yes you are correct in the E320 FPGA image options: 1G, XG, and
> AA. I booted up my E320 to verify; forgot that there is just a single SFP=
+
> port on the E320 ... I've been working with X310's and N310's for a while
> now, both of which have 2 SFP+ ports!
>
> Since I'm on my E320, I tried out the XG and 1G FPGA images. Using
> "ethtool" as you noted, the XG image shows "Speed" of 10000Mb/s, while th=
e
> 1G image shows 10Mb/s ... even though as you note the link modes are just
> "1000baseT/Half 1000baseT/Full". Strange!
>
> Using the "1G" FPGA image, I can sustain 2x2 MIMO at 1.45 M-Samples/secon=
d
> (but no 2 MS/s), with the wire format being SC16 (4 bytes per sample) ...
> that's 92.8 Mb/s bidirectional .. so, clearly more than the 10 Mb/s noted
> by "ethtool" ... much closer to 100 Mb/s link speed expect throughput
> (about 90% of theoretical) but nowhere near 1 Gb/s! Admittedly I had to
> move to a 1Gb link via a possibly-ill-configured-switch to get this to wo=
rk
> at all, since my internal USRP testing network is a mix of SFP+ 10 Gb and
> QSFP+ 40 Gb links.
>
> Using the "XG" FPGA image, I can sustain 2x2 MIMO at 60+ MS/s, which is
> good.
>
> I'm not sure what's going on with the 1G FPGA image, but if the link work=
s
> well enough for your needs then that's the bottom line here!
>
> I believe the following is correct ... and I'm sure if I'm off a bit then
> someone will chime in to correct me :)
>
> The Aurora FPGA image is built with the free Xilinx Aurora FPGA-IP,
> allowing for FPGA to FPGA high speed serial link. Think of it as a
> link-layer transport protocol, where one needs to create the higher-layer
> protocols to do actual data transport. Aurora was used in the DARPA
> SC2 Colosseum for high-speed transfer between USRPs and other FPGA
> processing devices. Aurora removes the internet protocol layers, providin=
g
> direct access to the physical networking interface: bits in, bits out
> ... No ethernet, IP, UDP handling!
>
> We provide a little information on the UHD manual for the E320 about
> Aurora:
>
> * < https://files.ettus.com/manual/page_usrp_e3xx.html#e320_fpga_flavours
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.com_m=
anual_page-5Fusrp-5Fe3xx.html-23e320-5Ffpga-5Fflavours&d=3DDwMFaQ&c=3DeuGZs=
tcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2N=
ZkfwDnwpYx0&m=3D7N8gAH6vgMzO-NwRZFhDG4KfKuV1TD3bECwVc0phexQ&s=3DXOLlOog92yh=
eS2apHdPQC58eepUR3d9r8QEXmeUcCO0&e=3D>
> >
>
> {{{
> The Aurora image can be used to run BISTs on the SFP.
> }}}
>
> * <
> https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_troubleshooting_b=
ist
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.com_m=
anual_page-5Fusrp-5Fe3xx.html-23e3xx-5Ftroubleshooting-5Fbist&d=3DDwMFaQ&c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHau=
OvsPdD2NZkfwDnwpYx0&m=3D7N8gAH6vgMzO-NwRZFhDG4KfKuV1TD3bECwVc0phexQ&s=3DV3o=
5ZjN6FSwDrC7ogJcxLGvTkw-vhNq3-xMYd3Eh1yk&e=3D>
> >
>
> {{{
> E320 Built-in Self-Test (BiST)
> The E320 series devices have a built-in self-test that can be used to
> verify the hardware. It is not automatically run, but it can be invoked
> anytime by running the e320_bist executable. Calling
>
> e320_bist -h
> will list the available options. Tests can be run by specifying their
> name, e.g.
>
> e320_bist gpsdo
> will test the functionality of the GPSDO. Calling e320_bist standard will
> run a standard set of tests, verifying some base peripherals such as the
> RTC, the fan and temperature sensors, etc.
>
> Some tests require special hardware connected. For example, for the
> sfp_loopback tests, a loopback module must be plugged into the SFP+.
>
> Tests may also load different FPGA images, if required. The aforementione=
d
> SFP tests will load the Aurora FPGA image and use Aurora to run the BER
> tests on the SFP port. This is particularly relevant if either a custom
> image was loaded, or if there is an active SSH or other connection coming
> in via the SFP+ ports.
> }}}
>
> I hope this is useful! - MLD
>
>
> On Wed, Dec 9, 2020 at 11:25 AM Jim Palladino <jim@gardettoengineering.co=
m>
> wrote:
>
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

--000000000000bf08dd05b631cb6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for reporting back, Jim! I&#39;m glad redoing the 1=
G networking resolved the issue &amp; got you to the expected max sample ra=
te for the E320 in network mode. Since I almost never use the 1G SFP+ mode,=
 I&#39;m not worried about my 1G networking &amp; will just stick with the =
10G SFP+ mode which works nicely for my physical=C2=A0setup. I&#39;m glad t=
o have helped &amp; also that the issue got=C2=A0resolved so quickly! Good =
luck with your USRP work! - MLD<br><br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 10, 2020 at 7:08 AM Jim =
Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com">jim@gardettoen=
gineering.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I just wanted to follow up that I changed the configuration of the 1gbps ne=
twork interface on my development computer (this is the interface directly =
connected to the SFP on the E320). I believe I may have had an IP conflict =
yesterday. After making this change
 and restarting everything, I am able to sustain rates around 28Msps withou=
t overflows now -- or at least they are very rare. This is much better than=
 the 4Msps I was seeing yesterday. I think everything is working as it shou=
ld be.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Michael Dickens -- thanks for your help and your quick response yesterday.<=
/div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-5387051788880637218appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-5387051788880637218divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com"=
 target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of =
Jim Palladino via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, December 9, 2020 2:03 PM<br>
<b>To:</b> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com"=
 target=3D"_blank">michael.dickens@ettus.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] E320 SFP speed/duplex question</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks again for the response and information. I&#39;m seeing pretty much w=
hat you are. If I make a gnuradio flowgraph with a UHD:Usrp_Source connecte=
d to a Null_Sink, I can set the sample rate to 4MHz without overflows. With=
 a sample rate of 5MHz, I see &quot;OOOOO&quot;
 repeating in the console. So the maximum throughput I am seeing is about 3=
2*4MHz =3D 128Mbps. As you said, it is definitely higher than the 10Mbps re=
ported by ethtool, but not as high as I need. Unfortunately, I don&#39;t ha=
ve a 10Gbit interface available.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I started out with the SFP connected to a switch, through our company&#39;s=
 network, and to my development machine. I thought maybe the extra infrastr=
ucture was the issue, even though an iperf throughput test (from the manage=
ment port to my computer) showed about
 480Mbps. I assumed the SFP port to my computer would allow for a similar t=
hroughput through the network. Anyhow, I ended up hooking the SFP directly =
to a 1gbps Ethernet port on my computer (taking the switch and network out =
of the loop). This made no difference
 in the throughput I can achieve. It&#39;s still a little over 100Mbps.</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
If you have any ideas what the throughput issue could be, I would greatly a=
ppreciate it. We really need to run at higher sample rates than I&#39;m cur=
rently able to do.</div>
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
<div id=3D"gmail-m_-5387051788880637218x_appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-5387051788880637218x_divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>F=
rom:</b> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" t=
arget=3D"_blank">michael.dickens@ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, December 9, 2020 1:15 PM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank">jim@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] E320 SFP speed/duplex question</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Jim - Yes you are correct in the E320 FPGA image option=
s: 1G, XG, and AA. I booted up my E320 to verify; forgot that there is just=
 a single SFP+ port on the E320 ... I&#39;ve been working with X310&#39;s a=
nd N310&#39;s for a while now, both of which have
 2 SFP+ ports!
<div><br>
</div>
<div>Since I&#39;m on my E320, I tried out the XG and 1G FPGA images. Using=
 &quot;ethtool&quot; as you noted, the XG image shows &quot;Speed&quot; of =
10000Mb/s, while the 1G image shows 10Mb/s ... even though as you note the =
link modes are just &quot;1000baseT/Half 1000baseT/Full&quot;. Strange!</di=
v>
<div><br>
</div>
<div>Using the &quot;1G&quot; FPGA image, I can sustain 2x2 MIMO at 1.45 M-=
Samples/second (but no 2 MS/s), with the wire format being SC16 (4 bytes pe=
r sample) ... that&#39;s=C2=A092.8 Mb/s bidirectional .. so, clearly more t=
han the 10 Mb/s noted by &quot;ethtool&quot; ... much closer
 to 100 Mb/s link speed expect throughput (about 90% of theoretical) but no=
where near 1 Gb/s! Admittedly I had to move to a 1Gb link via a possibly-il=
l-configured-switch to get this to work at all, since my internal USRP test=
ing network is a mix of SFP+ 10
 Gb and QSFP+ 40 Gb=C2=A0links.</div>
<div><br>
</div>
<div>Using the &quot;XG&quot; FPGA image, I can sustain 2x2 MIMO at 60+ MS/=
s, which is good.</div>
<div><br>
</div>
<div>I&#39;m not sure what&#39;s going on with the 1G FPGA image, but if th=
e link works well enough for your needs then that&#39;s the bottom line her=
e!<br>
<div><br>
</div>
<div>I believe the following is correct ... and I&#39;m sure if I&#39;m off=
 a bit then someone will chime in to correct me :)</div>
<div><br>
</div>
<div>The=C2=A0Aurora FPGA image is built with the free Xilinx Aurora FPGA-I=
P, allowing for FPGA to FPGA high speed serial link. Think of it as a link-=
layer transport protocol, where one needs to create the higher-layer protoc=
ols to do actual data transport. Aurora
 was used in the DARPA SC2=C2=A0Colosseum for high-speed transfer between U=
SRPs and other FPGA processing devices. Aurora removes the internet protoco=
l layers, providing direct access to the physical networking interface: bit=
s in, bits out ...=C2=A0No ethernet, IP, UDP
 handling!</div>
<div><br>
</div>
<div>We provide a little information on the UHD manual for the E320 about A=
urora:</div>
<div><br>
</div>
<div>* &lt;=C2=A0<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__files.ettus.com_manual_page-5Fusrp-5Fe3xx.html-23e320-5Ffpga-5Fflav=
ours&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp=
;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D7N8gAH6vgMzO-NwRZF=
hDG4KfKuV1TD3bECwVc0phexQ&amp;s=3DXOLlOog92yheS2apHdPQC58eepUR3d9r8QEXmeUcC=
O0&amp;e=3D" target=3D"_blank">https://files.ettus.com/manual/page_usrp_e3x=
x.html#e320_fpga_flavours</a>
 &gt;</div>
<div><br>
</div>
<div>{{{</div>
<div>The Aurora image can be used to run BISTs on the SFP.</div>
<div>}}}</div>
<div><br>
</div>
<div>* &lt;=C2=A0<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__files.ettus.com_manual_page-5Fusrp-5Fe3xx.html-23e3xx-5Ftroubleshoo=
ting-5Fbist&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfi=
iMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D7N8gAH6vgMz=
O-NwRZFhDG4KfKuV1TD3bECwVc0phexQ&amp;s=3DV3o5ZjN6FSwDrC7ogJcxLGvTkw-vhNq3-x=
MYd3Eh1yk&amp;e=3D" target=3D"_blank">https://files.ettus.com/manual/page_u=
srp_e3xx.html#e3xx_troubleshooting_bist</a>
 &gt;</div>
<div><br>
</div>
<div>{{{</div>
<div>E320 Built-in Self-Test (BiST)<br>
The E320 series devices have a built-in self-test that can be used to verif=
y the hardware. It is not automatically run, but it can be invoked anytime =
by running the e320_bist executable. Calling<br>
<br>
e320_bist -h<br>
will list the available options. Tests can be run by specifying their name,=
 e.g.<br>
<br>
e320_bist gpsdo<br>
will test the functionality of the GPSDO. Calling e320_bist standard will r=
un a standard set of tests, verifying some base peripherals such as the RTC=
, the fan and temperature sensors, etc.<br>
<br>
Some tests require special hardware connected. For example, for the sfp_loo=
pback tests, a loopback module must be plugged into the SFP+.<br>
<br>
Tests may also load different FPGA images, if required. The aforementioned =
SFP tests will load the Aurora FPGA image and use Aurora to run the BER tes=
ts on the SFP port. This is particularly relevant if either a custom image =
was loaded, or if there is an active
 SSH or other connection coming in via the SFP+ ports.<br>
</div>
<div>}}}</div>
<div><br>
</div>
<div>I hope this is useful! - MLD<br>
<br>
</div>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Dec 9, 2020 at 11:25 AM Jim Palladino &lt;<a href=
=3D"mailto:jim@gardettoengineering.com" target=3D"_blank">jim@gardettoengin=
eering.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
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
<div id=3D"gmail-m_-5387051788880637218x_x_gmail-m_-703746577162683608appen=
donsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-5387051788880637218x_x_gmail-m_-703746577162683608divRp=
lyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" =
style=3D"font-size:11pt"><b>From:</b> Michael Dickens &lt;<a href=3D"mailto=
:michael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>=
&gt;<br>
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
</blockquote>
</div>
</div>
</div>
</div>

</blockquote></div>

--000000000000bf08dd05b631cb6d--


--===============7139446339020181229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7139446339020181229==--

