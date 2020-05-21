Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC761DC6C4
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 08:02:22 +0200 (CEST)
Received: from [::1] (port=43442 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbeHa-0004hI-TF; Thu, 21 May 2020 02:02:18 -0400
Received: from mail-vk1-f170.google.com ([209.85.221.170]:46987)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jbeHX-0004da-Ei
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 02:02:15 -0400
Received: by mail-vk1-f170.google.com with SMTP id v23so1416379vke.13
 for <usrp-users@lists.ettus.com>; Wed, 20 May 2020 23:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=de3u4xNOsObq0uo3LF5szHQzXtIzoLPqIwO29gO3C1Q=;
 b=CSwmNqwj2F1QJNDIXCdNd7Q2hinEjiZFszvfkh0t2Tzig7zSftxJ+upsUs31h+BGXz
 augsygBID1yaZSJZ62E1D5K8Cx6lDkgIOILjEa1qq4kPVsRHyfnIoWWDZ9pYU8e9kQgg
 5G7QNmS14IrfvOo+S0l73ssIByyoJSrYtQ9jUgE69IE1vJpQE1rcWg4koYKDfeB5iK7B
 KsRlalWef/ZabntDRRbQPfZbbhX5OGs3DB911X9DKhyRzWScLIyXGKmXgwKXJesJet9L
 0UhDBMMeRFg/k+Q3VORBVTwP+asZ96Dejh2YAZKWX1pt2ruTk/T/tl/SbB+F5Sp9dUHa
 uA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=de3u4xNOsObq0uo3LF5szHQzXtIzoLPqIwO29gO3C1Q=;
 b=LPlBuGb0UgYfTZvm/CyaSyLmz2OlqJqZ71YeBIIj4YqtYBPtqn1m6dcpcd5M266kwM
 rfqunycEVBPBn7aq9z8+f1mWpElIFYcjkTua6D2yEGGnlxRZwuYoVJuRIDhVohNJhhpv
 BV3DitHtS/DIKq7CLAshuxXadAOq05IpqVgLN2sSKzUD2jzqojAiqQZNFuL0WrZuTBbV
 RXQ7PF9SI6tsN+JRJTqnRMXRozL0jFrkBcZ5QrblVhkN71qOE+dVqPaR97JdCF1cgvQ1
 9EbLINpA9sw7VzzDaF4h4l1HUG9XfmNY1NzkRZeCpPLi2IEW5VqBJj06ZmwfP7AW9202
 3yfA==
X-Gm-Message-State: AOAM530Ae32mh960WWW5frMOcWO0cswf9bJx4LBDf/lESAVewensboXO
 bzTf7k0LtWrW8hC/pgc4L+AajXXfnNHlkXh6W91z2IGT
X-Google-Smtp-Source: ABdhPJyMc8VVi/jStUpD1pr7AHDdEyGzyRwCh0J1H19AgdVRPdAQfIXOtoGCEdZnsua9GI8LahYVW8eat8oe7WQehrU=
X-Received: by 2002:a1f:a6c8:: with SMTP id p191mr6348804vke.78.1590040894733; 
 Wed, 20 May 2020 23:01:34 -0700 (PDT)
MIME-Version: 1.0
References: <2f10393db6b447e9925d3da9fd110467@gtri.gatech.edu>
In-Reply-To: <2f10393db6b447e9925d3da9fd110467@gtri.gatech.edu>
Date: Thu, 21 May 2020 02:00:58 -0400
Message-ID: <CAL7q81t6LA-Xu7fs+f9t=ZY4V8o8HMq0BFpyQLdq4TfcwisBvQ@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Subject: Re: [USRP-users] rfnoc build standard image x310 failing
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Prado,
 Ron" <Ron.Prado@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============4449950455252871165=="
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

--===============4449950455252871165==
Content-Type: multipart/alternative; boundary="000000000000b5913105a6223ec7"

--000000000000b5913105a6223ec7
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,

For UHD 3.15, I believe that issue has been fixed. Check out the
UHD-3.15.LTS branch and let me know if you still have an issue building.

For UHD 3.14, check out the UHD-3.14 branch.

Using the branches above, I was able to successfully build an image using
your uhd_image_builder command (without the -g option) for both UHD 3.15
and UHD 3.14.

Jonathon


On Wed, May 20, 2020 at 8:35 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Can someone please tell me what version of uhd and rfnoc are compatible
> for building an image on Ubuntu 18.04?
>
>
>
> I cannot get any of the UHD releases to properly build a standard rfnoc
> image.
>
>
>
> sudo ./uhd_image_builder.py fft ddc duc -g -t X310_RFNOC_HG -c -d X310
> --fill-with-fifos
>
>
>
> I installed vivado 2018.3 with uhd 3.15.0.0 and get the error:
>
>
>
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4
> has multiple drivers: radio_clk_gen/inst/clkout1_buf/O, and
> bus_clk_gen/inst/clkout4_buf/O.
>
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
> radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9 has
> multiple drivers:
> radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q,
> and
> ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q.
>
>
>
>
>
> I installed vivado 2017.4 with uhd 3.14.1.1 and get this error:
>
>
>
> BUILDER: Releasing IP location:
> /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/aurora_64b66b_pcs_pma
>
> Using parser configuration from:
> /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/dev_config.json
>
> [00:00:00] Executing command: vivado -mode batch -source
> /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build_x300.tcl -log
> build.log -journal x300.jou
>
> CRITICAL WARNING: [filemgmt 20-1440] File
> '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v'
> already exists in the project as a part of sub-design file
> '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit.xci'.
> Explicitly adding the file outside the scope of the sub-design can lead to
> unintended behaviors and is not recommended.
>
> [00:00:29] Current task: Initialization +++ Current Phase: Starting
>
> [00:00:29] Current task: Initialization +++ Current Phase: Finished
>
> [00:00:29] Executing Tcl: synth_design -top x300 -part xc7k410tffg900-2
> -verilog_define BUILD_1G=1 -verilog_define BUILD_10G=1 -verilog_define
> SFP0_1GBE=1 -verilog_define SFP1_10GBE=1 -verilog_define RFNOC=1
> -verilog_define X310=1 -verilog_define GIT_HASH=32'hfbb85bdf
>
> [00:00:29] Starting Synthesis Command
>
> ERROR: [Synth 8-439] module 'ddr3_32bit' not found
> [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:1191]
>
> ERROR: [Synth 8-285] failed synthesizing module 'x300'
> [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:20]
>
> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
> console or run log file for details
>
> [00:08:36] Current task: Synthesis +++ Current Phase: Starting
>
> [00:08:36] Current task: Synthesis +++ Current Phase: Finished
>
> [00:08:36] Process terminated. Status: Failure
>
>
>
>
>
> Any advice is greatly appreciated.
>
>
>
> Thanks,
>
>
>
> Jeff
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b5913105a6223ec7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>For UHD 3.15, I believe that i=
ssue has been fixed. Check out the UHD-3.15.LTS branch and let me know if y=
ou still have an issue building.</div><div><br></div><div>For UHD 3.14, che=
ck out the UHD-3.14 branch.<br></div><div><br></div><div>Using the branches=
 above, I was able to successfully build an image using your uhd_image_buil=
der command (without the -g option) for both UHD 3.15 and UHD 3.14.</div><d=
iv><br></div><div>Jonathon</div><div><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 20, 2020 at 8:35=
 PM Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-2882741423518001013WordSection1">
<p class=3D"MsoNormal">Can someone please tell me what version of uhd and r=
fnoc are compatible for building an image on Ubuntu 18.04?<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I cannot get any of the UHD releases to properly bui=
ld a standard rfnoc image.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">sudo ./uhd_image_builder.py fft ddc duc -g -t X310_R=
FNOC_HG -c -d X310 --fill-with-fifos<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I installed vivado 2018.3 with uhd 3.15.0.0 and get =
the error:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_cl=
k_gen/inst/CLK_OUT4 has multiple drivers: radio_clk_gen/inst/clkout1_buf/O,=
 and bus_clk_gen/inst/clkout4_buf/O.<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: [DRC MDRV-1] Multiple Driver Nets: Net radio_=
reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9 has multipl=
e drivers: radio_reset_sync/reset_double_sync/synchronizer_false_path/stage=
s[9].value_reg[9][0]/Q, and ce_reset_sync/reset_double_sync/synchronizer_fa=
lse_path/stages[9].value_reg[9][0]/Q.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I installed vivado 2017.4 with uhd 3.14.1.1 and get =
this error:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">BUILDER: Releasing IP location: /home/nvd/rfnoc/src/=
uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/aurora_64b66b_pcs_pma=
<u></u><u></u></p>
<p class=3D"MsoNormal">Using parser configuration from: /home/nvd/rfnoc/src=
/uhd/fpga-src/usrp3/top/x300/dev_config.json<u></u><u></u></p>
<p class=3D"MsoNormal">[00:00:00] Executing command: vivado -mode batch -so=
urce /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build_x300.tcl -log bu=
ild.log -journal x300.jou<u></u><u></u></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [filemgmt 20-1440] File &#39;/home=
/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_3=
2bit/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v&#39; al=
ready exists in the project as a part of sub-design
 file &#39;/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410=
tffg900-2/ddr3_32bit/ddr3_32bit.xci&#39;. Explicitly adding the file outsid=
e the scope of the sub-design can lead to unintended behaviors and is not r=
ecommended.<u></u><u></u></p>
<p class=3D"MsoNormal">[00:00:29] Current task: Initialization +++ Current =
Phase: Starting<u></u><u></u></p>
<p class=3D"MsoNormal">[00:00:29] Current task: Initialization +++ Current =
Phase: Finished<u></u><u></u></p>
<p class=3D"MsoNormal">[00:00:29] Executing Tcl: synth_design -top x300 -pa=
rt xc7k410tffg900-2 -verilog_define BUILD_1G=3D1 -verilog_define BUILD_10G=
=3D1 -verilog_define SFP0_1GBE=3D1 -verilog_define SFP1_10GBE=3D1 -verilog_=
define RFNOC=3D1 -verilog_define X310=3D1 -verilog_define
 GIT_HASH=3D32&#39;hfbb85bdf<u></u><u></u></p>
<p class=3D"MsoNormal">[00:00:29] Starting Synthesis Command<u></u><u></u><=
/p>
<p class=3D"MsoNormal">ERROR: [Synth 8-439] module &#39;ddr3_32bit&#39; not=
 found [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:1191]<u></u>=
<u></u></p>
<p class=3D"MsoNormal">ERROR: [Synth 8-285] failed synthesizing module &#39=
;x300&#39; [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:20]<u></=
u><u></u></p>
<p class=3D"MsoNormal">ERROR: [Common 17-69] Command failed: Synthesis fail=
ed - please see the console or run log file for details<u></u><u></u></p>
<p class=3D"MsoNormal">[00:08:36] Current task: Synthesis +++ Current Phase=
: Starting<u></u><u></u></p>
<p class=3D"MsoNormal">[00:08:36] Current task: Synthesis +++ Current Phase=
: Finished<u></u><u></u></p>
<p class=3D"MsoNormal">[00:08:36] Process terminated. Status: Failure<u></u=
><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any advice is greatly appreciated.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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

--000000000000b5913105a6223ec7--


--===============4449950455252871165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4449950455252871165==--

