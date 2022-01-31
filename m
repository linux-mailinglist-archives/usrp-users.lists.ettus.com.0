Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A71BE4A4260
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 12:12:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B1173845BF
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 06:12:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hpvSjVDL";
	dkim-atps=neutral
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 7FB7A3842E9
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 06:11:07 -0500 (EST)
Received: by mail-yb1-f170.google.com with SMTP id j2so26003826ybu.0
        for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 03:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=YHJsQM90JH5nzN4uMZ3LHU+hMdnO5wUvtzl90GeuXhE=;
        b=hpvSjVDLz0qKien6zW2j4ljiLnbfIRUZEqmLL5LVZhU3sTgeFRd6bh1trBPc5JMqpV
         e0uolskIf8qxodW0QKRsctyoD1hAtRiIGUaano/AqSDSFwKj4GUPN71H/UzBgEEH94l0
         6BYlE5asqGxvDhoTU37dS0h080fh44yANM+zCR1w8gRPsTKfF3uvqUjXi/PM+eEqeBDV
         jwN/5KvrnTjMsjEiit7RwlZ9QM42EylQ85Q+gQQJ4ATtp3Tc1l2WH6MeJSB3wqqbcsXH
         EGVqHfqu1x7WXbD26GzYeYOS3+wd+K9hybt13+h3LtSz/MCwRhU0puG+5i0o+i3Bbgd2
         ShMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YHJsQM90JH5nzN4uMZ3LHU+hMdnO5wUvtzl90GeuXhE=;
        b=nm7xFw53J/4tUzeEUw2XyW0X5pMczxRWszldM2vWFnu8whpIVlm3q8i8kHAPM7NSRD
         8XBRW53W72R6DTfve+FokBNE23nc6j/MsyLz8ZYRZufDtHACuCy6hMKZJJ1lTMoRdSU4
         iuphXUXLF51blKcyElpq2ncekg9iAG7OEPOwcnTa2ecRZRTs/XZaRPSTaGI6FKO8z752
         28/1O5yZ3xrrUckHoW7Wy4Uh+k6KapQ4vtS2iVwA61uF/v7UPMT6/ZER9Tuy3t9uwsNF
         xFiT1MFBAN/nFQoB+XmZlUSod21C4t3fnpjKegDh2mgF4fTZXG4rSCT3ALDUyR1U6Awl
         +ZJg==
X-Gm-Message-State: AOAM530b89h/CiJkCcRYeBaRF63HqgK43KZHgu1s5FbQVryAVvXlg3Qy
	hgefWCCjSSKVVe1XFJzoNaAn6CaO6bM6Xvpsrf3YT0YOKz5rsq49
X-Google-Smtp-Source: ABdhPJyjCocs+Li9JNP/dnnqtaF1FHa3hCoD42zs8P9KxaK/orUdOdtrL4uYswBbs+ihfeomulN2Wo6QYIbuLtqCPFY=
X-Received: by 2002:a25:ca0a:: with SMTP id a10mr28350834ybg.161.1643627466102;
 Mon, 31 Jan 2022 03:11:06 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Mon, 31 Jan 2022 14:40:50 +0330
Message-ID: <CAA=S3PtpMB7XgEuOY-uVUwXGbJ8xvaWCUgALA6DwLYh222aTCw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: L4TLQTDUUIWF7B3V5LMGTPOAGCH7J523
X-Message-ID-Hash: L4TLQTDUUIWF7B3V5LMGTPOAGCH7J523
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error in building USRP FPGA bitstream module 'rfnoc_block_fft' not found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L4TLQTDUUIWF7B3V5LMGTPOAGCH7J523/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4661006542750731129=="

--===============4661006542750731129==
Content-Type: multipart/alternative; boundary="000000000000429b1005d6ded796"

--000000000000429b1005d6ded796
Content-Type: text/plain; charset="UTF-8"

when I want to build an FPGA source for x300 (In Ubuntu 20.04, Gnuradio
3.8.1, uhd-4.1.0.5) I used the below command:

source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
make X300_HG

But I have been faced with these errors... can any idea for solving this
problem?

[00:00:23] Starting Synthesis Command
ERROR: [Synth 8-439] module 'rfnoc_block_fft' not found
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_core.v:1354]
ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_core.v:24]
ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
ERROR: [Synth 8-6156] failed synthesizing module 'x300'
[/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
console or run log file for details
[00:03:31] Current task: Synthesis +++ Current Phase: Starting
[00:03:31] Current task: Synthesis +++ Current Phase: Finished
[00:03:31] Process terminated. Status: Failure

========================================================
Warnings:           357
Critical Warnings:  1
Errors:             6

make[1]: *** [Makefile.x300.inc:127: bin] Error 1
make[1]: Leaving directory
'/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
make: *** [Makefile:90: X300_HG] Error 2

--000000000000429b1005d6ded796
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">when I want to build an FPGA source for x300 (In Ubuntu 20=
.04, Gnuradio 3.8.1, uhd-4.1.0.5) I used the below command:<div><br><div>so=
urce setupenv.sh =C2=A0--vivado-path=3D/home/sp/xilinx/Vivado<br></div><div=
>make X300_HG<br></div></div><div><br></div><div>But I have been faced with=
 these errors... can any idea for solving=C2=A0this problem?</div><div><br>=
</div><div>[00:00:23] Starting Synthesis Command<br>ERROR: [Synth 8-439] mo=
dule &#39;rfnoc_block_fft&#39; not found [/home/sp/Documents/uhd-4.1.0.5/fp=
ga/usrp3/top/x300/x300_rfnoc_image_core.v:1354]<br>ERROR: [Synth 8-6156] fa=
iled synthesizing module &#39;rfnoc_image_core&#39; [/home/sp/Documents/uhd=
-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_core.v:24]<br>ERROR: [Synth 8=
-6156] failed synthesizing module &#39;bus_int&#39; [/home/sp/Documents/uhd=
-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]<br>ERROR: [Synth 8-6156] failed s=
ynthesizing module &#39;x300_core&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga=
/usrp3/top/x300/x300_core.v:9]<br>ERROR: [Synth 8-6156] failed synthesizing=
 module &#39;x300&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/=
x300.v:20]<br>ERROR: [Common 17-69] Command failed: Synthesis failed - plea=
se see the console or run log file for details<br>[00:03:31] Current task: =
Synthesis +++ Current Phase: Starting<br>[00:03:31] Current task: Synthesis=
 +++ Current Phase: Finished<br>[00:03:31] Process terminated. Status: Fail=
ure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 357<br>Critical Warnings: =C2=A01<br>Errors: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 6<br><br>make[1]: *** [Makefile.x300.inc:127: bin] Error =
1<br>make[1]: Leaving directory &#39;/home/sp/Documents/uhd-4.1.0.5/fpga/us=
rp3/top/x300&#39;<br>make: *** [Makefile:90: X300_HG] Error 2<br></div><div=
><br></div></div>

--000000000000429b1005d6ded796--

--===============4661006542750731129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4661006542750731129==--
