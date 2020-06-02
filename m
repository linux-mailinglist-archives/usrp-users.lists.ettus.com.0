Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE9B1EC34D
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jun 2020 22:00:06 +0200 (CEST)
Received: from [::1] (port=49916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgD4t-0006n1-9V; Tue, 02 Jun 2020 16:00:03 -0400
Received: from mail-pf1-f178.google.com ([209.85.210.178]:36110)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mitch.grabner@gmail.com>)
 id 1jgD4o-0006Zp-FL
 for usrp-users@lists.ettus.com; Tue, 02 Jun 2020 15:59:58 -0400
Received: by mail-pf1-f178.google.com with SMTP id x22so1423532pfn.3
 for <usrp-users@lists.ettus.com>; Tue, 02 Jun 2020 12:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=itBgB39tEU36QWNgyDzKY8pCB3J003bAgOL1fxjKodI=;
 b=WNISTnp55BGhvsNrO7a9cWzfmyf8zdAMqFtIKj0gcbDDD+QNs8RVsG1TwxEb6fpyou
 O10np45yca37Pfzx1aStFX4KezfM6rkwrUKoShLd4rIChaN3Houhh+qOQpcYhnoNZLmb
 N4OnHxbib/zHcMqFqrvdk7FawYQeR+2s93hqGXJaGuh4wioty1C1DyDtdn9UxiOwa+7l
 KWOm/apcqORLHe8EWYhCKOlQ8LFZGE4Xz0SEfrAwC7wvdW2TGfmxRszMZhQMb6zVJer1
 a6N9uXiWJCVnyJ24c4pEtL7rGP7f5oYjncInk4Rga/o1fSuC62v6uM33advd8CmZ4H9B
 yPqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=itBgB39tEU36QWNgyDzKY8pCB3J003bAgOL1fxjKodI=;
 b=ZDHIohJ8h1NO7cRZF8ugTSJ+30YAciPO9LXqrAWU0FBwkBIpBumEKNlWykGN43ZHqv
 ibK/esDzTfIw4D2BLIodRxWOXS5GKwRCsOtGiEhoph3zuDdrWk71ZY4BshjAlvyAF5O5
 531g3v417Ck1f24ggTdv95jpu5VGOW3b787nfSr2JNSRFxpXBUYw4EHw0QhzaGqOvWbI
 3qYgFKOxt8cJpcOUJ2BnuUYXP79NTsQKo5W9yZqUfxf/5MAhOQ7u9vE09lJFIsk2er4O
 pyRB92+fOWS6wzVLA44G9mhcc2AfpIOw6IAdqPjEQqAao97wY1ZEX7aWCxmlder8EDta
 p8eA==
X-Gm-Message-State: AOAM533q/dK9aVZs/3cbu+3BCMrtmex3ZIM/wLCH4ffn+xz7gli+ZHMh
 sXUeFWSfBHDdHYAD4suPKDZvTHj1Hg0vMeuwAs4=
X-Google-Smtp-Source: ABdhPJx3BbTcGmEd5NAosurBR1pIo/RVOMHBkO7sniwjQPDNAFf9/z9PNuaDwdZLFQGxi+4p+ats+ZLjnoBp9ASnYIo=
X-Received: by 2002:a17:90b:1108:: with SMTP id
 gi8mr913029pjb.144.1591127957260; 
 Tue, 02 Jun 2020 12:59:17 -0700 (PDT)
MIME-Version: 1.0
References: <10F7328F6AD1354BA6DD787687B66B9001A97A1181@Maui.in.dynetics.com>
 <11a4d205a47a408eb1c78f5e89c6b27b@gtri.gatech.edu>
 <CAGNhwTP=9YefQxNXEpzH9ne2VBRy5Aiv1-UNhT+_0AGYPZBFrQ@mail.gmail.com>
 <9ed313d337214f9686dd5cce435fbd7b@gtri.gatech.edu>
 <9b8626a760ef425fa2af5dad823c7cc4@gtri.gatech.edu>
