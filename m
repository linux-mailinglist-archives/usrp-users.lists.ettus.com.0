Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 398834AFD3F
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 20:23:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 57B2D385091
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 14:23:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="v9vWtT/c";
	dkim-atps=neutral
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 24FED384877
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 14:22:29 -0500 (EST)
Received: by mail-yb1-f172.google.com with SMTP id g14so8920532ybs.8
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 11:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z/qTuBnU4K0IoZun/o9WGg1wX2HTckdIViHW39wsUbQ=;
        b=v9vWtT/clfv90Y70+UKlvsS562Z8NnBOE5ZhNjCg5IQA+SgkyDHQN4Tp1xVHrqelff
         AD05oQHP1tVNBiO8O2Bdshcng/HDlbsK3QnsXRUwG+hwR4EqOhxSyR+6qN1bWjDDuQ8k
         JT5QScuH2yjkCTfLNwtssx51k7Wa7fYtW6phgX1qNiQPEPvGCuHqJDWq/pl29suyCgQC
         TfGgD4F1i/W29l/+g9ydwTy9lBgYVi3w3iCHitLnnToBiQV1udKHznIRMxBdJgwa1Wo2
         HgfcIwh0ZRE9lxHRstpF6wGDO4sjB+d44v9BOS8YinN0KmWNzJYUIHz0PdKY7LVm59pw
         lS5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z/qTuBnU4K0IoZun/o9WGg1wX2HTckdIViHW39wsUbQ=;
        b=QxhGFhCCy5qPKd4NWfiO2g4QoW9wAFiRzzooE5tnfnK8lIZcRb8riQMQo818BKYofI
         pzWBAFDkfUKHOgC2WiwVNXBP92010hLbJVXvsn4dxJT4kt4PegUVl3v78OYNr/BeEDGt
         mLi7KP2PVzSfQ+Z1E3FxPERns+TSEYUxXTZTp9LFhIi6uDNGWc6ICp4gCK6R1i1DUa9+
         fQ7dZ43cmdptk+9db5kSMbIcEpbOUA2b4bpUmnk+L/EvQTV8AMjvKQXjYhyW7XFfQYNZ
         tbVi+5fG7Tz/MT6rzlse5lDr7g162weXlOijSTcTWFhvf5QJX8AYn4HyGZiqWR3357eK
         Whzw==
X-Gm-Message-State: AOAM530mZsawvm+O5j+h0nkhS0YT6s1dEi461QEPZ3PVr4xBbdxMkjsF
	9HKYLuRMDbdqhyl6hlVgVh6vgV40wfgK6EQaMy78tD9HbzJ9kvzE
X-Google-Smtp-Source: ABdhPJwWvkI2Khclx7vv2zsbTUZanWx3X55PDCIq5TRcszxLlkmHFyb0lx4DQ+DMRrF5arPhuPu1JKAbKHSuP5YtP6E=
X-Received: by 2002:a25:32c7:: with SMTP id y190mr3692160yby.719.1644434549466;
 Wed, 09 Feb 2022 11:22:29 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PvuEJ47OvSVN2_xHHWAv7Mth2Uu-6N-dFdgb2v_UyyK1Q@mail.gmail.com>
In-Reply-To: <CAA=S3PvuEJ47OvSVN2_xHHWAv7Mth2Uu-6N-dFdgb2v_UyyK1Q@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 9 Feb 2022 13:22:14 -0600
Message-ID: <CAFche=iRA3z6wRPJ9=tXYB188zOHeRZT4KyPdeZOmT=iRWxhGg@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: UUXTUJJN36XIV7ERWRKA65JBQPPJKXPZ
X-Message-ID-Hash: UUXTUJJN36XIV7ERWRKA65JBQPPJKXPZ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why RFNOC gain example building FPGA, I faced with module 'rfnoc_block_gain' not found?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UUXTUJJN36XIV7ERWRKA65JBQPPJKXPZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2225336659251453939=="

--===============2225336659251453939==
Content-Type: multipart/alternative; boundary="0000000000002d7a9305d79ac138"

--0000000000002d7a9305d79ac138
Content-Type: text/plain; charset="UTF-8"

