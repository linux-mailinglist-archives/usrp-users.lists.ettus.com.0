Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ED750E7BE
	for <lists+usrp-users@lfdr.de>; Mon, 25 Apr 2022 20:03:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3969238526C
	for <lists+usrp-users@lfdr.de>; Mon, 25 Apr 2022 14:03:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650909810; bh=wKhLM4xIbNyPoERAYZxlEz3BIPPummnQnBk8cDJMQL0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=UE3qVduTkMGYuJvSpuqIlUVczIzJZ4l4yM3R7OOP2EaT7cUmUEnxxqrKfGogXrXYi
	 49aZxHseYbxY/BjCRTXp1vCDrhiTEhnW5WuKN/dyYr7M/ZZNBpku6wUnw6S2YP7EAP
	 hBa9LMPy5fTYm4YKpc4Wxarm1M2kEgehmdK9IVvbG6NjdiKXs7eDR9NTKQF/kpvBDg
	 zXnNuX8rxbmW/H/yI9yrxm1aZF1QTR4fqFno1iNP8Nb6s7sAObbMxslhrfR5KBBehJ
	 eNF7Sii0S2yShc83nm5l+Ey/4wxhWGzvJIqCuVmkrYU31iFYCldTEwJZKs1Hzy8kYY
	 tGfI/DeVafiSA==
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 05115385175
	for <usrp-users@lists.ettus.com>; Mon, 25 Apr 2022 14:02:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="SXtQeiWo";
	dkim-atps=neutral
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-2f7d621d1caso45866187b3.11
        for <usrp-users@lists.ettus.com>; Mon, 25 Apr 2022 11:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZGgQuCqva7hKy5FLOXZ8bKgdRyYMmD+uxUgL7P5ZOcc=;
        b=SXtQeiWopq5NLh2fdverSHgWLdW7QfrxgsnEHZEi6F5M62FixZpWzx5Xuoaeu47owT
         5t0cg4z2ja6A8fPLV+pVplkIP/NyOlezTdokbZl8/m85k4I3tw/KybIBKLdZ2ktBziGm
         ZrKAwDWze7O7Ntnn8lffPVzKpccFHXNgKHARH2fQjl74NP+6DxsUqgJgwEbPpq6EEJAn
         QQPQhNS0uCOSCo9uJ/DWrpGQXcSSsq9gGxbv0HVxQRxCPYtYz5BjFmGJcQ47X5r0dJc5
         OmbrRGRxgCjxWceDp9M2OFvSYjA9zGOkZoYioKIWKzmSQl781SZK5vHWW8Fg7n0y6fef
         AqcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZGgQuCqva7hKy5FLOXZ8bKgdRyYMmD+uxUgL7P5ZOcc=;
        b=Ava42XkcfS/6IUdD5pif8fMjWBTFHOFJZLFbo+xygva5H4l20FOpzJZO6OsId0X11D
         REN99+vwM/8BDFUQpNX0X9HxXFrSY07jj4VBJcIKmffADdr1zjsrU8BRlYk9YuhhM07O
         6/1ugY7nTnKY+reIMihjN3FA5voJEzbNNUwHJkpYn32/nLjAcbWmoFmBgLvlOyd9hiyh
         qRacFQHd9ib9ZIXMEsfNZVr2aQLb4Jfn+m/KaMS6xVXeOgXKQM+/R8SeAb01R8iQPgGR
         ONTJNIsq8ndLLhd3MML9rGqk3jlytVJKU/ueaxQ9jS/vavuc7h0F97CmJXOdyeAzmfQK
         LQGw==
X-Gm-Message-State: AOAM533WeF/2HqT04AnhyWKi6QNwQJudLgMYXhOseyivg7Ldw7VTGV4x
	Ykhk0zUCboyrDZU22KGHsU9alr3kIkKojqHps5aBzCAqfw6dXvYM
X-Google-Smtp-Source: ABdhPJxZkHFtMtrm/IVB+GYrLh7RA6Wk4ctHsSRBh3VHMUc20UWZEybKYyQdqWh/reeETcir36q4b2rYQQoNeFsGeD4=
X-Received: by 2002:a81:7b46:0:b0:2e1:5ae7:5789 with SMTP id
 w67-20020a817b46000000b002e15ae75789mr18881208ywc.61.1650909744263; Mon, 25
 Apr 2022 11:02:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvhfKAh4DK+hywKo3_5aoZ_1GdHfLqnbqdvG9wFpWpDLQ@mail.gmail.com>