In-Reply-To: <9b8626a760ef425fa2af5dad823c7cc4@gtri.gatech.edu>
Date: Tue, 2 Jun 2020 15:59:05 -0400
Message-ID: <CAGXuw=jmsVYx09+xu-ExJQ-2xzb3qDkdX-fcC_6w3bhuWVHPjQ@mail.gmail.com>
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
From: Mitch Grabner via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mitch Grabner <mitch.grabner@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7325142574699883659=="
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

--===============7325142574699883659==
Content-Type: multipart/alternative; boundary="000000000000af510505a71f58fb"

--000000000000af510505a71f58fb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jeff,

I'm having the same error as you while trying to build an OOT block using
3.15 LTS. I've tried modifying the uhd_image_builder.py script to point to
the root directory of the OOT but I get a different error saying there is
no rule to make target. I'll update if I find a fix.

-mitch

On Mon, Jun 1, 2020 at 6:08 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> The error has not been fixed in UHD.3.15-LTS:
>
>
>
> https://github.com/EttusResearch/fpga/pull/47
>
>
>
> The github says these changes were applied and rolled back into the
> UHD.3.15-LTS. However, I just pulled the repository and ran submodule
> update and the errors are still present in uhd_image_builder.py.  In
> addition, I pulled the tag for v.3.15.0.0-rc3 and it also still has the
> error.
>
>
>
> On top of that, I believe that =E2=80=9Crfnoc=E2=80=9D should also be rem=
oved from line
> 323 because oot_path has =E2=80=9Crfnoc=E2=80=9D already appended to it.
>
>
>
> Jeff
>
>
>
> *From:* Hodges, Jeff
> *Sent:* Thursday, May 28, 2020 12:41 PM
> *To:* 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
> *Subject:* RE: [USRP-users] rfnoc build standard image x310 failing
>
>
>
> Thanks for that advice to install UHD-3.15.LTS. I was able to synthesize
> the standard blocks, but I could not synthesize the OOT gain block from t=
he
> tutorial. I get the error message:
>
>
>
> ERROR: [Synth 8-439] module 'noc_block_gain' not found
> [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/rfnoc_ce_auto_inst_x310.=
v:20]
>
>
>
> I have installed UHD.3.15-LTS and I had to correct one error in order to
> get the OOT gain block to build from the tutorial website:
>
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-May/0619=
91.html
>
>
>
> This makes me wonder, if UHD-3.15.LTS has known errors that have been
> since been fixed in the master branch, should I be using the master branc=
h
> instead? Are there plans to update these errors in the UHD-3.15.LTS branc=
h?
>
>
>
> The noc_gain_block does appear in the OOT list in
> uhd_image_builder_gui.py. I was able to get the standard blocks to
> synthesize, but now I cannot get the OOT gain block to synthesize. Here=
=E2=80=99s
> the output after running uhd_image_builder.py. When the gain block is
> selected in the GUI it adds the the path -I
> /home/nvd/rfnoc/src/rfnoc-tutorial/rfnoc/ which is the correct path to th=
e
> OOT fpga-src/ directory.
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> --Using the following blocks to generate image:
>
>     * gain
>
>     * fosphor
>
>     * axi_fifo_loopback
>
>     * axi_fifo_loopback
>
>     * fir_filter
>
>     * fft
>
>     * window
>
>     * ddc
>
>     * duc
>
>     * siggen
>
> Adding CE instantiation file for 'X310_RFNOC_HG'
>
> No valid makefile found at /home/nvd/rfnoc/src/rfnoc-tutorial/rfnoc
>
> changing temporarily working directory to
> /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts/../../top/x300
>
> Setting up a 64-bit FPGA build environment for the USRP-X3x0...
>
> - Vivado: Found (/opt/Xilinx/Vivado/2018.3/bin)
>
>
>
> Environment successfully initialized.
>
> make -f Makefile.x300.inc bin NAME=3DX310_RFNOC_HG ARCH=3Dkintex7
> PART_ID=3Dxc7k410t/ffg900/-2 BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP=
1_10GBE=3D1
> RFNOC=3D1 X310=3D1 TOP_MODULE=3Dx300 EXTRA_DEFS=3D"BUILD_1G=3D1 BUILD_10G=
=3D1
> SFP0_1GBE=3D1 SFP1_10GBE=3D1  RFNOC=3D1 X310=3D1"
>
> make[1]: Entering directory
> '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300'
>
> BUILDER: Checking tools...
>
> * GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
>
> * Python 2.7.17
>
> * Vivado v2018.3 (64-bit)
>
> Using parser configuration from:
> /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/dev_config.json
>
> [00:00:00] Executing command: vivado -mode batch -source
> /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build_x300.tcl -log
> build.log -journal x300.jou
>
> CRITICAL WARNING: [filemgmt 20-1440] File
> '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-=
2/ddr3_32bit/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v=
'
> already exists in the project as a part of sub-design file
> '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-=
2/ddr3_32bit/ddr3_32bit.xci'.
> Explicitly adding the file outside the scope of the sub-design can lead t=
o
> unintended behaviors and is not recommended.
>
> [00:00:23] Current task: Initialization +++ Current Phase: Starting
>
> [00:00:23] Current task: Initialization +++ Current Phase: Finished
>
> [00:00:23] Executing Tcl: synth_design -top x300 -part xc7k410tffg900-2
> -verilog_define BUILD_1G=3D1 -verilog_define BUILD_10G=3D1 -verilog_defin=
e
> SFP0_1GBE=3D1 -verilog_define SFP1_10GBE=3D1 -verilog_define RFNOC=3D1
> -verilog_define X310=3D1 -verilog_define GIT_HASH=3D32'hf9fb84a1
>
> [00:00:23] Starting Synthesis Command
>
> ERROR: [Synth 8-439] module 'noc_block_gain' not found
> [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/rfnoc_ce_auto_inst_x310.=
v:20]
>
> ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
> [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300_core.v:8]
>
> ERROR: [Synth 8-6156] failed synthesizing module 'x300'
> [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:20]
>
> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
> console or run log file for details
>
> [00:07:19] Current task: Synthesis +++ Current Phase: Starting
>
> [00:07:19] Current task: Synthesis +++ Current Phase: Finished
>
> [00:07:19] Process terminated. Status: Failure
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> Warnings:           158
>
> Critical Warnings:  1
>
> Errors:             4
>
>
>
> Makefile.x300.inc:106: recipe for target 'bin' failed
>
> make[1]: *** [bin] Error 1
>
> make[1]: Leaving directory
> '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300'
>
> Makefile:112: recipe for target 'X310_RFNOC_HG' failed
>
> make: *** [X310_RFNOC_HG] Error 2
>
>
>
>
>
>
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
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Ho=
dges,
> Jeff via USRP-users
> *Sent:* Thursday, May 21, 2020 11:50 AM
> *To:* Michael Dickens <michael.dickens@ettus.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] rfnoc build standard image x310 failing
>
>
>
> Ahhh=E2=80=A6thanks for that. I was using the method described here to up=
date by
> tag not branch:
>
>
>
>
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFN=
oC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>
>
>
> Jeff
>
>
>
> *From:* Michael Dickens <michael.dickens@ettus.com>
> *Sent:* Thursday, May 21, 2020 11:39 AM
> *To:* Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
> *Cc:* Carmichael, Ryan <Ryan.Carmichael@dynetics.com>;
> usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] rfnoc build standard image x310 failing
>
>
>
> ... the "UHD.3.15.LTS" branch, not tag:
>
> {{{
>
> % git branch -a
> * master
>   remotes/origin/HEAD -> origin/master
>   remotes/origin/UHD-3.10
>   remotes/origin/UHD-3.11
>   remotes/origin/UHD-3.12
>   remotes/origin/UHD-3.13
>   remotes/origin/UHD-3.14
>   remotes/origin/UHD-3.14.L
>   remotes/origin/UHD-3.15.LTS
>   remotes/origin/UHD-3.9.LTS
>   remotes/origin/master
>   remotes/origin/rfnoc-devel
>   remotes/origin/rfnoc-ofdm
>   remotes/origin/x300_fp_gpio_fix
>
> }}}
>
> ---
>
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>
>
>
>
>
> On Thu, May 21, 2020 at 11:35 AM Hodges, Jeff via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
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
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Ho=
dges,
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
> 44 wire ce_clk =3D radio_clk;
>
> 45 wire ce_rst =3D radio_rst;
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
> radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].valu=
e_reg[9][0]/Q,
> and
> ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_r=
eg[9][0]/Q.
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
> /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2=
/aurora_64b66b_pcs_pma
>
> Using parser configuration from:
> /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/dev_config.json
>
> [00:00:00] Executing command: vivado -mode batch -source
> /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build_x300.tcl -log
> build.log -journal x300.jou
>
> CRITICAL WARNING: [filemgmt 20-1440] File
> '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-=
2/ddr3_32bit/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v=
'
> already exists in the project as a part of sub-design file
> '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-=
2/ddr3_32bit/ddr3_32bit.xci'.
> Explicitly adding the file outside the scope of the sub-design can lead t=
o
> unintended behaviors and is not recommended.
>
> [00:00:29] Current task: Initialization +++ Current Phase: Starting
>
> [00:00:29] Current task: Initialization +++ Current Phase: Finished
>
> [00:00:29] Executing Tcl: synth_design -top x300 -part xc7k410tffg900-2
> -verilog_define BUILD_1G=3D1 -verilog_define BUILD_10G=3D1 -verilog_defin=
e
> SFP0_1GBE=3D1 -verilog_define SFP1_10GBE=3D1 -verilog_define RFNOC=3D1
> -verilog_define X310=3D1 -verilog_define GIT_HASH=3D32'hfbb85bdf
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
> for the person or entity to which it is addressed. Moreover, it may conta=
in
> export restricted technical data controlled by Export Administration
> Regulations (EAR) or the International Traffic in Arms Regulations (ITAR)=
.
> Any review, retransmission, dissemination, or re-export to foreign or
> domestic entities by anyone other than the intended recipient in accordan=
ce
> with EAR and/or ITAR regulations is prohibited.*
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