That error means the source code for your gain block wasn't included. My
guess is that the include path was wrong, so your Makefile.srcs wasn't
added. If you're coping the rfnoc-example, here's how to build it (I've
attempted to use your file paths in this example):

cd /home/sp/Documents/rfnoc-tutorial
mkdir build
cd build
cmake -DUHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga ../
make x310_rfnoc_image_core

If you want to build without using cmake, you could do this:

rfnoc_image_builder -F /home/sp/Documents/uhd-4.1.0.5/fpga -I
/home/sp/Documents/rfnoc-tutorial -p /home/sp/xilinx/Vivado -y
/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.yml

Note the include path is the base of the OOT module. Please check that all
the paths are correct for your setup when trying.

Wade


On Tue, Feb 8, 2022 at 1:35 AM sp h <stackprogramer@gmail.com> wrote:

> I copied RFNOC gain example from UHD folder, I installed it
> successfully in Gnuradio, But for building FPGA
> I was faced with these errors.
> How can I solve this problem?
>
> Thanks in advance
>
> ERROR: [Synth 8-439] module 'rfnoc_block_gain' not found
> [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:1055]
> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
> [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:24]
> ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
> ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
> ERROR: [Synth 8-6156] failed synthesizing module 'x300'
> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
> console or run log file for details
> [00:04:05] Current task: Synthesis +++ Current Phase: Starting
> [00:04:05] Current task: Synthesis +++ Current Phase: Finished
> [00:04:05] Process terminated. Status: Failure
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002d7a9305d79ac138
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That error means the source code for your gain block =
wasn&#39;t included. My guess is that the include path was wrong, so your M=
akefile.srcs wasn&#39;t added. If you&#39;re coping the rfnoc-example, here=
&#39;s how to build it (I&#39;ve attempted to use your file paths in this e=
xample):</div><div><br></div><div>cd /home/sp/Documents/rfnoc-tutorial</div=
><div>mkdir build</div><div>cd build</div><div>cmake -DUHD_FPGA_DIR=3D/home=
/sp/Documents/uhd-4.1.0.5/fpga ../<br></div><div>make x310_rfnoc_image_core=
</div><div><br></div><div>If you want to build without using cmake, you cou=
ld do this:</div><div><br></div><div>rfnoc_image_builder -F /home/sp/Docume=
nts/uhd-4.1.0.5/fpga -I /home/sp/Documents/rfnoc-tutorial -p /home/sp/xilin=
x/Vivado -y /home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image=
_core.yml</div><div><br></div><div>Note the include path is the base of the=
 OOT module. Please check that all the paths are correct for your setup whe=
n trying.<br></div><div><br></div><div>Wade<br></div><div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Feb 8, 2022 at 1:35 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com=
" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I copied RFNOC=
 gain example from UHD folder, I installed it successfully=C2=A0in Gnuradio=
, But for building FPGA=C2=A0<div>I was=C2=A0faced with these errors.</div>=
<div>How can I solve this problem?</div><div><br></div><div>Thanks in advan=
ce</div><div><br></div><div>ERROR: [Synth 8-439] module &#39;rfnoc_block_ga=
in&#39; not found [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfno=
c_image_core.v:1055]<br>ERROR: [Synth 8-6156] failed synthesizing module &#=
39;rfnoc_image_core&#39; [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x3=
10_rfnoc_image_core.v:24]<br>ERROR: [Synth 8-6156] failed synthesizing modu=
le &#39;bus_int&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bu=
s_int.v:9]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;x300_co=
re&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]<=
br>ERROR: [Synth 8-6156] failed synthesizing module &#39;x300&#39; [/home/s=
p/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]<br>ERROR: [Common 17=
-69] Command failed: Synthesis failed - please see the console or run log f=
ile for details<br>[00:04:05] Current task: Synthesis +++ Current Phase: St=
arting<br>[00:04:05] Current task: Synthesis +++ Current Phase: Finished<br=
>[00:04:05] Process terminated. Status: Failure<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002d7a9305d79ac138--

--===============2225336659251453939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2225336659251453939==--
