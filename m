Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1B6515A9B
	for <lists+usrp-users@lfdr.de>; Sat, 30 Apr 2022 07:27:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0B3A384788
	for <lists+usrp-users@lfdr.de>; Sat, 30 Apr 2022 01:27:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651296458; bh=Sxti1DOa/9AWdF4+c2JNUpsd7ohehkpUbWOPAt3Ijww=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sqzrJ9/7ctQpcCvlAvih77npdo/vC71a8QcrGFJINHmvBmW73xOJBYTvSOb9Z1dYv
	 D35BaBygMPMorbKhGuCa9tbxQEwEXUHSsU4OIu2uGU+9uXUMBzLZurfUzFebZKO2lR
	 xH5t5eDy0dHPImZMTVY3DakTapB9rtvAaz3PB0tjWv35hLbR5zD1WTnG3taipab5vY
	 0mFMm64GVjnnsGZE/64IywOxJAVt4q3mM4JC1mjeersqcXL0CQieBKUz3nYsiiwFKD
	 wcvW90YTbUg+i3ij3AXF3kqzgG6dNiSe1Zb9SF21xxVBUNxvqsRuuJkg3SPZYTvcVc
	 f92n2QrpgMqUw==
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 789613846D2
	for <usrp-users@lists.ettus.com>; Sat, 30 Apr 2022 01:26:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MDehTd0k";
	dkim-atps=neutral
Received: by mail-yb1-f169.google.com with SMTP id r189so17782538ybr.6
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 22:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2YbHEv6wI5FfuyNZ2brc3icIbSb2cqVKXQ1FSETQI5M=;
        b=MDehTd0kz6Rw5L6WVknND6bag3CL7toUiORNDx+UczD7WESy4fkbMwkXbAwx05Fxzw
         op1WR1avsa1jzxiVBqckTYTjyT1QRXTtytk6HLyFoive3mXvQXE+AMOUupfAVqgX49KT
         RXyMXIdBlNSagAhzBM3n2RqVD1nba1UJ3CoANKIJhSsgBtnxCPfyBminzfK5rCHW0dIP
         ALPfthluQgDpa6xWbsljEIs4Zvv16EtAcGeSuALaqbszg5LmPe6qq2snU+1wmsbyc8OR
         JC68FHHR1wEjh+2LfSJy2bSqrBu25GZ6dbNWws/dP0xxIj0kESwMGSY98NqQRcAcY7AE
         vcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2YbHEv6wI5FfuyNZ2brc3icIbSb2cqVKXQ1FSETQI5M=;
        b=tojzFY+v5Wl5sTize9LkUqLQf7QRDQ8odkEZM7Li6ncfGbW6JKqqo88jDArezS6/q8
         61z5rt/x4TpQGvB1imK5/ywxpBBwWumsQZPtDxndsrGla9afICTTZV29LQytAOvJKITl
         RVya5yf5qAWeuNQ+BhU0wbALBihJRi8imnKgWthIm05AH410Je9rRZGpOdygyNcENCtx
         eumrY7tgHTUvvWHnkt7G2aIsquj48HiPJr8nnufwxO+gZYNM6qNjRdZFU9vI1ZSRpKOe
         EBoKy5HUjIPvY3YWjmqyRkC1CUATZ8/Dfnf3ueOMSLFbPDheEVsWUv6I2aYuxsa0L8kM
         ZcUw==
X-Gm-Message-State: AOAM532VkW8YCiN8SqTwsn7Cd4+Yqj70eS4lH2o3v77b6bEbT2/MlWaI
	Mb5FDaTUAoUw4BAAV96KLyzUVpe7Tpz8lguGoAtzv4wFTr07kgME