--=20

*Mitchell J Grabner, PhD*
*Member, IEEE Communications Society*

*IEEE-HKN Lambda Zeta Chapter*
*------------------------------------------------*
My Linkedin <http://www.linkedin.com/pub/mitch-grabner/43/23b/bb5>

--000000000000af510505a71f58fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Jeff,</div><div><br></div><div>I&#39;m having the sam=
e error as you while trying to build an OOT block using 3.15 LTS. I&#39;ve =
tried modifying the uhd_image_builder.py script to point to the root direct=
ory of the OOT but I get a different error saying there is no rule to make =
target. I&#39;ll update if I find a fix.<br></div><div><br></div><div>-mitc=
h<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Jun 1, 2020 at 6:08 PM Hodges, Jeff via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3936343852897737871WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">The error has not been fixed in =
UHD.3.15-LTS:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><a href=3D"https://github.com/Et=
tusResearch/fpga/pull/47" target=3D"_blank">https://github.com/EttusResearc=
h/fpga/pull/47</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">The github says these changes we=
re applied and rolled back into the UHD.3.15-LTS. However, I just pulled th=
e repository and ran submodule update and the errors
 are still present in uhd_image_builder.py.=C2=A0 In addition, I pulled the=
 tag for v.3.15.0.0-rc3 and it also still has the error.<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">On top of that, I believe that =
