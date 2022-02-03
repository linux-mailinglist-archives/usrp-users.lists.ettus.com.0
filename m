Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 991394A808E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 09:44:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54D7A385360
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 03:44:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TDA8INdR";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 4EC8B384EC8
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 03:43:23 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id m6so6637045ybc.9
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 00:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=B13Dzlr3VjtpSbwYxLwi5evF12vWHHOx8K0pvXT2TRc=;
        b=TDA8INdRZZD/SPfTzBBTKtR8n/CGCSxvj/2VkcaAlBCsbH6ya0RuvA1JWhI4VIKLmA
         3TxdBMw6xe3r2Ne3j0qyctrMh65XaWpVKNe++a+6avVBL8kRLYebAQcjLfYW4RckpGdD
         R4s/5D0IC9zuMKYW+5YtctsKcOWDxC7rKf/to1ZNgI2vh7u93sdQT+/IrZRwrCBN0wwA
         QJlkHSs9xrEHytJmN0bFcLAH3qb2ltb1tjQg0kpCx+Ks2zD4f6AhboaS/KKk9Bdjvwj5
         cEyx9W0KJHz/1zAzuI4lyg4VA3Os7XATQECTjW94moN+LhvH/hlA9KEOCPA3qbafkInz
         hJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=B13Dzlr3VjtpSbwYxLwi5evF12vWHHOx8K0pvXT2TRc=;
        b=gEA8BF+Cub1EKu8+k9W2+AVam9vL7ixhUtLadvn9ysClHyFM9zgiDTdFCsza9F5u2h
         1SoBopZAC+R5Rbcceogw/h0DkiLR5duTIciGVSmHIH2GUWz90eRuv6ya5KfZuXA2CXzD
         i/XATWwjVOQ9Ci2dP42lH8SF3npXTDh4zFI8rSJDadSOwYDy+5Z1VAayHbdUhULSoGVd
         tv7eFoEGMXNxndlHamfl9z5Y2GUeUksRJbe+OA6nnT0eUzQvknsToSUBBXwhZVO+FREC
         +kM9MjfLnin8wnIZV33iBXOOWowzXNqa4OVOxRm3XJKstdVlKs6FD1QI+r84Z1Qso89F
         gnVA==
X-Gm-Message-State: AOAM533XC2tFhE5XzlgWoLYo+J/zDDnWKgROOvF6MQtg6R7O1EpC9YbN
	9E59pHSLzSQrSZlLBymbL+/1Rw6iZcStsTCuniT9OzxEgrU/tSVR
X-Google-Smtp-Source: ABdhPJxJJ4L+FbOFGTFT1E1O9QdjeEMl9gzUkxMKqdCg9Z4Z17BaNFfVsN7HNBuX06fiVdLAShFKBojrufKpGyBT9Y8=
X-Received: by 2002:a0d:fec7:: with SMTP id o190mr3490699ywf.536.1643877801729;
 Thu, 03 Feb 2022 00:43:21 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PtpMB7XgEuOY-uVUwXGbJ8xvaWCUgALA6DwLYh222aTCw@mail.gmail.com>
In-Reply-To: <CAA=S3PtpMB7XgEuOY-uVUwXGbJ8xvaWCUgALA6DwLYh222aTCw@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Thu, 3 Feb 2022 12:13:05 +0330
Message-ID: <CAA=S3PvoG1-xFszybLnGTGjHMwtxyEWEj=YnnPV+UJSGF0CM9g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: BDD765XXWFJB7V5UKWWOYS4WH66X24A6
X-Message-ID-Hash: BDD765XXWFJB7V5UKWWOYS4WH66X24A6
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error in building USRP FPGA bitstream module 'rfnoc_block_fft' not found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BDD765XXWFJB7V5UKWWOYS4WH66X24A6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3099747339160784550=="

--===============3099747339160784550==
Content-Type: multipart/alternative; boundary="0000000000006d216605d719207a"

--0000000000006d216605d719207a
Content-Type: text/plain; charset="UTF-8"

I reformed my previous post, I used this command, so when I want to build
with GUI=1 option I was faced with some errors
make X300_HG GUI=1
but when I want to make without GUI=1 option I have not any eros... how can
solve this problem?

On Mon, Jan 31, 2022 at 2:40 PM sp h <stackprogramer@gmail.com> wrote:

> when I want to build an FPGA source for x300 (In Ubuntu 20.04, Gnuradio
> 3.8.1, uhd-4.1.0.5) I used the below command:
>
> source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
> make X300_HG
>
> But I have been faced with these errors... can any idea for solving this
> problem?
>
> [00:00:23] Starting Synthesis Command
> ERROR: [Synth 8-439] module 'rfnoc_block_fft' not found
> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_core.v:1354]
> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_core.v:24]
> ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
> ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
> ERROR: [Synth 8-6156] failed synthesizing module 'x300'
> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
> console or run log file for details
> [00:03:31] Current task: Synthesis +++ Current Phase: Starting
> [00:03:31] Current task: Synthesis +++ Current Phase: Finished
> [00:03:31] Process terminated. Status: Failure
>
> ========================================================
> Warnings:           357
> Critical Warnings:  1
> Errors:             6
>
> make[1]: *** [Makefile.x300.inc:127: bin] Error 1
> make[1]: Leaving directory
> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
> make: *** [Makefile:90: X300_HG] Error 2
>
>

--0000000000006d216605d719207a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I reformed my previous post, I used this command, so when =
I want to build with GUI=3D1 option I was faced with some errors=C2=A0<div>=
<div><div>make X300_HG GUI=3D1</div></div></div><div>but when I want to mak=
e without GUI=3D1 option I have not any eros... how can solve this problem?=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Jan 31, 2022 at 2:40 PM sp h &lt;<a href=3D"mailto:stackprogr=
amer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">when I want to bui=
ld an FPGA source for x300 (In Ubuntu 20.04, Gnuradio 3.8.1, uhd-4.1.0.5) I=
 used the below command:<div><br><div>source setupenv.sh =C2=A0--vivado-pat=
h=3D/home/sp/xilinx/Vivado<br></div><div>make X300_HG<br></div></div><div><=
br></div><div>But I have been faced with these errors... can any idea for s=
olving=C2=A0this problem?</div><div><br></div><div>[00:00:23] Starting Synt=
hesis Command<br>ERROR: [Synth 8-439] module &#39;rfnoc_block_fft&#39; not =
found [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_=
core.v:1354]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;rfnoc=
_image_core&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_r=
fnoc_image_core.v:24]<br>ERROR: [Synth 8-6156] failed synthesizing module &=
#39;bus_int&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_in=
t.v:9]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;x300_core&#=
39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]<br>E=
RROR: [Synth 8-6156] failed synthesizing module &#39;x300&#39; [/home/sp/Do=
cuments/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]<br>ERROR: [Common 17-69]=
 Command failed: Synthesis failed - please see the console or run log file =
for details<br>[00:03:31] Current task: Synthesis +++ Current Phase: Starti=
ng<br>[00:03:31] Current task: Synthesis +++ Current Phase: Finished<br>[00=
:03:31] Process terminated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Wa=
rnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 357<br>Critical Warnings: =C2=A0=
1<br>Errors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6<br><br>make[1]: **=
* [Makefile.x300.inc:127: bin] Error 1<br>make[1]: Leaving directory &#39;/=
home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300&#39;<br>make: *** [Makefi=
le:90: X300_HG] Error 2<br></div><div><br></div></div>
</blockquote></div>

--0000000000006d216605d719207a--

--===============3099747339160784550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3099747339160784550==--
