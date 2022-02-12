Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2AD4B364D
	for <lists+usrp-users@lfdr.de>; Sat, 12 Feb 2022 17:17:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D7773857C1
	for <lists+usrp-users@lfdr.de>; Sat, 12 Feb 2022 11:17:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="dKYZCgTt";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id E46FA385325
	for <usrp-users@lists.ettus.com>; Sat, 12 Feb 2022 11:16:24 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id c6so33799240ybk.3
        for <usrp-users@lists.ettus.com>; Sat, 12 Feb 2022 08:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K2iXnKh6SzHn6MuPSKav9+fJPH4X4jd8uOHpx57brZA=;
        b=dKYZCgTtk5rzW/rUWdnqYY9WoGpOQjyNGsu7N8bYUiplPWVeIHsb96fvyUbQkJhAuz
         xVL9Z1ElFfvi0yqaSaHcQmI/LU32BB5vAU+XErlBmak8Syvpy3S1FPKLZUvV6jH0QwDA
         k2PVamkFxTYADbFZ2/c1RItDugAw6XWc+vWFAHg6X25e82f81rGmnH83sEri8CtR/jAM
         Tc+Z2gGa3yCzfRx+por3w8bLX4fYR7wVepN2QvdQVcUdReTdY8mXhQVnL4XO/zF86s6h
         pQwgtjD0o+bASdtZ3hCf5V3e0K/w8A8Hw62Rr8NRprl1kO1uy5d1MNQnFSnSAcrnWrHz
         I8OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K2iXnKh6SzHn6MuPSKav9+fJPH4X4jd8uOHpx57brZA=;
        b=QhB/Kol3lApWT+rAIB9boZrLihbLvduFI3PJyi6wSER9i9zZeOo7hjemyfYu6fJYCd
         Gx7bLXPzInXwMACl28tWjViV2x5vUp+YbkfWif5jW0hKD+9GfXeMNWR81VvVgQ1ueku3
         OcYDRJjOUafbnrw+wI0V4c06hU79A1eFOa6FRynbdQYHPXEYRCl5grARDR7mHGI21aGw
         xoj1JSxrHsz+PCmjKyg963zXUz27YZC2xcUA22eQ5o5AK3SR6t7bqPtyvGPs6uccpcWs
         7AudEiZEJOArUmf3LrZ9/1b6HxEbstD30Q+2EVC7hnFTN/XGW6ikTwLkOCVW8mITy5nC
         wRdg==
X-Gm-Message-State: AOAM531l4SrB7NiGpvzKb1g7/tA9GbGQ65+HnySttFimxpl+sIDQljjP
	op7waSuRwUmRwqfAJLpOet9ltHq6hoshDYUanvX0dbR9HgVsskRA
X-Google-Smtp-Source: ABdhPJwgiYA86fsP/UhY3OHVtTbi2GhLyDJI376rbo4noqf0LkUVdKvmIi3orbON326jyRV3ZaISu0Iwx7TSKP10XeE=
X-Received: by 2002:a81:eb14:: with SMTP id n20mr7047146ywm.200.1644682584335;
 Sat, 12 Feb 2022 08:16:24 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PvuEJ47OvSVN2_xHHWAv7Mth2Uu-6N-dFdgb2v_UyyK1Q@mail.gmail.com>
 <CAFche=iRA3z6wRPJ9=tXYB188zOHeRZT4KyPdeZOmT=iRWxhGg@mail.gmail.com> <CAA=S3PtodaRo2=rBvK8Dh8MLv_rKoORfW_9McCMoZiWq-7=2QQ@mail.gmail.com>
In-Reply-To: <CAA=S3PtodaRo2=rBvK8Dh8MLv_rKoORfW_9McCMoZiWq-7=2QQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 12 Feb 2022 10:16:08 -0600
Message-ID: <CAFche=igUatjSj3SWzbrQgfn6V8uBAc9_YWPkkuhNuP3F59nRA@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: VQJXO4BLFLCEDA6LBPSTXT75ICCDFO72
X-Message-ID-Hash: VQJXO4BLFLCEDA6LBPSTXT75ICCDFO72
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why RFNOC gain example building FPGA, I faced with module 'rfnoc_block_gain' not found?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VQJXO4BLFLCEDA6LBPSTXT75ICCDFO72/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0380482361589439761=="