=E2=80=9Crfnoc=E2=80=9D should also be removed from line 323 because oot_pa=
th has =E2=80=9Crfnoc=E2=80=9D already appended to it.<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Jeff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> Hodges, Jeff
<br>
<b>Sent:</b> Thursday, May 28, 2020 12:41 PM<br>
<b>To:</b> &#39;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&#39; &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> RE: [USRP-users] rfnoc build standard image x310 failing<u>=
</u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Thanks for that advice to instal=
l UHD-3.15.LTS. I was able to synthesize the standard blocks, but I could n=
ot synthesize the OOT gain block from the tutorial.
 I get the error message:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:red">ERROR: [Synth 8-439] module &#39;noc_block_=
gain&#39; not found [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/rfnoc_=
ce_auto_inst_x310.v:20]<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">I have installed UHD.3.15-LTS an=
d I had to correct one error in order to get the OOT gain block to build fr=
om the tutorial website:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><a href=3D"http://lists.ettus.co=
m/pipermail/usrp-users_lists.ettus.com/2020-May/061991.html" target=3D"_bla=
nk">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-May/06=
1991.html</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">This makes me wonder, if UHD-3.1=
5.LTS has known errors that have been since been fixed in the master branch=
, should I be using the master branch instead? Are
 there plans to update these errors in the UHD-3.15.LTS branch?<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">The noc_gain_block does appear i=
