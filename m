Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1921DD21B
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 17:39:45 +0200 (CEST)
Received: from [::1] (port=56980 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbnIO-0002R6-HX; Thu, 21 May 2020 11:39:44 -0400
Received: from mail-vs1-f52.google.com ([209.85.217.52]:39675)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jbnIK-00024l-3F
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 11:39:40 -0400
Received: by mail-vs1-f52.google.com with SMTP id e7so4260934vsm.6
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 08:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lF5MhZwM1GQjHH1TYNhitvPdyLNKr/AfboZGk1B4UC0=;
 b=ew8IxkRZKceHnjOro2va8DGE0AgEzlDjPRjx3QdLGDfgCT1XMGvANZvFdZKcHhsbiS
 7JtREEAxJFFT6iqtjnAcltvaFhwIrMmS8H33YsHrpaX0Jw+hZbUk62VUQwEE9ymtXCPi
 klrOtQ5YLGEEP4ljEiOWZytv9t8VnOCEypAuZJiOPTqpaWZh3eKyKhI7ahsW1+dTXX5N
 xmFGkYz3vxg9Lv6VBu/8aCwprhQsxf5pUNbWqfgLJc+IPp9FhlhzSoZzNpRmBC65dOrK
 3ZHKhm2hbmW5cUu5qsf1GUhpTRLUFOFzxg615ec4f5nfcfo+Y0oBeazEjENCM+ddiqpO
 zobg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lF5MhZwM1GQjHH1TYNhitvPdyLNKr/AfboZGk1B4UC0=;
 b=s9lI2OLHhavfyRwwBGzc3760nU4lYRzCnB0DONBsfUz1aWjX/T9y4pwscsMfyAf+0t
 usLiG7pu7uRoaLsxidAYqHVkEFOCC9HAaWV352UYqOMraejPtaqULJOEKj64IEHRd4BE
 JxAgt4d9N0HOJ+OTjispfNO2uRdMIlnHse15uZYdbKXkAj2HxKjxToNCPSBk6YML3m/K
 ZnpBY4N9qbtPbLbOa8q8X10TcT4l5YXxb94qtMnqpMC2e1syhVEenmgg879zwof2GKff
 5V5GoSUT4aoygvjICJdY0IJAhUjcgFHmWjvMG5R0W84ABah00jtHAinf/AsYXuZ+JFC/
 N87g==
X-Gm-Message-State: AOAM532Q2e67cKFtMzOw1R3mSGQpZjmhBFRawRRb/0+aOy22lFjEw9Qg
 CJUx96RvcWCgEYJLWR92AuTFhFNTpvV9jDivMNjQlfBd
X-Google-Smtp-Source: ABdhPJwZM14UG2qFl7nj+nl/Rm1gtZTzAFT4JQzN7yMNxQU0l092gzuF5JTT7v/qoZAtBeqJ6uo0PtfXjEc2TOCbs94=
X-Received: by 2002:a67:e014:: with SMTP id c20mr7199818vsl.81.1590075539475; 
 Thu, 21 May 2020 08:38:59 -0700 (PDT)
MIME-Version: 1.0
References: <10F7328F6AD1354BA6DD787687B66B9001A97A1181@Maui.in.dynetics.com>
 <11a4d205a47a408eb1c78f5e89c6b27b@gtri.gatech.edu>
In-Reply-To: <11a4d205a47a408eb1c78f5e89c6b27b@gtri.gatech.edu>
Date: Thu, 21 May 2020 11:38:48 -0400
Message-ID: <CAGNhwTP=9YefQxNXEpzH9ne2VBRy5Aiv1-UNhT+_0AGYPZBFrQ@mail.gmail.com>
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3214722971939080520=="
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

--===============3214722971939080520==
Content-Type: multipart/alternative; boundary="000000000000b2588d05a62a4fdf"

--000000000000b2588d05a62a4fdf
Content-Type: text/plain; charset="UTF-8"

... the "UHD.3.15.LTS" branch, not tag:
{{{
% git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/UHD-3.10
  remotes/origin/UHD-3.11
  remotes/origin/UHD-3.12
  remotes/origin/UHD-3.13
  remotes/origin/UHD-3.14
  remotes/origin/UHD-3.14.L
  remotes/origin/UHD-3.15.LTS
  remotes/origin/UHD-3.9.LTS
  remotes/origin/master
  remotes/origin/rfnoc-devel
  remotes/origin/rfnoc-ofdm
  remotes/origin/x300_fp_gpio_fix
}}}
---
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/


On Thu, May 21, 2020 at 11:35 AM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I apologize for my ignorance, which of these is the LTS tag?
>
>
>
> git tag -l
>
> 003_007_002_rc1
>
> 003_007_003_rc1
>
> 003_008_000_rc1
>
> 003_008_002_rc1
>
> 003_008_003_rc1
>
> 003_008_004_rc1
>
> 003_008_005_rc1
>
> 003_009_000_rc1
>
> 003_009_002_rc1
>
> 003_009_003_rc1
>
> 003_009_004_rc1
>
> 003_009_005_rc1
>
> 003_009_006_rc1
>
> 003_009_007_rc1
>
> 003_010_001_000_rc1
>
> 003_010_001_000_rc2
>
> 003_010_001_001_rc1
>
> 003_010_002_000_rc1
>
> 003_010_003_000_rc1
>
> 003_010_003_000_rc2
>
> 003_011_000_000_rc1
>
> 003_011_000_001_rc1
>
> grcon_2016
>
> n310_release-0.1
>
> release_003_000_000
>
> release_003_000_001
>
> release_003_001_000
>
> release_003_001_001
>
> release_003_001_002
>
> release_003_002_000
>
> release_003_002_001
>
> release_003_002_002
>
> release_003_002_003
>
> release_003_002_004
>
> release_003_003_000
>
> release_003_003_001
>
> release_003_003_002
>
> release_003_004_000
>
> release_003_004_001
>
> release_003_004_002
>
> release_003_004_003
>
> release_003_004_004
>
> release_003_004_005
>
> release_003_005_000
>
> release_003_005_001
>
> release_003_005_002
>
> release_003_005_003
>
> release_003_005_004
>
> release_003_005_005
>
> release_003_006_000
>
> release_003_006_001
>
> release_003_006_002
>
> release_003_007_000
>
> release_003_007_001
>
> release_003_007_002
>
> release_003_007_003
>
> release_003_008_000
>
> release_003_008_001
>
> release_003_008_002
>
> release_003_008_003
>
> release_003_008_003-1
>
> release_003_008_004
>
> release_003_008_005
>
> release_003_009_000
>
> release_003_009_001
>
> release_003_009_002
>
> release_003_009_003
>
> release_003_009_004
>
> release_003_009_005
>
> release_003_009_006
>
> release_003_009_007
>
> release_003_010_000_000
>
> release_003_010_001_000
>
> release_003_010_001_001
>
> release_003_010_002_000
>
> release_003_010_003_000
>
> release_003_011_000_000
>
> release_003_011_000_001
>
> v3.11.0.0
>
> v3.11.0.1
>
> v3.11.0.1-20180419
>
> v3.11.0.1-rc1
>
> v3.11.1.0
>
> v3.11.1.0-rc1
>
> v3.12.0.0
>
> v3.12.0.0-rc1
>
> v3.12.0.1-rc1
>
> v3.13.0.0
>
> v3.13.0.0-rc1
>
> v3.13.0.1
>
> v3.13.0.2
>
> v3.13.0.3-rc1
>
> v3.13.1.0
>
> v3.13.1.0-rc1
>
> v3.13.1.0-rc2
>
> v3.14.0.0
>
> v3.14.0.0-a0-20181220
>
> v3.14.0.0-a1-20181220
>
> v3.14.0.0-rc1
>
> v3.14.0.0-rc2
>
> v3.14.0.0-rc3
>
> v3.14.1.0
>
> v3.14.1.0-rc1
>
> v3.14.1.1
>
> v3.14.1.1-rc1
>
> v3.14.1.1.L
>
> v3.15.0.0
>
> v3.15.0.0-e310_prerelease
>
> v3.15.0.0-rc2
>
> v3.15.0.0-rc3
>
>
>
>
>
>
>
> Jeff
>
>
>
> *From:* Carmichael, Ryan <Ryan.Carmichael@dynetics.com>
> *Sent:* Thursday, May 21, 2020 11:29 AM
> *To:* usrp-users@lists.ettus.com
> *Cc:* Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
> *Subject:* Re: [USRP-users] rfnoc build standard image x310 failing
>
>
>
> I think you want to be using the UHD-3.15.LTS tag.
>
>
>
> -          Ryan
>
>
>
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Hodges,
> Jeff via USRP-users
> *Sent:* Thursday, May 21, 2020 10:25 AM
> *To:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Cc:* usrp-users@lists.ettus.com; Prado, Ron <Ron.Prado@gtri.gatech.edu>
> *Subject:* [EXTERNAL] Re: [USRP-users] rfnoc build standard image x310
> failing
>
>
>
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
>
> * ------------------------------ *
>
> *The information contained in this message, and any attachments, may
> contain privileged and/or proprietary information that is intended solely
> for the person or entity to which it is addressed. Moreover, it may contain
> export restricted technical data controlled by Export Administration
> Regulations (EAR) or the International Traffic in Arms Regulations (ITAR).
> Any review, retransmission, dissemination, or re-export to foreign or
> domestic entities by anyone other than the intended recipient in accordance
> with EAR and/or ITAR regulations is prohibited.*
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b2588d05a62a4fdf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">... the &quot;UHD.3.15.LTS&quot; branch, not tag:<div>{{{<=
/div><div>% git branch -a<br>* master<br>=C2=A0 remotes/origin/HEAD -&gt; o=
rigin/master<br>=C2=A0 remotes/origin/UHD-3.10<br>=C2=A0 remotes/origin/UHD=
-3.11<br>=C2=A0 remotes/origin/UHD-3.12<br>=C2=A0 remotes/origin/UHD-3.13<b=
r>=C2=A0 remotes/origin/UHD-3.14<br>=C2=A0 remotes/origin/UHD-3.14.L<br>=C2=
=A0 remotes/origin/UHD-3.15.LTS<br>=C2=A0 remotes/origin/UHD-3.9.LTS<br>=C2=
=A0 remotes/origin/master<br>=C2=A0 remotes/origin/rfnoc-devel<br>=C2=A0 re=
motes/origin/rfnoc-ofdm<br>=C2=A0 remotes/origin/x300_fp_gpio_fix</div><div=
>}}}<div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"=
gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><div dir=3D"ltr"><div><div dir=3D"ltr">---</div><div dir=3D"ltr">Mi=
chael Dickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mail=
to:support@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a hr=
ef=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></d=
iv></div></div></div></div></div></div></div></div></div><br></div></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, May 21, 2020 at 11:35 AM Hodges, Jeff via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-7477338691263247983WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I apologize for my ignorance, which of these=
 is the LTS tag?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">git tag -l<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_007_002_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_007_003_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_008_000_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_008_002_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_008_003_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_008_004_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_008_005_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_009_000_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_009_002_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_009_003_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_009_004_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_009_005_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_009_006_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_009_007_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_010_001_000_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_010_001_000_rc2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_010_001_001_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_010_002_000_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_010_003_000_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_010_003_000_rc2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_011_000_000_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">003_011_000_001_rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">grcon_2016<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">n310_release-0.1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_000_000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_000_001<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_001_000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_001_001<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_001_002<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_002_000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_002_001<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_002_002<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_002_003<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_002_004<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_003_000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_003_001<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_003_002<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_004_000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_004_001<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_004_002<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_004_003<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_004_004<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_004_005<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_005_000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_005_001<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_005_002<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_005_003<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_005_004<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_005_005<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_006_000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_006_001<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_006_002<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_007_000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_007_001<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_007_002<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_007_003<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_008_000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_008_001<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_008_002<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_008_003<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_008_003-1<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_008_004<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_008_005<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_009_000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_009_001<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_009_002<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_009_003<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_009_004<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_009_005<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_009_006<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_009_007<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_010_000_000<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_010_001_000<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_010_001_001<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_010_002_000<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_010_003_000<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_011_000_000<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">release_003_011_000_001<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.11.0.0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.11.0.1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.11.0.1-20180419<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.11.0.1-rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.11.1.0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.11.1.0-rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.12.0.0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.12.0.0-rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.12.0.1-rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.13.0.0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.13.0.0-rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.13.0.1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.13.0.2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.13.0.3-rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.13.1.0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.13.1.0-rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.13.1.0-rc2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.0.0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.0.0-a0-20181220<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.0.0-a1-20181220<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.0.0-rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.0.0-rc2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.0.0-rc3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.1.0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.1.0-rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.1.1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.1.1-rc1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.14.1.1.L<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.15.0.0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.15.0.0-e310_prerelease<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.15.0.0-rc2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">v3.15.0.0-rc3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Jeff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Carmichael, Ryan &lt;<a href=3D"mailto:Ryan.Carmichael@dyn=
