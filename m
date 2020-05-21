Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5CC1DD60A
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 20:34:34 +0200 (CEST)
Received: from [::1] (port=35628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbq1Z-0007Sp-Qe; Thu, 21 May 2020 14:34:33 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:40081)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jbq1W-0006yB-8W
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 14:34:30 -0400
Received: by mail-ot1-f48.google.com with SMTP id d26so6270164otc.7
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 11:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bsoX8n21fKTx7Jo7bcNdcGCIHI4BgNii8VASBVM4rIk=;
 b=EfnDDZxHs5kFkVgs9UDp0s4FUreDIxegmxuOIhiqpAoawH1envHVG6ffb0BQ2TXC2g
 RIv6iL1xrpKP84w2sbYHVpsHzrrz9fxuydvxYwyHJXfoU3HRsoFNEPbEE1e2ViiQUjwy
 TN3UV3isHrGZEIsU4loKpnDoQq1cwTMUSlbPdMEo0Dbq450xvxOCrg7HsYX/En9JWafH
 5VCGFunkOCZjLTMXBwXbizY2ifvHFvW6PJYBdwTpPU/2CMZDNQIMX7ViqJkd0xz1uGSq
 EKKUnCASIGrde5H6fGtQgdixB2CzF+VKthsO5ZszmDdEVs5vdaa4PeVuzYE9YMIn/Tlo
 8fvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bsoX8n21fKTx7Jo7bcNdcGCIHI4BgNii8VASBVM4rIk=;
 b=pMcmCNjYvavBWGgOqr4pf33W8TdnQgzuXQmmXKqNrJJlLvXFSmnBEJwiU0Ys53kOVn
 ghqe2kA2gVBRK+GtWdCZgCpZvziZQd4OX9X01cx0oOMEpqGbUNtNwqgEy8Oahu06wuTN
 N86LYQeOvXX0MBHXKalMoAYJCvUHF2Jwo398TNPsVXCG2VwUH/ojN+bnXU1SIBhVAS4E
 GnVox/ffdiB384CVmn5phTGT7M6varvmNgJt0uag21k54F9xyXph6UCGOyFdyoXEKrmO
 V6uWMnIh6H2W1DlaPN6WJHuBk86qZeH7jV3l3b/10f8Y8leqIqlTVv1/KiKU6GCrrXV1
 2mKg==
X-Gm-Message-State: AOAM5315vmovUrsUnsjnrs+3YeXG6WOx7DnBR55GSSynh+jOPdqOCoD4
 k7i6+DUTmCJ2qndGJlcYM2I1G19s1kVN+Nx0FMzF2w==
X-Google-Smtp-Source: ABdhPJx67rXC3V4KpbiJ0GCYIAQridt0SzhzkHKeISm1Eo9fgt3PihOX7YXQkpj2hVEAHCebRKqrmu+cqD1T6tWkm2o=
X-Received: by 2002:a9d:7acb:: with SMTP id m11mr7879704otn.301.1590086029399; 
 Thu, 21 May 2020 11:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <2f10393db6b447e9925d3da9fd110467@gtri.gatech.edu>
 <CAL7q81t6LA-Xu7fs+f9t=ZY4V8o8HMq0BFpyQLdq4TfcwisBvQ@mail.gmail.com>
 <8822e47e0eb74d59983cc2323c83dda8@gtri.gatech.edu>
In-Reply-To: <8822e47e0eb74d59983cc2323c83dda8@gtri.gatech.edu>
Date: Thu, 21 May 2020 14:33:38 -0400
Message-ID: <CAB__hTQMKMZtv38FhfJVmQ7TuVbkkJOCR10SDAwNoZ=i81t82w@mail.gmail.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Prado,
 Ron" <Ron.Prado@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============1381608140863228239=="
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

--===============1381608140863228239==
Content-Type: multipart/alternative; boundary="000000000000f20bd905a62cc038"

--000000000000f20bd905a62cc038
Content-Type: text/plain; charset="UTF-8"

perhaps checkout the latest on the branch such as "git checkout
UHD-3.15.LTS" ?