n the OOT list in uhd_image_builder_gui.py. I was able to get the standard =
blocks to synthesize, but now I cannot get the OOT
 gain block to synthesize. Here=E2=80=99s the output after running uhd_imag=
e_builder.py. When the gain block is selected in the GUI it adds the the pa=
th -I /home/nvd/rfnoc/src/rfnoc-tutorial/rfnoc/ which is the correct path t=
o the OOT fpga-src/ directory.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">--Using the following blocks to =
generate image:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 * gain<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 * fosphor<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 * axi_fifo_lo=
opback<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 * axi_fifo_lo=
opback<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 * fir_filter<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 * fft<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 * window<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 * ddc<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 * duc<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 * siggen<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Adding CE instantiation file for=
 &#39;X310_RFNOC_HG&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">No valid makefile found at /home=
/nvd/rfnoc/src/rfnoc-tutorial/rfnoc<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">changing temporarily working dir=
ectory to /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts/../../top/x3=
00<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Setting up a 64-bit FPGA build e=
nvironment for the USRP-X3x0...<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">- Vivado: Found (/opt/Xilinx/Viv=
ado/2018.3/bin)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Environment successfully initial=
ized.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">make -f Makefile.x300.inc bin NA=
ME=3DX310_RFNOC_HG ARCH=3Dkintex7 PART_ID=3Dxc7k410t/ffg900/-2 BUILD_1G=3D1=
 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1=C2=A0 RFNOC=3D1 X310=3D1 TOP_MO=
DULE=3Dx300
 EXTRA_DEFS=3D&quot;BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1=
=C2=A0 RFNOC=3D1 X310=3D1&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">make[1]: Entering directory &#39=
;/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300&#39;<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">BUILDER: Checking tools...<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">* GNU bash, version 4.4.20(1)-re=
lease (x86_64-pc-linux-gnu)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">* Python 2.7.17<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">* Vivado v2018.3 (64-bit)<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Using parser configuration from:=
 /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/dev_config.json<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">[00:00:00] Executing command: vi=
vado -mode batch -source /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/bu=
ild_x300.tcl -log build.log -journal x300.jou<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">CRITICAL WARNING: [filemgmt 20-1=
440] File &#39;/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7=
k410tffg900-2/ddr3_32bit/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4=
_2_tempmon.v&#39;
 already exists in the project as a part of sub-design file &#39;/home/nvd/=
rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/=
ddr3_32bit.xci&#39;. Explicitly adding the file outside the scope of the su=
b-design can lead to unintended behaviors
 and is not recommended.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">[00:00:23] Current task: Initial=
ization +++ Current Phase: Starting<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">[00:00:23] Current task: Initial=
ization +++ Current Phase: Finished<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">[00:00:23] Executing Tcl: synth_=
design -top x300 -part xc7k410tffg900-2 -verilog_define BUILD_1G=3D1 -veril=
og_define BUILD_10G=3D1 -verilog_define SFP0_1GBE=3D1 -verilog_define
 SFP1_10GBE=3D1 -verilog_define RFNOC=3D1 -verilog_define X310=3D1 -verilog=
