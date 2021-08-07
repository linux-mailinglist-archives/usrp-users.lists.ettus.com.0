Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 177193E3374
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 06:50:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4906C384DEB
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 00:50:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="Hkn1y6Xe";
	dkim-atps=neutral
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 72095383EFB
	for <USRP-users@lists.ettus.com>; Sat,  7 Aug 2021 00:49:38 -0400 (EDT)
Received: by mail-ua1-f44.google.com with SMTP id t26so4518217uao.12
        for <USRP-users@lists.ettus.com>; Fri, 06 Aug 2021 21:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QsgpOQZZz6exPMwiXC2mLRrrh3gnrf20iDNPm/5zlXs=;
        b=Hkn1y6XeQdbx8a6q9d8FCO3f9Jq7TC47+va0eRSO/hiVw4CPxI9GByZipJkQUjDTGp
         39r9NeWkVGryE35m1yxu+pPbwuWbpuPzdX/Sw+PLV6FCb6z4fB5fR0g1b9S6mJdEparv
         VvgzfRYK9bR286cRVlPH3D7ed9OZVQQas7gqBXwWf1n6alqTIrK93fwx49ZPY7VcNYGp
         Rc+AqY3Po9uaZRRfvc54yHX8dl8FQfaIC/yfbh2E6iE7cDd02M2wmGva0bV0Jhocqpby
         18/mZsPQNwiaGd3bNKpEcmxpmzWGO2Juj/2D/6AMHn5PBa84HUFka2o8qM7En5Xz6GF8
         bKNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QsgpOQZZz6exPMwiXC2mLRrrh3gnrf20iDNPm/5zlXs=;
        b=MdAdIzmtetbtZAP0M6y7VHGNJVYuQomPsPW+WCKWOAB8YRlN318/hvwezjC4QPJtyz
         e/A1FlVIqRDEIYY3/d075W/XW0+dGaVnyQ/1n0Yv65X55CtLUPqxjtTom2fQt0ZlH+nN
         ysb1CfHciGLzSc1YFMIYQq6cv4IFktv5eNp9wCiO57FPDN6Z0KtcEVyv1VlYfF2bQfiN
         iAmqfBldVvTfGrGTZt48FSHk8GF//ZXfXs4z/ApEVsv/WVHznxas24udCDdQabqQkree
         XiXOiTkbBzNQp49ZZmefydo1YOpsU5ECKZXaMhCFksCULY7X+0qaAy+FLjGWDE74y6pZ
         5fyg==
X-Gm-Message-State: AOAM533uBsMM1Mpg43V9hgD6D6tK1lqH7HyHVso2fAk2fEMHzIC5dlH8
	ytvvUo1eXlt2KImNCDkb/0NYlapzZ1YNgHb1NMrEPvPV
X-Google-Smtp-Source: ABdhPJyerhOa+Br35PRSGz8gXtmKRRCshrz2c0qD73BMA1glFE0vFyUMC6nX1yBFMk8NF7hc2iQ5E9I0dIxiV9sgF/E=
X-Received: by 2002:ab0:60c9:: with SMTP id g9mr11216381uam.100.1628311774928;
 Fri, 06 Aug 2021 21:49:34 -0700 (PDT)
MIME-Version: 1.0
References: <1196360689.69773.1628300602833.ref@mail.yahoo.com> <1196360689.69773.1628300602833@mail.yahoo.com>
In-Reply-To: <1196360689.69773.1628300602833@mail.yahoo.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Sat, 7 Aug 2021 00:48:59 -0400
Message-ID: <CAL7q81vgrDp-386LOxyGZRXuevhuRd1iMPoKpK5=1=Cs1oUX=g@mail.gmail.com>
To: Tellrell White <t_whit_87@yahoo.com>
Message-ID-Hash: SQARAIGKHV2L5M74TFKHFYVF4J6LEFBC
X-Message-ID-Hash: SQARAIGKHV2L5M74TFKHFYVF4J6LEFBC
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Confusion about fpga image to use for RFNoC Replay example
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SQARAIGKHV2L5M74TFKHFYVF4J6LEFBC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6859317856315458021=="

--===============6859317856315458021==
Content-Type: multipart/alternative; boundary="000000000000edb47a05c8f0e06f"

--000000000000edb47a05c8f0e06f
Content-Type: text/plain; charset="UTF-8"

Hi,

Those instructions are for UHD 3.15. With UHD 4.0, the replay block is
included by default in the N310, as you can see here in the N310's FPGA
image yaml file:
https://github.com/EttusResearch/uhd/blob/UHD-4.0/fpga/usrp3/top/n3xx/n310_rfnoc_image_core.yml#L71
.

Jonathon

On Fri, Aug 6, 2021 at 9:44 PM Tellrell White via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello
> Currently, I'm trying to reproduce the RFNoC replay example shown at the
> following link
>
> https://kb.ettus.com/Using_the_RFNoC_Replay_Block
>
> using the USRP N310. The version of UHD that I'm using is 4.0, which by
> default already has RFNoC enabled. According to the link  above, if you're
> using the N310, than you're instructed to modify the file
> fpga-src/top/n3xx/n3xx_core.v with the appropriate changes which
> instantiates the noc_block_replay instead of noc_block_axi_dma_fifo, and
> then rebuild the image. My question is if I'm using UHD 4.0, do I need to
> make any of the changes discussed above or is the RFNoC replay block
> already included in the default N310 FPGA image as highlighted in the
> following link, which is more updated?
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Setting_Up
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000edb47a05c8f0e06f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Those instructions are for UHD 3.15=
. With UHD 4.0, the replay block is included by default in the N310, as you=
 can see here in the N310&#39;s FPGA image yaml file:=C2=A0<a href=3D"https=
://github.com/EttusResearch/uhd/blob/UHD-4.0/fpga/usrp3/top/n3xx/n310_rfnoc=
_image_core.yml#L71">https://github.com/EttusResearch/uhd/blob/UHD-4.0/fpga=
/usrp3/top/n3xx/n310_rfnoc_image_core.yml#L71</a>.</div><div><br></div><div=
>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Aug 6, 2021 at 9:44 PM Tellrell White via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Aria=
l,sans-serif;font-size:13px"><div dir=3D"ltr">Hello <br></div><div dir=3D"l=
tr">Currently, I&#39;m trying to reproduce the RFNoC replay example shown a=
t the following link</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><a hr=
ef=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" rel=3D"nofollow" t=
arget=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a></div=
><div dir=3D"ltr"><br></div><div dir=3D"ltr">using the USRP N310. The versi=
on of UHD that I&#39;m using is 4.0, which by default already has RFNoC ena=
bled. According to the link=C2=A0 above, if you&#39;re using the N310, than=
 you&#39;re instructed to modify the file<span> <code>fpga-src/top/n3xx/n3x=
x_core.v<span> with the appropriate changes which instantiates the <code>no=
c_block_replay</code> instead of <code>noc_block_axi_dma_fifo</code>, and t=
hen rebuild the image. My question is if I&#39;m using UHD 4.0, do I need t=
o make any of the changes discussed above or is the RFNoC replay block alre=
ady included in the default N310 FPGA image</span></code></span> as highlig=
hted in the following link, which is more updated? <br></div><div dir=3D"lt=
r"><br></div><div dir=3D"ltr"><a href=3D"https://kb.ettus.com/Getting_Start=
ed_with_RFNoC_in_UHD_4.0#Setting_Up" rel=3D"nofollow" target=3D"_blank">htt=
ps://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Setting_Up</a></div=
></div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000edb47a05c8f0e06f--

--===============6859317856315458021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6859317856315458021==--