On Thu, May 21, 2020 at 11:25 AM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Maybe there is a mistake in they way I am pulling the repository?
>
>
>
> V3.14 with 2017.4 vivado failed:
>
> cd ~/rfnoc/src
>
>    $ git clone --recursive https://github.com/EttusResearch/uhd
>
>    $ cd uhd
>
>    $ git checkout v3.14.1.1
>
>    $ git submodule update --init --recursive
>
>
>
> V3.15 with 2018.3 vivado failed:
>
> cd ~/rfnoc/src
>
>    $ git clone --recursive https://github.com/EttusResearch/uhd
>
>    $ cd uhd
>
>    $ git checkout v3.15.0.0
>
>    $ git submodule update --init --recursive
>
>
>
> Am I pulling the wrong branches?
>
>
>
> Looking at uhd_image_builder.py in v3.15.0.0:
>
> 44 wire ce_clk = radio_clk;
>
> 45 wire ce_rst = radio_rst;
>
>
>
>
>
> Jeff
>
>
>
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Thursday, May 21, 2020 2:01 AM
> *To:* Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
> *Cc:* usrp-users@lists.ettus.com; Prado, Ron <Ron.Prado@gtri.gatech.edu>
> *Subject:* Re: [USRP-users] rfnoc build standard image x310 failing
>
>
>
> Hi Jeff,
>
>
>
> For UHD 3.15, I believe that issue has been fixed. Check out the
> UHD-3.15.LTS branch and let me know if you still have an issue building.
>
>
>
> For UHD 3.14, check out the UHD-3.14 branch.
>
>
>
> Using the branches above, I was able to successfully build an image using
> your uhd_image_builder command (without the -g option) for both UHD 3.15
> and UHD 3.14.
>
>
>
> Jonathon
>
>
>
>
>
> On Wed, May 20, 2020 at 8:35 PM Hodges, Jeff via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
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
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f20bd905a62cc038
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">perhaps checkout the latest on the branch such as &quot;gi=
t checkout UHD-3.15.LTS&quot; ?</div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, May 21, 2020 at 11:25 AM Hodges, Jef=
f via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_7471427852276154499WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Maybe there is a mistake in they way I am pu=
lling the repository?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">V3.14 with 2017.4 vivado failed:<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">cd ~/rfnoc/src=C2=A0=C2=A0=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">=C2=A0=C2=A0=C2=A0$ git clone --recursive <a href=3D"https:/=
/github.com/EttusResearch/uhd" target=3D"_blank">https://github.com/EttusRe=
search/uhd</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">=C2=A0=C2=A0 $ cd uhd<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">=C2=A0=C2=A0 $ git checkout v3.14.1.1<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">=C2=A0=C2=A0 $ git submodule update --init --recursive<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">V3.15 with 2018.3 vivado failed:<u></u><u></=
u></span></p>
<pre>cd ~/rfnoc/src=C2=A0=C2=A0=C2=A0 <u></u><u></u></pre>
<pre>=C2=A0=C2=A0=C2=A0$ git clone --recursive <a href=3D"https://github.co=
m/EttusResearch/uhd" target=3D"_blank">https://github.com/EttusResearch/uhd=
</a><u></u><u></u></pre>
<pre>=C2=A0=C2=A0 $ cd uhd<u></u><u></u></pre>
<pre>=C2=A0=C2=A0 $ git checkout v3.15.0.0<u></u><u></u></pre>
<pre>=C2=A0=C2=A0 $ git submodule update --init --recursive<u></u><u></u></=
pre>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Am I pulling the wrong branches?<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Looking at uhd_image_builder.py in v3.15.0.0=
:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">44 wire ce_clk =3D radio_clk;<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">45 wire ce_rst =3D radio_rst;<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Jeff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@et=
tus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;
<br>
<b>Sent:</b> Thursday, May 21, 2020 2:01 AM<br>
<b>To:</b> Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" =
target=3D"_blank">Jeff.Hodges@gtri.gatech.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>; Prado, Ron &lt;<a href=3D"mailto:Ron.Prado@=
gtri.gatech.edu" target=3D"_blank">Ron.Prado@gtri.gatech.edu</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] rfnoc build standard image x310 failing<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi Jeff,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">For UHD 3.15, I believe that issue has been fixed. C=
heck out the UHD-3.15.LTS branch and let me know if you still have an issue=
 building.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">For UHD 3.14, check out the UHD-3.14 branch.<u></u><=
u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Using the branches above, I was able to successfully=
 build an image using your uhd_image_builder command (without the -g option=
) for both UHD 3.15 and UHD 3.14.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Jonathon<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, May 20, 2020 at 8:35 PM Hodges, Jeff via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">Can someone please tell me what version of uhd and r=
fnoc are compatible for building an image on Ubuntu 18.04?<u></u><u></u></p=
>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I cannot get any of the UHD releases to properly bui=
ld a standard rfnoc image.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">sudo ./uhd_image_builder.py fft ddc duc -g -t X310_R=
FNOC_HG -c -d X310 --fill-with-fifos<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I installed vivado 2018.3 with uhd 3.15.0.0 and get =
the error:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_cl=
k_gen/inst/CLK_OUT4 has multiple drivers: radio_clk_gen/inst/clkout1_buf/O,=
 and bus_clk_gen/inst/clkout4_buf/O.<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: [DRC MDRV-1] Multiple Driver Nets: Net radio_=
reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9 has multipl=
e drivers: radio_reset_sync/reset_double_sync/synchronizer_false_path/stage=
s[9].value_reg[9][0]/Q,
 and ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].valu=
e_reg[9][0]/Q.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I installed vivado 2017.4 with uhd 3.14.1.1 and get =
this error:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
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
2bit/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v&#39;
 already exists in the project as a part of sub-design file &#39;/home/nvd/=
rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/=
ddr3_32bit.xci&#39;. Explicitly adding the file outside the scope of the su=
b-design can lead to unintended behaviors
 and is not recommended.<u></u><u></u></p>
<p class=3D"MsoNormal">[00:00:29] Current task: Initialization +++ Current =
Phase: Starting<u></u><u></u></p>
<p class=3D"MsoNormal">[00:00:29] Current task: Initialization +++ Current =
Phase: Finished<u></u><u></u></p>
<p class=3D"MsoNormal">[00:00:29] Executing Tcl: synth_design -top x300 -pa=
rt xc7k410tffg900-2 -verilog_define BUILD_1G=3D1 -verilog_define BUILD_10G=
=3D1 -verilog_define SFP0_1GBE=3D1 -verilog_define SFP1_10GBE=3D1
 -verilog_define RFNOC=3D1 -verilog_define X310=3D1 -verilog_define GIT_HAS=
H=3D32&#39;hfbb85bdf<u></u><u></u></p>
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
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Any advice is greatly appreciated.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
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

--000000000000f20bd905a62cc038--


--===============1381608140863228239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1381608140863228239==--

