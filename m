Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 625D42D465A
	for <lists+usrp-users@lfdr.de>; Wed,  9 Dec 2020 17:08:57 +0100 (CET)
Received: from [::1] (port=60304 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kn21N-0006Bo-VF; Wed, 09 Dec 2020 11:08:53 -0500
Received: from mail-ed1-f54.google.com ([209.85.208.54]:42745)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kn21L-00068b-6M
 for usrp-users@lists.ettus.com; Wed, 09 Dec 2020 11:08:51 -0500
Received: by mail-ed1-f54.google.com with SMTP id v22so2136739edt.9
 for <usrp-users@lists.ettus.com>; Wed, 09 Dec 2020 08:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wN4DKRMtqHWcuv7jSS2dEoEVRh2DgCuCGC/JvAkzmz8=;
 b=bPnp3kfauCbC3Pvkc+7fhww7hFGycSgZMQa8efi1uRXJECQB2BukLKaN7ZrsYYcsem
 1O5B3/ELYzi1r6+VNYDpAMnsZVe4OYquoIbuGYHptcH+m28kMy95yF4eO9V/emUWI5EK
 gODUF3V0IBsPuaYx9TjKQoRsb1/7LYJ+uSbL91J8Q4aNYIPFoImD0htYob789hdzLHdW
 qT9+VlGRlPgTgeR7WAf/tlnXGthni4iprIzfuCZCa7V/UqORgoe8bnRivCfmo05MgMkL
 WvXLiGh4RPRsszpXKW+sYF0B8UJN82KO3MmuKKd8rvUPz15Rgv+drdmyeg6YDUD8ydQL
 yg4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wN4DKRMtqHWcuv7jSS2dEoEVRh2DgCuCGC/JvAkzmz8=;
 b=o0uIhbKQdvAsYAlpnXWRN6tHORLv3/O+WdMftoPT45ctOPTRhHAHm8PabtOg4dP/px
 PNbyPYl/gFzmiw+gG9IMCxuyZJXnKDhp+wPrvBXPMoqoOvJpxjiIF1kRVC9kNpTyA9h8
 FXGag7UNScuns51QsBxdoTqsNmXsJbefB6KKnYme3svXw7nvNOy07ePzZngvD6lSG1Fu
 ZMCg+EP4E8T4iisaT6TrVm2eEoTUnb30aEHfhmWpNyPufKOdwsgGKPIwXE60HkAzkBdG
 ghIaguhrOouTwxmLZ5+DM9tpw+U8MadMR/IB5yvVAizKk28GKRcvh1tbrj9f8UiUufWq
 8n2A==
X-Gm-Message-State: AOAM530YypN7WfdsaHKd69MCIdNS0/ILNZ8oX9PY8O/p45gy5Hfk/Lmx
 ZRkdolfw11Nc4gvK9woYuINB2vyjopqQM+zO0i8TWLcq
X-Google-Smtp-Source: ABdhPJxmeTp0Y4945FWjUivkvwW6C4FqoawNJVg3nsouVmTvfCusTWRjMEgTwNdrVw6maYrOjH3ROxTk66Pmoi+kb+8=
X-Received: by 2002:aa7:c2d8:: with SMTP id m24mr2674602edp.300.1607530090147; 
 Wed, 09 Dec 2020 08:08:10 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR12MB33122B3455C6BB95A43D6C29B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB33122B3455C6BB95A43D6C29B8CC0@MN2PR12MB3312.namprd12.prod.outlook.com>
Date: Wed, 9 Dec 2020 11:07:58 -0500
Message-ID: <CAGNhwTOcfDK8q-qgtRyJdc7PGOzbCkvQ6GUVr3Zy7rdrojV_+A@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0451185823643359271=="
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

--===============0451185823643359271==
Content-Type: multipart/alternative; boundary="000000000000fd47a105b60a43c4"

--000000000000fd47a105b60a43c4
Content-Type: text/plain; charset="UTF-8"

Hi Jim - Just for completion: Try loading the "HG" image -- again if
necessary: 1 Gb on SFP+ port 0 and 10 Gb on SFP+ port 1. Regardless of
whatever Linux / ifconfig / ethtool shows, the SFP+-based networking will
not work if the link speeds are not met on both ends. All USRPs will set
the correct speed via the FPGA: 1 Gb or 10 Gb, depending on the FPGA image
used. The only way to get different link speeds is a different FPGA image.
Once configured on both ends, if data transport is working then, if Linux /
ifconfig / ethtool still shows 10 Gb link speed then, yes, something is off
with those tools -- but, clearly the USRP is working as desired & that's
the bottom line here hopefully! - MLD


On Wed, Dec 9, 2020 at 9:44 AM Jim Palladino via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
> I just setup an E320 with a 1Gbps SFP. I've updated the filesystem, FPGA
> load (with the "1G" build"), etc and am using UHD 4.0. uhd_usrp_probe seems
> happy, and I created a gnuradio flowgraph and streamed samples ok. I did
> not test throughput, though.
>
> What concerns me is that when I connect to the E320 via serial console and
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
> duplex=half even meaningful?
>
> By the way, our network switch that the sfp is ultimately connected to
> shows a 1gbps/full duplex connection on that port.
>
> I'm just a little confused with what is happening between
> linux/ethtool/ARM vs the FPGA SFP connection and whether or not I actually
> have a speed/duplex problem.
>
> Thanks,
> Jim
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000fd47a105b60a43c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jim - Just for completion: Try loading the &quot;HG&quo=
t; image -- again if necessary: 1 Gb on SFP+ port 0 and 10 Gb on SFP+ port =
1. Regardless=C2=A0of whatever Linux / ifconfig / ethtool shows, the SFP+-b=
ased networking will not work if the link speeds are not met on both ends. =
All USRPs will set the correct speed via the FPGA: 1 Gb or 10 Gb,=C2=A0depe=
nding on the FPGA image used. The only way to get different link speeds is =
a different FPGA image. Once configured on both ends, if data transport is =
working then, if Linux / ifconfig / ethtool still shows 10 Gb link speed th=
en, yes, something is off with those tools -- but, clearly the USRP is work=
ing as desired &amp; that&#39;s the bottom line here hopefully! - MLD<br><b=
r></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Dec 9, 2020 at 9:44 AM Jim Palladino via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




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
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000fd47a105b60a43c4--


--===============0451185823643359271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0451185823643359271==--