In-Reply-To: <CAA=S3PvhfKAh4DK+hywKo3_5aoZ_1GdHfLqnbqdvG9wFpWpDLQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 25 Apr 2022 13:02:08 -0500
Message-ID: <CAFche=jzEa2dqKoC2xS5W+RDG9dUrt5Awwea5G5ei1Ysm9CghQ@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: PMPPS33CUMYC75CQ4JND4CTHPLMA7CN2
X-Message-ID-Hash: PMPPS33CUMYC75CQ4JND4CTHPLMA7CN2
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can debug [00:04:42] Process terminated. Status: Failure
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PMPPS33CUMYC75CQ4JND4CTHPLMA7CN2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3950188838862612041=="

--===============3950188838862612041==
Content-Type: multipart/alternative; boundary="000000000000dd04e005dd7e60ac"

--000000000000dd04e005dd7e60ac
Content-Type: text/plain; charset="UTF-8"

If there's no error message, that usually means Vivado crashed. The last
time I saw this happen, it was because Vivado ran out of memory, which it
does not handle gracefully. I've also seen this happen because of a mistake
in the code that Vivado doesn't expect (something like double driving a
signal or an unusual Verilog construct). It could also be that you found
another bug in Vivado. I suggest you comment out the code in your RFNoC
block and gradually uncomment it until you can narrow down what section of
code is causing Vivado to fail. Hopefully you can narrow down which
statement is the cause. When you run the build, monitor the memory usage to
make sure that's not an issue.

Wade

On Mon, Apr 25, 2022 at 3:43 AM sp h <stackprogramer@gmail.com> wrote:

> I want to develop a new RFNOC block for USRP, But In spite of that test
> bench file works fine, but in making bitstream I am faced with errors...
> Errors:
> *How can debug [00:04:42] Process terminated. Status: Failure*
>
> *This is my terminal Output and a build.log file that I attached, But How
> I can debug and trace (from the build.log file and terminal ) to solve my
> problem?? *
> * Can anyone guide me? I can not find where my code has errors ... *
> *thanks in advacne*
>
> rfnoc_image_builder  -F /home/sp/Documents/uhd-4.1.0.5/fpga     -y
> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/correlate_x310_rfnoc_image_core.yml
> --vivado-path=/home/sp/xilinx/Vivado
> [INF] Using FPGA directory /home/sp/Documents/uhd-4.1.0.5/fpga
> [INF] Selected device x310
> [INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.
> [INF] Using x310_bsp.yml from /usr/local/share/uhd/rfnoc/core.
> [INF] Adding block description from ddc.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from fft_1x64.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from window.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from keep_one_in_n.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from split_stream.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from null_src_sink.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from fosphor.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from siggen.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from radio_1x64.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from fir_filter.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from switchboard.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from correlate.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from axi_ram_fifo_4x64.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from duc.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from addsub.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from axi_ram_fifo_2x64.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from axi_ram_fifo.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from radio.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from gain.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from logpwr.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from replay.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from radio_2x64.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from moving_avg.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Adding block description from vector_iir.yml
> (/usr/local/share/uhd/rfnoc/blocks).
> [INF] Writing static routing table to
> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_static_router.hex
> [INF] Writing image core to
> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_rfnoc_image_core.v
> [INF] Writing image core header to
> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_rfnoc_image_core.vh
> [INF] Launching build with the following settings:
> [INF]  * Build Directory:
> /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300
> [INF]  * Target: X310_HG
> [INF]  * Image Core File:
> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_rfnoc_image_core.v
> [INF]  * Edge Table File:
> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_static_router.hex
> Setting up a 64-bit FPGA build environment for the USRP-X3x0...
> - Vivado: Found (/home/sp/xilinx/Vivado/2019.1/bin)
>
> Environment successfully initialized.
> make -f Makefile.x300.inc bin NAME=X310_HG ARCH=kintex7
> PART_ID=xc7k410t/ffg900/-2 BUILD_1G=1 BUILD_10G=1 SFP0_1GBE=1 SFP1_10GBE=1
>  X310=1 TOP_MODULE=x300 EXTRA_DEFS="BUILD_1G=1 BUILD_10G=1 SFP0_1GBE=1
> SFP1_10GBE=1  X310=1" DEFAULT_RFNOC_IMAGE_CORE_FILE=x310_rfnoc_image_core.v
> DEFAULT_EDGE_FILE=/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x310_static_router.hex
> make[1]: Entering directory
> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
> make[1]: Warning: File
> '/home/sp/Documents/rfnoc-transceiver/rfnoc/fpga/rfnoc_block_correlate/Makefile.srcs'
> has modification time 958611 s in the future
> BUILDER: Checking tools...
> * GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
> * Python 3.8.10
> * Vivado v2019.1 (64-bit)
> Using parser configuration from:
> /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/dev_config.json
> [00:00:00] Executing command: vivado -mode batch -source
> /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/build_x300.tcl -log
> build.log -journal x300.jou
> CRITICAL WARNING: [filemgmt 20-1440] File
> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v'
> already exists in the project as a part of sub-design file
> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit.xci'.
> Explicitly adding the file outside the scope of the sub-design can lead to
> unintended behaviors and is not recommended.
> [00:00:25] Current task: Initialization +++ Current Phase: Starting
> [00:00:25] Current task: Initialization +++ Current Phase: Finished
> [00:00:25] Executing Tcl: synth_design -top x300 -part xc7k410tffg900-2
> -verilog_define BUILD_1G=1 -verilog_define BUILD_10G=1 -verilog_define
> SFP0_1GBE=1 -verilog_define SFP1_10GBE=1 -verilog_define X310=1
> -verilog_define GIT_HASH=32'hffffffff -verilog_define
> RFNOC_EDGE_TBL_FILE=/home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_static_router.hex
> -verilog_define
> UHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/../..
> [00:00:25] Starting Synthesis Command
> [00:04:41] Current task: Synthesis +++ Current Phase: Starting
> [00:04:42] Current task: Synthesis +++ Current Phase: Finished
> [00:04:42] Process terminated. Status: Failure
>
> ========================================================
> Warnings:           313
> Critical Warnings:  1
> Errors:             0
>
> make[1]: *** [Makefile.x300.inc:127: bin] Error 1
> make[1]: Leaving directory
> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
> make: *** [Makefile:85: X310_HG] Error 2
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000dd04e005dd7e60ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If there&#39;s no error message, that usually means V=
ivado crashed. The last time I saw this happen, it was because Vivado ran o=
ut of memory, which it does not handle gracefully. I&#39;ve also seen this =
happen because of a mistake in the code that Vivado doesn&#39;t expect (som=
ething like double driving a signal or an unusual Verilog construct). It co=
uld also be that you found another bug in Vivado. I suggest you comment out=
 the code in your RFNoC block and gradually uncomment it until you can narr=
