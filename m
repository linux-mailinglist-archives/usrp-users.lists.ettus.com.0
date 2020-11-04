Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3D32A5CBD
	for <lists+usrp-users@lfdr.de>; Wed,  4 Nov 2020 03:32:57 +0100 (CET)
Received: from [::1] (port=57682 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ka8bQ-0005TQ-RP; Tue, 03 Nov 2020 21:32:48 -0500
Received: from mail-ua1-f46.google.com ([209.85.222.46]:40376)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1ka8bN-0005PM-Ec
 for usrp-users@lists.ettus.com; Tue, 03 Nov 2020 21:32:45 -0500
Received: by mail-ua1-f46.google.com with SMTP id q20so5634970uar.7
 for <usrp-users@lists.ettus.com>; Tue, 03 Nov 2020 18:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ccNPkPDlP8BJQ8CSI38kRR2addUPKkip9pPE8B0wDlQ=;
 b=JXFGXvaG8jrbRMlLp/42OaFUq3icoDI9sazlBHg2Jjp2s6W2mT1fKl5P1H5MRrbXkN
 95f2reardN7OaqoEZkgWRz4ncLo4JlXC9fovjLy6r51b/fNJZ3H9YVSv33r2gcliicsF
 al7arJ+mS+fBE1yAhNLIU0810UZPQzb+19JlXNkI1OsEalCsc09/XHi1Tw30xDBwNdpv
 RyGElev9x5UatRAMQByIKDx6XbO9e3NnQwvzAbh+srT/ykGMN1MwoJtfNr/Q8LL53PEp
 kqPaH9YAYgex4kKeA9/4BH4gtTQ7HrFWpv9yEKKKwHJDdfCltw/0aIpzNYy0FquYgu7n
 yJVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ccNPkPDlP8BJQ8CSI38kRR2addUPKkip9pPE8B0wDlQ=;
 b=Jg1PoSPvJgYlMcyyjEO3NDMGwhDF//SNfbG5gLbc9Wo+bI5Pa1YGRjL3+5J81mhXNc
 nFMiJ/psQyXRRrU7RWhFLvXImTt3IMZcO6r49uDYU5xomFSs3Fr9Le5y7RwJLqgwL39m
 AYdvmeWjEirnzZihdy7Pkwi5LqLabwFL++pmnNp2rSEngJcGk5Xw5lW5b1tCddQpqCbt
 bxjIJiTR4wVFr7tt40SG8UMMx6RtNPwG7GIO2s7rlxyYQAbO+u1To4LsyhR4PFfrYlDB
 ksNIXpDCYuF1MkEfN1HAzPGFxOTPldMqJDMsenmJ9LL5vudozHg34apLgaCUHhPTmUpi
 tEwA==
X-Gm-Message-State: AOAM5322OQRDnA6LcdU/mDcy8XEF8cXZ1DWG6bhgF5m+F7tQfmmIgU8v
 1fYKwQVFTWvG+pN6H3uaJCbGkXHrDvfZBSb3ZXM2NJB+
X-Google-Smtp-Source: ABdhPJwqf3I7LdvUEScs8W4YCLFKkq8ctyQ7jnK0838Dp+Pdk1YEmWEojW3nKsDi5Np6OuvaiFWSueqcPHtz0e1SBN4=
X-Received: by 2002:ab0:3112:: with SMTP id e18mr12210583ual.112.1604457124759; 
 Tue, 03 Nov 2020 18:32:04 -0800 (PST)
MIME-Version: 1.0
References: <CAGJu-nZLreKPAhpynaXE27rxSm_NhHDym+Ftfpaj0VogaBE7Lw@mail.gmail.com>
In-Reply-To: <CAGJu-nZLreKPAhpynaXE27rxSm_NhHDym+Ftfpaj0VogaBE7Lw@mail.gmail.com>
Date: Tue, 3 Nov 2020 21:31:28 -0500
Message-ID: <CAL7q81sJ1tL_XV_8S=MFE4TO+P1_veyFZX=bpmB-NYYBjUahtA@mail.gmail.com>
To: Robert Wilson <robertbenwilson0@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC Fosphor error
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============3964314741269028174=="
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

--===============3964314741269028174==
Content-Type: multipart/alternative; boundary="000000000000faa30e05b33ec891"

--000000000000faa30e05b33ec891
Content-Type: text/plain; charset="UTF-8"

Hi Ben,

Try setting your NIC's MTU to 9000.

Jonathon

On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> OS: Linux Ubuntu 20.04.1 LTS
> GRC: 3.8
> UHD: 4.0
> USRP:X310 (HG)
>
> I have been looking at RFNoC only for a few weeks. I have followed the
> RFNoC Workshop 4 tutorial and successfully built my own custom gain block
> as well as implemented and FFT from existing blocks using the "Getting
> Started with RFNoC" document online.
>
> I am now attempting to get Fosphor up and running on my X310 to further
> understand bitstream generation from YAML files. At one point I believe
> there was an example bitstream that had the correct Fosphor configuration I
> don't see it in the build of UHD I have.
>
> I've attached my .yml file and a copy of my GRC flow graph.
> Below is the error message I'm receiving.
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.0-1-gcf570707
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [GPS] No GPSDO found
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
> 0xfd7d809a, 0xffff
> [WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on this device.
> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...
> gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command...
> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...
>
> >>> Done (return code -11)
>
> More resources of this type of development would be welcome as well.
>
> Many Thanks,
> Ben Wilson
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000faa30e05b33ec891
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ben,<div><br></div><div>Try setting your NIC&#39;s MTU =
to 9000.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 2, 2020 at 6:55=
 AM Robert Wilson via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><b=
r></div><div>OS: Linux Ubuntu 20.04.1 LTS<br></div><div>GRC: 3.8</div><div>=
UHD: 4.0</div><div>USRP:X310 (HG)<br></div><div><br></div><div>I have been =
looking at RFNoC only for a few weeks. I have followed the RFNoC Workshop 4=
 tutorial and successfully built my own custom gain block as well as implem=
ented and FFT from existing blocks using the &quot;Getting Started with RFN=
oC&quot; document online.</div><div><br></div><div>I am now attempting to g=
et Fosphor up and running on my X310 to further understand bitstream genera=
tion from YAML files. At one point I believe there was an example bitstream=
 that had the correct Fosphor configuration I don&#39;t see it in the build=
 of UHD I have.</div><div><br></div><div>I&#39;ve attached my .yml file and=
 a copy of my GRC flow graph. <br></div><div>Below is the error message I&#=
39;m receiving.</div><div><br></div><div>[INFO] [UHD] linux; GNU C++ versio=
n 9.3.0; Boost_107100; UHD_4.0.0.0-1-gcf570707<br>[INFO] [X300] X300 initia=
lization sequence...<br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[I=
NFO] [GPS] No GPSDO found<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[WARN=
ING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xfd7d809a, 0x=
ffff<br>[WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on this=
 device.<br>gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...<br>[WA=
RNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br>gr::log :=
DEBUG: rfnoc_rx_streamer1 - Committing graph...<br>gr::log :DEBUG: rfnoc_rx=
_streamer1 - Sending start stream command...<br>gr::log :DEBUG: rfnoc_rx_st=
reamer0 - Sending start stream command...<br><br>&gt;&gt;&gt; Done (return =
code -11)</div><div><br></div><div>More resources of this type of developme=
nt would be welcome as well.<br></div><div><br></div><div>Many Thanks,</div=
><div>Ben Wilson<br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000faa30e05b33ec891--


--===============3964314741269028174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3964314741269028174==--