X-Google-Smtp-Source: ABdhPJwfiruObkNjHkVOP3Px7QDXYksqhtWUePOuyR9XBbhl4ZRDzaafUqEUODjfIvAFEOtak7hOIQX2NqiUQdZzu6Y=
X-Received: by 2002:a5b:c5:0:b0:648:d8fa:f7ea with SMTP id d5-20020a5b00c5000000b00648d8faf7eamr2595788ybp.132.1651296395242;
 Fri, 29 Apr 2022 22:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvhfKAh4DK+hywKo3_5aoZ_1GdHfLqnbqdvG9wFpWpDLQ@mail.gmail.com>
 <CAFche=jzEa2dqKoC2xS5W+RDG9dUrt5Awwea5G5ei1Ysm9CghQ@mail.gmail.com>
In-Reply-To: <CAFche=jzEa2dqKoC2xS5W+RDG9dUrt5Awwea5G5ei1Ysm9CghQ@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Sat, 30 Apr 2022 09:56:24 +0430
Message-ID: <CAA=S3PvmzxvSmCXgfrpXkLYYm+iVqEgmPQ6oWiY9zOskd_pPYA@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: GVCBIPTPZZQAUGUECERAUM3MVTD5B7DX
X-Message-ID-Hash: GVCBIPTPZZQAUGUECERAUM3MVTD5B7DX
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can debug [00:04:42] Process terminated. Status: Failure
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GVCBIPTPZZQAUGUECERAUM3MVTD5B7DX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1085517610251073482=="

--===============1085517610251073482==
Content-Type: multipart/alternative; boundary="0000000000000eb1ab05ddd86710"

--0000000000000eb1ab05ddd86710
Content-Type: text/plain; charset="UTF-8"

Thanks for the tip! I think I should use comment/uncomment of code lines
tips.

On Mon, Apr 25, 2022 at 10:32 PM Wade Fife <wade.fife@ettus.com> wrote:

> If there's no error message, that usually means Vivado crashed. The last
> time I saw this happen, it was because Vivado ran out of memory, which it
> does not handle gracefully. I've also seen this happen because of a mistake
> in the code that Vivado doesn't expect (something like double driving a
> signal or an unusual Verilog construct). It could also be that you found
> another bug in Vivado. I suggest you comment out the code in your RFNoC
> block and gradually uncomment it until you can narrow down what section of
> code is causing Vivado to fail. Hopefully you can narrow down which
> statement is the cause. When you run the build, monitor the memory usage to
> make sure that's not an issue.
>
> Wade
>
> On Mon, Apr 25, 2022 at 3:43 AM sp h <stackprogramer@gmail.com> wrote:
>
>> I want to develop a new RFNOC block for USRP, But In spite of that test
>> bench file works fine, but in making bitstream I am faced with errors...
>> Errors:
>> *How can debug [00:04:42] Process terminated. Status: Failure*
>>
>> *This is my terminal Output and a build.log file that I attached, But How
>> I can debug and trace (from the build.log file and terminal ) to solve my
>> problem?? *
>> * Can anyone guide me? I can not find where my code has errors ... *
>> *thanks in advacne*
>>
>> rfnoc_image_builder  -F /home/sp/Documents/uhd-4.1.0.5/fpga     -y
>> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/correlate_x310_rfnoc_image_core.yml
>> --vivado-path=/home/sp/xilinx/Vivado
>> [INF] Using FPGA directory /home/sp/Documents/uhd-4.1.0.5/fpga
>> [INF] Selected device x310
>> [INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.
>> [INF] Using x310_bsp.yml from /usr/local/share/uhd/rfnoc/core.
>> [INF] Adding block description from ddc.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from fft_1x64.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from window.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from keep_one_in_n.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from split_stream.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from null_src_sink.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from fosphor.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from siggen.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from radio_1x64.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from fir_filter.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from switchboard.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from correlate.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from axi_ram_fifo_4x64.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from duc.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from addsub.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from axi_ram_fifo_2x64.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from axi_ram_fifo.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from radio.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from gain.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from logpwr.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from replay.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from radio_2x64.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from moving_avg.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Adding block description from vector_iir.yml
>> (/usr/local/share/uhd/rfnoc/blocks).
>> [INF] Writing static routing table to
>> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_static_router.hex
>> [INF] Writing image core to
>> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_rfnoc_image_core.v
>> [INF] Writing image core header to
>> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_rfnoc_image_core.vh
>> [INF] Launching build with the following settings:
>> [INF]  * Build Directory:
>> /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300
>> [INF]  * Target: X310_HG
>> [INF]  * Image Core File:
>> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_rfnoc_image_core.v
>> [INF]  * Edge Table File:
>> /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_static_router.hex
>> Setting up a 64-bit FPGA build environment for the USRP-X3x0...
>> - Vivado: Found (/home/sp/xilinx/Vivado/2019.1/bin)
>>
>> Environment successfully initialized.
>> make -f Makefile.x300.inc bin NAME=X310_HG ARCH=kintex7
>> PART_ID=xc7k410t/ffg900/-2 BUILD_1G=1 BUILD_10G=1 SFP0_1GBE=1 SFP1_10GBE=1
>>  X310=1 TOP_MODULE=x300 EXTRA_DEFS="BUILD_1G=1 BUILD_10G=1 SFP0_1GBE=1
>> SFP1_10GBE=1  X310=1" DEFAULT_RFNOC_IMAGE_CORE_FILE=x310_rfnoc_image_core.v
>> DEFAULT_EDGE_FILE=/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x310_static_router.hex
>> make[1]: Entering directory
>> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
>> make[1]: Warning: File
>> '/home/sp/Documents/rfnoc-transceiver/rfnoc/fpga/rfnoc_block_correlate/Makefile.srcs'
>> has modification time 958611 s in the future
>> BUILDER: Checking tools...
>> * GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
>> * Python 3.8.10
>> * Vivado v2019.1 (64-bit)
>> Using parser configuration from:
>> /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/dev_config.json
>> [00:00:00] Executing command: vivado -mode batch -source
>> /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/build_x300.tcl -log
>> build.log -journal x300.jou
>> CRITICAL WARNING: [filemgmt 20-1440] File
>> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v'
>> already exists in the project as a part of sub-design file
>> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit.xci'.
>> Explicitly adding the file outside the scope of the sub-design can lead to
>> unintended behaviors and is not recommended.
>> [00:00:25] Current task: Initialization +++ Current Phase: Starting
>> [00:00:25] Current task: Initialization +++ Current Phase: Finished
>> [00:00:25] Executing Tcl: synth_design -top x300 -part xc7k410tffg900-2
>> -verilog_define BUILD_1G=1 -verilog_define BUILD_10G=1 -verilog_define
>> SFP0_1GBE=1 -verilog_define SFP1_10GBE=1 -verilog_define X310=1
>> -verilog_define GIT_HASH=32'hffffffff -verilog_define
>> RFNOC_EDGE_TBL_FILE=/home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_static_router.hex
>> -verilog_define
>> UHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/../..
>> [00:00:25] Starting Synthesis Command
>> [00:04:41] Current task: Synthesis +++ Current Phase: Starting
>> [00:04:42] Current task: Synthesis +++ Current Phase: Finished
>> [00:04:42] Process terminated. Status: Failure
>>
>> ========================================================
>> Warnings:           313
>> Critical Warnings:  1
>> Errors:             0
>>
>> make[1]: *** [Makefile.x300.inc:127: bin] Error 1
>> make[1]: Leaving directory
>> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
>> make: *** [Makefile:85: X310_HG] Error 2
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000000eb1ab05ddd86710
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the tip! I think I should use comment/uncomment=
 of code lines tips.<br></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon, Apr 25, 2022 at 10:32 PM Wade Fife &lt;<a h=
ref=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>If there&#39;s no error message, that usually means Vivado crashed. The la=
st time I saw this happen, it was because Vivado ran out of memory, which i=
t does not handle gracefully. I&#39;ve also seen this happen because of a m=
istake in the code that Vivado doesn&#39;t expect (something like double dr=
iving a signal or an unusual Verilog construct). It could also be that you =
found another bug in Vivado. I suggest you comment out the code in your RFN=
oC block and gradually uncomment it until you can narrow down what section =
of code is causing Vivado to fail. Hopefully you can narrow down which stat=
ement is the cause. When you run the build, monitor the memory usage to mak=
e sure that&#39;s not an issue.</div><div><br></div><div>Wade<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On M=
on, Apr 25, 2022 at 3:43 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail=
.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I want to =
develop a new RFNOC block for USRP, But In spite of that test bench file wo=
rks fine, but in making bitstream I am faced with errors...<div>Errors:</di=
v><div><b>How can debug [00:04:42] Process terminated. Status: Failure</b><=
br></div><div><b><br></b></div><div><b>This is my terminal Output and a bui=
ld.log file that I attached, But How I can debug and trace (from the build.=
log file and terminal ) to solve my problem??=C2=A0</b></div><div><b>=C2=A0=
Can anyone guide me? I can not find where my code has errors ...=C2=A0</b><=
/div><div><b>thanks in advacne</b></div><div><b><br></b></div><div>rfnoc_im=
age_builder =C2=A0-F /home/sp/Documents/uhd-4.1.0.5/fpga =C2=A0 =C2=A0 -y /=
home/sp/Documents/rfnoc-transceiver/rfnoc/icores/correlate_x310_rfnoc_image=
_core.yml --vivado-path=3D/home/sp/xilinx/Vivado<br>[INF] Using FPGA direct=
ory /home/sp/Documents/uhd-4.1.0.5/fpga<br>[INF] Selected device x310<br>[I=
NF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.<br>[INF] =
Using x310_bsp.yml from /usr/local/share/uhd/rfnoc/core.<br>[INF] Adding bl=
ock description from ddc.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] =
Adding block description from fft_1x64.yml (/usr/local/share/uhd/rfnoc/bloc=
ks).<br>[INF] Adding block description from window.yml (/usr/local/share/uh=
d/rfnoc/blocks).<br>[INF] Adding block description from keep_one_in_n.yml (=
/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block description from =
split_stream.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block=
 description from null_src_sink.yml (/usr/local/share/uhd/rfnoc/blocks).<br=
>[INF] Adding block description from fosphor.yml (/usr/local/share/uhd/rfno=
c/blocks).<br>[INF] Adding block description from siggen.yml (/usr/local/sh=
are/uhd/rfnoc/blocks).<br>[INF] Adding block description from radio_1x64.ym=
l (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block description fr=
om fir_filter.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding bloc=
k description from switchboard.yml (/usr/local/share/uhd/rfnoc/blocks).<br>=
[INF] Adding block description from correlate.yml (/usr/local/share/uhd/rfn=
oc/blocks).<br>[INF] Adding block description from axi_ram_fifo_4x64.yml (/=
usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block description from d=
uc.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block descripti=
on from addsub.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding blo=
ck description from axi_ram_fifo_2x64.yml (/usr/local/share/uhd/rfnoc/block=
s).<br>[INF] Adding block description from axi_ram_fifo.yml (/usr/local/sha=
re/uhd/rfnoc/blocks).<br>[INF] Adding block description from radio.yml (/us=
r/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block description from gai=
n.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block descriptio=
n from logpwr.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding bloc=
k description from replay.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF]=
 Adding block description from radio_2x64.yml (/usr/local/share/uhd/rfnoc/b=
locks).<br>[INF] Adding block description from moving_avg.yml (/usr/local/s=
hare/uhd/rfnoc/blocks).<br>[INF] Adding block description from vector_iir.y=
ml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Writing static routing tab=
le to /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_static_router.=
hex<br>[INF] Writing image core to /home/sp/Documents/rfnoc-transceiver/rfn=
oc/icores/x310_rfnoc_image_core.v<br>[INF] Writing image core header to /ho=
me/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_rfnoc_image_core.vh<br>=
[INF] Launching build with the following settings:<br>[INF] =C2=A0* Build D=
irectory: /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300<br>[INF] =C2=
=A0* Target: X310_HG<br>[INF] =C2=A0* Image Core File: /home/sp/Documents/r=
fnoc-transceiver/rfnoc/icores/x310_rfnoc_image_core.v<br>[INF] =C2=A0* Edge=
 Table File: /home/sp/Documents/rfnoc-transceiver/rfnoc/icores/x310_static_=
router.hex<br>Setting up a 64-bit FPGA build environment for the USRP-X3x0.=
..<br>- Vivado: Found (/home/sp/xilinx/Vivado/2019.1/bin)<br><br>Environmen=
t successfully initialized.<br>make -f Makefile.x300.inc bin NAME=3DX310_HG=
 ARCH=3Dkintex7 PART_ID=3Dxc7k410t/ffg900/-2 BUILD_1G=3D1 BUILD_10G=3D1 SFP=
0_1GBE=3D1 SFP1_10GBE=3D1 =C2=A0X310=3D1 TOP_MODULE=3Dx300 EXTRA_DEFS=3D&qu=
ot;BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1 =C2=A0X310=3D1&q=
uot; DEFAULT_RFNOC_IMAGE_CORE_FILE=3Dx310_rfnoc_image_core.v DEFAULT_EDGE_F=
ILE=3D/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x310_static_router=
.hex<br>make[1]: Entering directory &#39;/home/sp/Documents/uhd-4.1.0.5/fpg=
a/usrp3/top/x300&#39;<br>make[1]: Warning: File &#39;/home/sp/Documents/rfn=
oc-transceiver/rfnoc/fpga/rfnoc_block_correlate/Makefile.srcs&#39; has modi=
fication time 958611 s in the future<br>BUILDER: Checking tools...<br>* GNU=
 bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)<br>* Python 3.8.10<b=
r>* Vivado v2019.1 (64-bit)<br>Using parser configuration from: /home/sp/Do=
cuments/uhd-4.1.0.5/fpga/usrp3/top/x300/dev_config.json<br>[00:00:00] Execu=
ting command: vivado -mode batch -source /home/sp/Documents/uhd-4.1.0.5/fpg=
a/usrp3/top/x300/build_x300.tcl -log build.log -journal x300.jou<br>CRITICA=
L WARNING: [filemgmt 20-1440] File &#39;/home/sp/Documents/uhd-4.1.0.5/fpga=
/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit/user_design=
/rtl/clocking/mig_7series_v4_2_tempmon.v&#39; already exists in the project=
 as a part of sub-design file &#39;/home/sp/Documents/uhd-4.1.0.5/fpga/usrp=
3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit.xci&#39;. Explic=
itly adding the file outside the scope of the sub-design can lead to uninte=
nded behaviors and is not recommended.<br>[00:00:25] Current task: Initiali=
zation +++ Current Phase: Starting<br>[00:00:25] Current task: Initializati=
on +++ Current Phase: Finished<br>[00:00:25] Executing Tcl: synth_design -t=
op x300 -part xc7k410tffg900-2 -verilog_define BUILD_1G=3D1 -verilog_define=
 BUILD_10G=3D1 -verilog_define SFP0_1GBE=3D1 -verilog_define SFP1_10GBE=3D1=
 -verilog_define X310=3D1 -verilog_define GIT_HASH=3D32&#39;hffffffff -veri=
log_define RFNOC_EDGE_TBL_FILE=3D/home/sp/Documents/rfnoc-transceiver/rfnoc=
/icores/x310_static_router.hex -verilog_define UHD_FPGA_DIR=3D/home/sp/Docu=
ments/uhd-4.1.0.5/fpga/usrp3/top/../..<br>[00:00:25] Starting Synthesis Com=
mand<br>[00:04:41] Current task: Synthesis +++ Current Phase: Starting<br>[=
00:04:42] Current task: Synthesis +++ Current Phase: Finished<br>[00:04:42]=
 Process terminated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings=
: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 313<br>Critical Warnings: =C2=A01<br>E=
rrors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br><br>make[1]: *** [Mak=
efile.x300.inc:127: bin] Error 1<br>make[1]: Leaving directory &#39;/home/s=
p/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300&#39;<br>make: *** [Makefile:85:=
 X310_HG] Error 2<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000000eb1ab05ddd86710--

--===============1085517610251073482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1085517610251073482==--