_define GIT_HASH=3D32&#39;hf9fb84a1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">[00:00:23] Starting Synthesis Co=
mmand<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:red">ERROR: [Synth 8-439] module &#39;noc_block_=
gain&#39; not found [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/rfnoc_=
ce_auto_inst_x310.v:20]<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:red">ERROR: [Synth 8-6156] failed synthesizing m=
odule &#39;x300_core&#39; [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/=
x300_core.v:8]<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:red">ERROR: [Synth 8-6156] failed synthesizing m=
odule &#39;x300&#39; [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.=
v:20]<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:red">ERROR: [Common 17-69] Command failed: Synth=
esis failed - please see the console or run log file for details<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">[00:07:19] Current task: Synthes=
is +++ Current Phase: Starting<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">[00:07:19] Current task: Synthes=
is +++ Current Phase: Finished<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">[00:07:19] Process terminated. S=
tatus: Failure<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Warnings:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 158<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Critical Warnings:=C2=A0 1<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Errors:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Makefile.x300.inc:106: recipe fo=
r target &#39;bin&#39; failed<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">make[1]: *** [bin] Error 1<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">make[1]: Leaving directory &#39;=
/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300&#39;<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Makefile:112: recipe for target =
&#39;X310_RFNOC_HG&#39; failed<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">make: *** [X310_RFNOC_HG] Error =
2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Thanks,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Jeff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> USRP-users &lt;<a href=3D"mailto:u=
srp-users-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lis=
ts.ettus.com</a>&gt;
<b>On Behalf Of </b>Hodges, Jeff via USRP-users<br>
<b>Sent:</b> Thursday, May 21, 2020 11:50 AM<br>
<b>To:</b> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com"=
 target=3D"_blank">michael.dickens@ettus.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] rfnoc build standard image x310 failing<u>=