--===============0380482361589439761==
Content-Type: multipart/alternative; boundary="000000000000353fdc05d7d481fd"

--000000000000353fdc05d7d481fd
Content-Type: text/plain; charset="UTF-8"

I'm sorry to hear it's still not working for you. Can you try a clean repo
and use the unmodified example from the repo? If that works then you could
compare your copy to the example to see what's different.

The way the build-process works with OOT modules is that
rfnoc_image_builder looks for the Makefile.srcs for your OOT module, which,
in the example, includes the Makefile.srcs for the gain block. The HDL
files get added to a variable named RFNOC_OOT_SRCS. So it could be one of
these files has a mistake in your OOT module:

https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/Makefile.srcs
https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/Makefile.srcs

Or it could be that the path provided to rfnoc_image_builder is not
correct, which would prevent it from finding the Makefile.srcs. It did look
like the path was incorrect in one of your other email threads.

If nothing else works, you can modify the Makefile.inc for X300 and add the
missing files directly.

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/Makefile.x300.inc

Thanks,

Wade

On Fri, Feb 11, 2022 at 10:47 PM sp h <stackprogramer@gmail.com> wrote:

> Thanks, I checked your guidance. I am sure that everything is true but I
> faced past errors:
> module 'rfnoc_block_gain' not found....
>
> On Wed, Feb 9, 2022 at 10:52 PM Wade Fife <wade.fife@ettus.com> wrote:
>
>> That error means the source code for your gain block wasn't included. My
>> guess is that the include path was wrong, so your Makefile.srcs wasn't
>> added. If you're coping the rfnoc-example, here's how to build it (I've
>> attempted to use your file paths in this example):
>>
>> cd /home/sp/Documents/rfnoc-tutorial
>> mkdir build
>> cd build
>> cmake -DUHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga ../
>> make x310_rfnoc_image_core
>>
>> If you want to build without using cmake, you could do this:
>>
>> rfnoc_image_builder -F /home/sp/Documents/uhd-4.1.0.5/fpga -I
>> /home/sp/Documents/rfnoc-tutorial -p /home/sp/xilinx/Vivado -y
>> /home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.yml
>>
>> Note the include path is the base of the OOT module. Please check that
>> all the paths are correct for your setup when trying.
>>
>> Wade
>>
>>
>> On Tue, Feb 8, 2022 at 1:35 AM sp h <stackprogramer@gmail.com> wrote:
>>
>>> I copied RFNOC gain example from UHD folder, I installed it
>>> successfully in Gnuradio, But for building FPGA
>>> I was faced with these errors.
>>> How can I solve this problem?
>>>
>>> Thanks in advance
>>>
>>> ERROR: [Synth 8-439] module 'rfnoc_block_gain' not found
>>> [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:1055]
>>> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
>>> [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:24]
>>> ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
>>> ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
>>> ERROR: [Synth 8-6156] failed synthesizing module 'x300'
>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
>>> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
>>> console or run log file for details
>>> [00:04:05] Current task: Synthesis +++ Current Phase: Starting
>>> [00:04:05] Current task: Synthesis +++ Current Phase: Finished
>>> [00:04:05] Process terminated. Status: Failure
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000353fdc05d7d481fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m sorry to hear it&#39;s still not working for =
you. Can you try a clean repo and use the unmodified example from the repo?=
 If that works then you could compare your copy to the example to see what&=
#39;s different.<br></div><div><br></div><div>The way the build-process wor=
ks with OOT modules is that rfnoc_image_builder looks for the Makefile.srcs=
 for your OOT module, which, in the example, includes the Makefile.srcs for=
 the gain block. The HDL files get added to=20