ow down what section of code is causing Vivado to fail. Hopefully you can n=
arrow down which statement is the cause. When you run the build, monitor th=
e memory usage to make sure that&#39;s not an issue.</div><div><br></div><d=
iv>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Apr 25, 2022 at 3:43 AM sp h &lt;<a href=3D"mailto=
:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I want =
to develop a new RFNOC block for USRP, But In spite of that test bench file=
 works fine, but in making bitstream I am faced with errors...<div>Errors:<=
/div><div><b>How can debug [00:04:42] Process terminated. Status: Failure</=
b><br></div><div><b><br></b></div><div><b>This is my terminal Output and a =
build.log file that I attached, But How I can debug and trace (from the bui=
ld.log file and terminal ) to solve my problem??=C2=A0</b></div><div><b>=C2=
=A0Can anyone guide me? I can not find where my code has errors ...=C2=A0</=
b></div><div><b>thanks in advacne</b></div><div><b><br></b></div><div>rfnoc=
_image_builder =C2=A0-F /home/sp/Documents/uhd-4.1.0.5/fpga =C2=A0 =C2=A0 -=
y /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/correlate_x310_rfnoc_im=
age_core.yml --vivado-path=3D/home/sp/xilinx/Vivado<br>[INF] Using FPGA dir=
ectory /home/sp/Documents/uhd-4.1.0.5/fpga<br>[INF] Selected device x310<br=
>[INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.<br>[IN=
F] Using x310_bsp.yml from /usr/local/share/uhd/rfnoc/core.<br>[INF] Adding=
 block description from ddc.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[IN=
F] Adding block description from fft_1x64.yml (/usr/local/share/uhd/rfnoc/b=
locks).<br>[INF] Adding block description from window.yml (/usr/local/share=
/uhd/rfnoc/blocks).<br>[INF] Adding block description from keep_one_in_n.ym=
l (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block description fr=
om split_stream.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding bl=
ock description from null_src_sink.yml (/usr/local/share/uhd/rfnoc/blocks).=
<br>[INF] Adding block description from fosphor.yml (/usr/local/share/uhd/r=
fnoc/blocks).<br>[INF] Adding block description from siggen.yml (/usr/local=
/share/uhd/rfnoc/blocks).<br>[INF] Adding block description from radio_1x64=
.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block description=
 from fir_filter.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding b=
lock description from switchboard.yml (/usr/local/share/uhd/rfnoc/blocks).<=
br>[INF] Adding block description from correlate.yml (/usr/local/share/uhd/=
rfnoc/blocks).<br>[INF] Adding block description from axi_ram_fifo_4x64.yml=
 (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block description fro=
m duc.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block descri=
ption from addsub.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding =
block description from axi_ram_fifo_2x64.yml (/usr/local/share/uhd/rfnoc/bl=
ocks).<br>[INF] Adding block description from axi_ram_fifo.yml (/usr/local/=
share/uhd/rfnoc/blocks).<br>[INF] Adding block description from radio.yml (=
/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block description from =
gain.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block descrip=
tion from logpwr.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding b=
lock description from replay.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[I=
NF] Adding block description from radio_2x64.yml (/usr/local/share/uhd/rfno=
c/blocks).<br>[INF] Adding block description from moving_avg.yml (/usr/loca=
l/share/uhd/rfnoc/blocks).<br>[INF] Adding block description from vector_ii=
r.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Writing static routing =
table to /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_static_rout=
er.hex<br>[INF] Writing image core to /home/sp/Documents/rfnoc-transceiver/=
rfnoc/icores/x310_rfnoc_image_core.v<br>[INF] Writing image core header to =
/home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_rfnoc_image_core.vh<=
br>[INF] Launching build with the following settings:<br>[INF] =C2=A0* Buil=
d Directory: /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300<br>[INF] =
=C2=A0* Target: X310_HG<br>[INF] =C2=A0* Image Core File: /home/sp/Document=
s/rfnoc-transceiver/rfnoc/icores/x310_rfnoc_image_core.v<br>[INF] =C2=A0* E=
dge Table File: /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_stat=
ic_router.hex<br>Setting up a 64-bit FPGA build environment for the USRP-X3=
x0...<br>- Vivado: Found (/home/sp/xilinx/Vivado/2019.1/bin)<br><br>Environ=
ment successfully initialized.<br>make -f Makefile.x300.inc bin NAME=3DX310=
_HG ARCH=3Dkintex7 PART_ID=3Dxc7k410t/ffg900/-2 BUILD_1G=3D1 BUILD_10G=3D1 =
SFP0_1GBE=3D1 SFP1_10GBE=3D1 =C2=A0X310=3D1 TOP_MODULE=3Dx300 EXTRA_DEFS=3D=
&quot;BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1 =C2=A0X310=3D=
1&quot; DEFAULT_RFNOC_IMAGE_CORE_FILE=3Dx310_rfnoc_image_core.v DEFAULT_EDG=
E_FILE=3D/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x310_static_rou=
ter.hex<br>make[1]: Entering directory &#39;/home/sp/Documents/uhd-4.1.0.5/=
fpga/usrp3/top/x300&#39;<br>make[1]: Warning: File &#39;/home/sp/Documents/=
rfnoc-transceiver/rfnoc/fpga/rfnoc_block_correlate/Makefile.srcs&#39; has m=
odification time 958611 s in the future<br>BUILDER: Checking tools...<br>* =
GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)<br>* Python 3.8.1=
0<br>* Vivado v2019.1 (64-bit)<br>Using parser configuration from: /home/sp=
/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/dev_config.json<br>[00:00:00] Ex=
ecuting command: vivado -mode batch -source /home/sp/Documents/uhd-4.1.0.5/=
fpga/usrp3/top/x300/build_x300.tcl -log build.log -journal x300.jou<br>CRIT=
ICAL WARNING: [filemgmt 20-1440] File &#39;/home/sp/Documents/uhd-4.1.0.5/f=
pga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit/user_des=
ign/rtl/clocking/mig_7series_v4_2_tempmon.v&#39; already exists in the proj=
ect as a part of sub-design file &#39;/home/sp/Documents/uhd-4.1.0.5/fpga/u=
srp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit.xci&#39;. Exp=
licitly adding the file outside the scope of the sub-design can lead to uni=
ntended behaviors and is not recommended.<br>[00:00:25] Current task: Initi=
alization +++ Current Phase: Starting<br>[00:00:25] Current task: Initializ=
ation +++ Current Phase: Finished<br>[00:00:25] Executing Tcl: synth_design=
 -top x300 -part xc7k410tffg900-2 -verilog_define BUILD_1G=3D1 -verilog_def=
ine BUILD_10G=3D1 -verilog_define SFP0_1GBE=3D1 -verilog_define SFP1_10GBE=
=3D1 -verilog_define X310=3D1 -verilog_define GIT_HASH=3D32&#39;hffffffff -=
verilog_define RFNOC_EDGE_TBL_FILE=3D/home/sp/Documents/rfnoc-transceiver/r=
fnoc/icores/x310_static_router.hex -verilog_define UHD_FPGA_DIR=3D/home/sp/=
Documents/uhd-4.1.0.5/fpga/usrp3/top/../..<br>[00:00:25] Starting Synthesis=
 Command<br>[00:04:41] Current task: Synthesis +++ Current Phase: Starting<=
br>[00:04:42] Current task: Synthesis +++ Current Phase: Finished<br>[00:04=
:42] Process terminated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warni=
ngs: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 313<br>Critical Warnings: =C2=A01<b=
r>Errors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br><br>make[1]: *** [=
Makefile.x300.inc:127: bin] Error 1<br>make[1]: Leaving directory &#39;/hom=
e/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300&#39;<br>make: *** [Makefile:=
85: X310_HG] Error 2<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000dd04e005dd7e60ac--

--===============3950188838862612041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3950188838862612041==--