</u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Ahhh=E2=80=A6thanks for that. I =
was using the method described here to update by tag not branch:<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><a href=3D"https://kb.ettus.com/=
Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr=
-ettus_from_Source" target=3D"_blank">https://kb.ettus.com/Software_Develop=
ment_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Sour=
ce</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Jeff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> Michael Dickens &lt;<a href=3D"mai=
lto:michael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com<=
/a>&gt;
<br>
<b>Sent:</b> Thursday, May 21, 2020 11:39 AM<br>
<b>To:</b> Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" =
target=3D"_blank">Jeff.Hodges@gtri.gatech.edu</a>&gt;<br>
<b>Cc:</b> Carmichael, Ryan &lt;<a href=3D"mailto:Ryan.Carmichael@dynetics.=
com" target=3D"_blank">Ryan.Carmichael@dynetics.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] rfnoc build standard image x310 failing<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">... the &quot;UHD.3.15.LTS&quot; branch, not tag:<u>=
</u><u></u></p>
<div>
<p class=3D"MsoNormal">{{{<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">% git branch -a<br>
* master<br>
=C2=A0 remotes/origin/HEAD -&gt; origin/master<br>
=C2=A0 remotes/origin/UHD-3.10<br>
=C2=A0 remotes/origin/UHD-3.11<br>
=C2=A0 remotes/origin/UHD-3.12<br>
=C2=A0 remotes/origin/UHD-3.13<br>
=C2=A0 remotes/origin/UHD-3.14<br>
=C2=A0 remotes/origin/UHD-3.14.L<br>
=C2=A0 remotes/origin/UHD-3.15.LTS<br>
=C2=A0 remotes/origin/UHD-3.9.LTS<br>
=C2=A0 remotes/origin/master<br>
=C2=A0 remotes/origin/rfnoc-devel<br>
=C2=A0 remotes/origin/rfnoc-ofdm<br>
=C2=A0 remotes/origin/x300_fp_gpio_fix<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">}}}<u></u><u></u></p>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">---<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Michael Dickens<br>
Ettus Research Technical Support<br>
Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus=
.com</a><br>
Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a=
><u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, May 21, 2020 at 11:35 AM Hodges, Jeff via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">I apologize for my ignorance, wh=
ich of these is the LTS tag?</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">git tag -l</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_007_002_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_007_003_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_008_000_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_008_002_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_008_003_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_008_004_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_008_005_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_009_000_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_009_002_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_009_003_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_009_004_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_009_005_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_009_006_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_009_007_rc1</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_010_001_000_rc1</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_010_001_000_rc2</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_010_001_001_rc1</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_010_002_000_rc1</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_010_003_000_rc1</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_010_003_000_rc2</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_011_000_000_rc1</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">003_011_000_001_rc1</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">grcon_2016</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">n310_release-0.1</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_000_000</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_000_001</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_001_000</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_001_001</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_001_002</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_002_000</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_002_001</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_002_002</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_002_003</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_002_004</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_003_000</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_003_001</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_003_002</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_004_000</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_004_001</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_004_002</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_004_003</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_004_004</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_004_005</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_005_000</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_005_001</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_005_002</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_005_003</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_005_004</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_005_005</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_006_000</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_006_001</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_006_002</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_007_000</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_007_001</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_007_002</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_007_003</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_008_000</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_008_001</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_008_002</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_008_003</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_008_003-1</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_008_004</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_008_005</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_009_000</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_009_001</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_009_002</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_009_003</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_009_004</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_009_005</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_009_006</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_009_007</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_010_000_000</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_010_001_000</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_010_001_001</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_010_002_000</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_010_003_000</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_011_000_000</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">release_003_011_000_001</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.11.0.0</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.11.0.1</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.11.0.1-20180419</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.11.0.1-rc1</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.11.1.0</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.11.1.0-rc1</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.12.0.0</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.12.0.0-rc1</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.12.0.1-rc1</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.13.0.0</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.13.0.0-rc1</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.13.0.1</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.13.0.2</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.13.0.3-rc1</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.13.1.0</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.13.1.0-rc1</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.13.1.0-rc2</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.0.0</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.0.0-a0-20181220</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.0.0-a1-20181220</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.0.0-rc1</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.0.0-rc2</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.0.0-rc3</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.1.0</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.1.0-rc1</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.1.1</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.1.1-rc1</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.14.1.1.L</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.15.0.0</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.15.0.0-e310_prerelease</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.15.0.0-rc2</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">v3.15.0.0-rc3</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Jeff</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> Carmichael, Ryan &lt;<a href=3D"ma=
ilto:Ryan.Carmichael@dynetics.com" target=3D"_blank">Ryan.Carmichael@dyneti=
cs.com</a>&gt;
<br>
<b>Sent:</b> Thursday, May 21, 2020 11:29 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Cc:</b> Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" =
target=3D"_blank">Jeff.Hodges@gtri.gatech.edu</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] rfnoc build standard image x310 failing</s=
pan><u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">I think you want to be using the=
 UHD-3.15.LTS tag.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"gmail-m_3936343852897737871gmail-m-7477338691263247983msolistpa=
ragraph"><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:rgb(31,73,125)">-</span><span style=3D"font-size:7pt;color:rgb=
(31,73,125)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-s=
erif;color:rgb(31,73,125)">Ryan</span><u></u><u></u></p>
<p class=3D"gmail-m_3936343852897737871gmail-m-7477338691263247983msolistpa=
ragraph"><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> USRP-users &lt;<a href=3D"mailto:u=
srp-users-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lis=
ts.ettus.com</a>&gt;
<b>On Behalf Of </b>Hodges, Jeff via USRP-users<br>
<b>Sent:</b> Thursday, May 21, 2020 10:25 AM<br>
<b>To:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.co=
m" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>; Prado, Ron &lt;<a href=3D"mailto:Ron.Prado@=
gtri.gatech.edu" target=3D"_blank">Ron.Prado@gtri.gatech.edu</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] rfnoc build standard image x310=
 failing</span><u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Maybe there is a mistake in they=
 way I am pulling the repository?</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">V3.14 with 2017.4 vivado failed:=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">cd ~/rfnoc/src=C2=A0=C2=A0=C2=A0
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">=C2=A0=C2=A0=C2=A0$ git clone --recursive
<a href=3D"https://github.com/EttusResearch/uhd" target=3D"_blank">https://=
github.com/EttusResearch/uhd</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">=C2=A0=C2=A0 $ cd uhd</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">=C2=A0=C2=A0 $ git checkout v3.14.1.1</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Cour=
ier New&quot;">=C2=A0=C2=A0 $ git submodule update --init --recursive</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">V3.15 with 2018.3 vivado failed:=
</span><u></u><u></u></p>
<pre>cd ~/rfnoc/src=C2=A0=C2=A0=C2=A0 <u></u><u></u></pre>
<pre>=C2=A0=C2=A0=C2=A0$ git clone --recursive <a href=3D"https://github.co=
m/EttusResearch/uhd" target=3D"_blank">https://github.com/EttusResearch/uhd=
</a><u></u><u></u></pre>
<pre>=C2=A0=C2=A0 $ cd uhd<u></u><u></u></pre>
<pre>=C2=A0=C2=A0 $ git checkout v3.15.0.0<u></u><u></u></pre>
<pre>=C2=A0=C2=A0 $ git submodule update --init --recursive<u></u><u></u></=
pre>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Am I pulling the wrong branches?=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Looking at uhd_image_builder.py =
in v3.15.0.0:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">44 wire ce_clk =3D radio_clk;</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">45 wire ce_rst =3D radio_rst;</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Jeff</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> Jonathon Pendlum &lt;<a href=3D"ma=
ilto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.c=
om</a>&gt;
<br>
<b>Sent:</b> Thursday, May 21, 2020 2:01 AM<br>
<b>To:</b> Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" =
target=3D"_blank">Jeff.Hodges@gtri.gatech.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>; Prado, Ron &lt;<a href=3D"mailto:Ron.Prado@=
gtri.gatech.edu" target=3D"_blank">Ron.Prado@gtri.gatech.edu</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] rfnoc build standard image x310 failing</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">Hi Jeff,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">For UHD 3.15, I believe that issue has been fixed. C=
heck out the UHD-3.15.LTS branch and let me know if you still have an issue=
 building.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">For UHD 3.14, check out the UHD-3.14 branch.<u></u><=
u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Using the branches above, I was able to successfully=
 build an image using your uhd_image_builder command (without the -g option=
) for both UHD 3.15 and UHD 3.14.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Jonathon<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, May 20, 2020 at 8:35 PM Hodges, Jeff via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt">
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
<p class=3D"MsoNormal"><i>=C2=A0</i><u></u><u></u></p>
<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><i>
<hr width=3D"100%" size=3D"5" align=3D"center">
</i></div>
<p style=3D"line-height:9pt"><i><span style=3D"font-size:8pt">The informati=
on contained in this message, and any attachments, may contain privileged a=
nd/or proprietary information that is intended solely for the person or ent=
ity to which it is addressed. Moreover,
 it may contain export restricted technical data controlled by Export Admin=
istration Regulations (EAR) or the International Traffic in Arms Regulation=
s (ITAR). Any review, retransmission, dissemination, or re-export to foreig=
n or domestic entities by anyone
 other than the intended recipient in accordance with EAR and/or ITAR regul=
ations is prohibited.</span></i><u></u><u></u></p>
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
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><div><div dir=3D"ltr"><b>Mitchell J Grabner, PhD<br></b><div><div><i>Memb=
er, IEEE Communications Society</i></div><div><i>IEEE-HKN Lambda Zeta Chapt=
er<br></i></div><div><i>------------------------------------------------</i=
></div><a href=3D"http://www.linkedin.com/pub/mitch-grabner/43/23b/bb5" tar=
get=3D"_blank">My Linkedin</a></div></div></div></div></div></div></div></d=
iv></div></div>

--000000000000af510505a71f58fb--


--===============7325142574699883659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7325142574699883659==--