etics.com" target=3D"_blank">Ryan.Carmichael@dynetics.com</a>&gt;
<br>
<b>Sent:</b> Thursday, May 21, 2020 11:29 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Cc:</b> Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" =
target=3D"_blank">Jeff.Hodges@gtri.gatech.edu</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] rfnoc build standard image x310 failing<u>=
</u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I think you want to be using the UHD-3.15.LT=
S tag.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"gmail-m_-7477338691263247983MsoListParagraph"><u></u><span styl=
e=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><s=
pan>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">Ryan<u></u><u></u></span></p>
<p class=3D"gmail-m_-7477338691263247983MsoListParagraph"><span style=3D"fo=
nt-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.=
ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Hodges, Jeff via USRP-users<br>
<b>Sent:</b> Thursday, May 21, 2020 10:25 AM<br>
<b>To:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.co=
m" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>; Prado, Ron &lt;<a href=3D"mailto:Ron.Prado@=
gtri.gatech.edu" target=3D"_blank">Ron.Prado@gtri.gatech.edu</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] rfnoc build standard image x310=
 failing<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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
ier New&quot;">=C2=A0=C2=A0=C2=A0$ git clone --recursive
<a href=3D"https://github.com/EttusResearch/uhd" target=3D"_blank">https://=
github.com/EttusResearch/uhd</a><u></u><u></u></span></p>
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
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0i=
n 5pt 4.8pt">
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
<p class=3D"MsoNormal"><i><u></u>=C2=A0<u></u></i></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><i>
<hr size=3D"5" width=3D"100%" align=3D"center">
</i></div>
<p style=3D"line-height:9pt"><i><span style=3D"font-size:8pt">The informati=
on contained in this message, and any attachments, may contain privileged a=
nd/or proprietary information that is intended solely for the person or ent=
ity to which
 it is addressed. Moreover, it may contain export restricted technical data=
 controlled by Export Administration Regulations (EAR) or the International=
 Traffic in Arms Regulations (ITAR). Any review, retransmission, disseminat=
ion, or re-export to foreign or
 domestic entities by anyone other than the intended recipient in accordanc=
e with EAR and/or ITAR regulations is prohibited.<u></u><u></u></span></i><=
/p>
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

--000000000000b2588d05a62a4fdf--


--===============3214722971939080520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3214722971939080520==--

