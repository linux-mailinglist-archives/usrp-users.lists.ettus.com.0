Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 804714B3301
	for <lists+usrp-users@lfdr.de>; Sat, 12 Feb 2022 05:48:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5475138512D
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 23:48:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Mwef7WFv";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F55E3846A9
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 23:47:33 -0500 (EST)
Received: by mail-yb1-f180.google.com with SMTP id p5so30429365ybd.13
        for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 20:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bjf6RukU2puq/NwW1Yi8oZY0LPIlGjdDE18/oFnC/YA=;
        b=Mwef7WFvZQXsadIbTfHrW/bxtFNOC4335tlNJiKPHSHWav2gFiPrFj2Z9KGu3fkLWv
         CZHpPSJZmkn50Tv7X7MHBLYc2I2EjFBsh56tt14M66ZIihCwNb6ZQa7DoTFvQnRkxHm1
         4AUPcksoWo4BMYAtUVuq+WNfeoQdITKVvwvFbJdlyXq2+tMng5zZABPZ6WtHw80Bjym1
         Nq5k8jTX5gbMtneAfmVhEgHz5z1X8EaFUuSdJSbQIoLEMY5Y4Nzssop6Dzc+AiHAf6x/
         UIk45+ejA6yJt6hhqxnKPpcrSyxN0qFMgR1cHyVK7Vr3++qNliASAsvukDYwj6CIR5Yx
         fz4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bjf6RukU2puq/NwW1Yi8oZY0LPIlGjdDE18/oFnC/YA=;
        b=oXoTn1Aow/iErOrSCpIZfJjmi0k/uaPVRsoi60YA0/TA0P0t8FQOT/hFktRpcJhfqE
         RpFZvajzdAeZHyd1LRBvpplcOQdk6nN4xnM+nl1wgbWIBPtK97s85PTZm4ZPT7Fk7Npf
         1iRVTG4+g4FcinEJ/BSKPpHevoccVCGqeYvy1v6E0T+W0S3eqEGzfTQQhvDRqvdMlDG3
         QyBgErWe2ARREengX6DQNE8bIoHCsiDIcXdHqVYesPYw1x1pfVezCDfXY7ZL+ZupRYJx
         KJP6n3TEX+B5VcHCkijp49+43JquOvqZvy7q951p7mUgbuxJd5h+v8bvA2ViSbhfmnXf
         ENLA==
X-Gm-Message-State: AOAM530XsjwJzkcsOUwi74fRSXvzButa3aV9666DBnRuT56NUSCfQlLk
	N3YEMykjqXKpenjXDsTftJcwGH6ji6YmJFadVik=
X-Google-Smtp-Source: ABdhPJwZd3VdnizFkCtn5033kkRNvGXGoExddSetYhR77NHeWlE/Wh87hPT6T0Svlalnv5SDC0xMkJKLdaFzsZOQCWA=
X-Received: by 2002:a81:e50b:: with SMTP id s11mr5158143ywl.262.1644641252887;
 Fri, 11 Feb 2022 20:47:32 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PvuEJ47OvSVN2_xHHWAv7Mth2Uu-6N-dFdgb2v_UyyK1Q@mail.gmail.com>
 <CAFche=iRA3z6wRPJ9=tXYB188zOHeRZT4KyPdeZOmT=iRWxhGg@mail.gmail.com>
In-Reply-To: <CAFche=iRA3z6wRPJ9=tXYB188zOHeRZT4KyPdeZOmT=iRWxhGg@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Sat, 12 Feb 2022 08:17:10 +0330
Message-ID: <CAA=S3PtodaRo2=rBvK8Dh8MLv_rKoORfW_9McCMoZiWq-7=2QQ@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: CL5PYQKO62TDOT6JZRWXYCQCWFWW5YZQ
X-Message-ID-Hash: CL5PYQKO62TDOT6JZRWXYCQCWFWW5YZQ
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why RFNOC gain example building FPGA, I faced with module 'rfnoc_block_gain' not found?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CL5PYQKO62TDOT6JZRWXYCQCWFWW5YZQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4654359949159052442=="

--===============4654359949159052442==
Content-Type: multipart/alternative; boundary="000000000000a9529205d7cae1ac"

--000000000000a9529205d7cae1ac
Content-Type: text/plain; charset="UTF-8"

Thanks, I checked your guidance. I am sure that everything is true but I
faced past errors:
module 'rfnoc_block_gain' not found....

On Wed, Feb 9, 2022 at 10:52 PM Wade Fife <wade.fife@ettus.com> wrote:

> That error means the source code for your gain block wasn't included. My
> guess is that the include path was wrong, so your Makefile.srcs wasn't
> added. If you're coping the rfnoc-example, here's how to build it (I've
> attempted to use your file paths in this example):
>
> cd /home/sp/Documents/rfnoc-tutorial
> mkdir build
> cd build
> cmake -DUHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga ../
> make x310_rfnoc_image_core
>
> If you want to build without using cmake, you could do this:
>
> rfnoc_image_builder -F /home/sp/Documents/uhd-4.1.0.5/fpga -I
> /home/sp/Documents/rfnoc-tutorial -p /home/sp/xilinx/Vivado -y
> /home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.yml
>
> Note the include path is the base of the OOT module. Please check that all
> the paths are correct for your setup when trying.
>
> Wade
>
>
> On Tue, Feb 8, 2022 at 1:35 AM sp h <stackprogramer@gmail.com> wrote:
>
>> I copied RFNOC gain example from UHD folder, I installed it
>> successfully in Gnuradio, But for building FPGA
>> I was faced with these errors.
>> How can I solve this problem?
>>
>> Thanks in advance
>>
>> ERROR: [Synth 8-439] module 'rfnoc_block_gain' not found
>> [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:1055]
>> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
>> [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:24]
>> ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
>> ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
>> ERROR: [Synth 8-6156] failed synthesizing module 'x300'
>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
>> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
>> console or run log file for details
>> [00:04:05] Current task: Synthesis +++ Current Phase: Starting
>> [00:04:05] Current task: Synthesis +++ Current Phase: Finished
>> [00:04:05] Process terminated. Status: Failure
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000a9529205d7cae1ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, I checked your guidance. I am sure that everything=
 is true but I faced past errors:<br><div>module &#39;rfnoc_block_gain&#39;=
 not found....<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Feb 9, 2022 at 10:52 PM Wade Fife &lt;<a hr=
ef=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
That error means the source code for your gain block wasn&#39;t included. M=
y guess is that the include path was wrong, so your Makefile.srcs wasn&#39;=
t added. If you&#39;re coping the rfnoc-example, here&#39;s how to build it=
 (I&#39;ve attempted to use your file paths in this example):</div><div><br=
></div><div>cd /home/sp/Documents/rfnoc-tutorial</div><div>mkdir build</div=
><div>cd build</div><div>cmake -DUHD_FPGA_DIR=3D/home/sp/Documents/uhd-4.1.=
0.5/fpga ../<br></div><div>make x310_rfnoc_image_core</div><div><br></div><=
div>If you want to build without using cmake, you could do this:</div><div>=
<br></div><div>rfnoc_image_builder -F /home/sp/Documents/uhd-4.1.0.5/fpga -=
I /home/sp/Documents/rfnoc-tutorial -p /home/sp/xilinx/Vivado -y /home/sp/D=
ocuments/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.yml</div><div><b=
r></div><div>Note the include path is the base of the OOT module. Please ch=
eck that all the paths are correct for your setup when trying.<br></div><di=
v><br></div><div>Wade<br></div><div><br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 8, 2022 at 1:35 A=
M sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">st=
ackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">I copied RFNOC gain example from UHD=
 folder, I installed it successfully=C2=A0in Gnuradio, But for building FPG=
A=C2=A0<div>I was=C2=A0faced with these errors.</div><div>How can I solve t=
his problem?</div><div><br></div><div>Thanks in advance</div><div><br></div=
><div>ERROR: [Synth 8-439] module &#39;rfnoc_block_gain&#39; not found [/ho=
me/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:1055]<b=
r>ERROR: [Synth 8-6156] failed synthesizing module &#39;rfnoc_image_core&#3=
9; [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:=
24]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;bus_int&#39; [=
/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]<br>ERROR: [=
Synth 8-6156] failed synthesizing module &#39;x300_core&#39; [/home/sp/Docu=
ments/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]<br>ERROR: [Synth 8-615=
6] failed synthesizing module &#39;x300&#39; [/home/sp/Documents/uhd-4.1.0.=
5/fpga/usrp3/top/x300/x300.v:20]<br>ERROR: [Common 17-69] Command failed: S=
ynthesis failed - please see the console or run log file for details<br>[00=
:04:05] Current task: Synthesis +++ Current Phase: Starting<br>[00:04:05] C=
urrent task: Synthesis +++ Current Phase: Finished<br>[00:04:05] Process te=
rminated. Status: Failure<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000a9529205d7cae1ac--

--===============4654359949159052442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4654359949159052442==--