a variable named RFNOC_OOT_SRCS.

So it could be one of these files has a mistake in your OOT module:</div><d=
iv><br></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/mast=
er/host/examples/rfnoc-example/fpga/Makefile.srcs">https://github.com/Ettus=
Research/uhd/blob/master/host/examples/rfnoc-example/fpga/Makefile.srcs</a>=
</div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/host=
/examples/rfnoc-example/fpga/rfnoc_block_gain/Makefile.srcs">https://github=
.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_b=
lock_gain/Makefile.srcs</a></div><div><br></div><div>Or it could be that th=
e path provided to rfnoc_image_builder is not correct, which would prevent =
it from finding the Makefile.srcs. It did look like the path was incorrect =
in one of your other email threads.</div><div><br></div><div>If nothing els=
e works, you can modify the Makefile.inc for X300 and add the missing files=
 directly.</div><div><br></div><div><a href=3D"https://github.com/EttusRese=
arch/uhd/blob/master/fpga/usrp3/top/x300/Makefile.x300.inc">https://github.=
com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/Makefile.x300.inc</a>=
</div><div><br></div><div>Thanks,<br>

</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 11, 2022 at 10:47 PM sp=
 h &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Thanks, I checked your guidance. I am sure that everything=
 is true but I faced past errors:<br><div>module &#39;rfnoc_block_gain&#39;=
 not found....<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Feb 9, 2022 at 10:52 PM Wade Fife &lt;<a hr=
ef=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div>That error means the source code for your gain block wasn=
&#39;t included. My guess is that the include path was wrong, so your Makef=
ile.srcs wasn&#39;t added. If you&#39;re coping the rfnoc-example, here&#39=
;s how to build it (I&#39;ve attempted to use your file paths in this examp=
le):</div><div><br></div><div>cd /home/sp/Documents/rfnoc-tutorial</div><di=
v>mkdir build</div><div>cd build</div><div>cmake -DUHD_FPGA_DIR=3D/home/sp/=
Documents/uhd-4.1.0.5/fpga ../<br></div><div>make x310_rfnoc_image_core</di=
v><div><br></div><div>If you want to build without using cmake, you could d=
o this:</div><div><br></div><div>rfnoc_image_builder -F /home/sp/Documents/=
uhd-4.1.0.5/fpga -I /home/sp/Documents/rfnoc-tutorial -p /home/sp/xilinx/Vi=
vado -y /home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_cor=
e.yml</div><div><br></div><div>Note the include path is the base of the OOT=
 module. Please check that all the paths are correct for your setup when tr=
ying.<br></div><div><br></div><div>Wade<br></div><div><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb=
 8, 2022 at 1:35 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" ta=
rget=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I copied RFNOC gai=
n example from UHD folder, I installed it successfully=C2=A0in Gnuradio, Bu=
t for building FPGA=C2=A0<div>I was=C2=A0faced with these errors.</div><div=
>How can I solve this problem?</div><div><br></div><div>Thanks in advance</=
div><div><br></div><div>ERROR: [Synth 8-439] module &#39;rfnoc_block_gain&#=
39; not found [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_im=
age_core.v:1055]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;r=
fnoc_image_core&#39; [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_r=
fnoc_image_core.v:24]<br>ERROR: [Synth 8-6156] failed synthesizing module &=
#39;bus_int&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_in=
t.v:9]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;x300_core&#=
39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]<br>E=
RROR: [Synth 8-6156] failed synthesizing module &#39;x300&#39; [/home/sp/Do=
cuments/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]<br>ERROR: [Common 17-69]=
 Command failed: Synthesis failed - please see the console or run log file =
for details<br>[00:04:05] Current task: Synthesis +++ Current Phase: Starti=
ng<br>[00:04:05] Current task: Synthesis +++ Current Phase: Finished<br>[00=
:04:05] Process terminated. Status: Failure<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000353fdc05d7d481fd--

--===============0380482361589439761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0380482361589439761==--
