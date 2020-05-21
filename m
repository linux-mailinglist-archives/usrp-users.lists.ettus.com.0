Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F03CF1DD206
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 17:38:12 +0200 (CEST)
Received: from [::1] (port=55652 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbnGt-0001d4-Ud; Thu, 21 May 2020 11:38:11 -0400
Received: from smtp125.iad3a.emailsrvr.com ([173.203.187.125]:58519)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jasonr@3db-labs.com>) id 1jbnGp-0001H6-JK
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 11:38:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=3db-labs.com;
 s=20191115-upmk6iau; t=1590075447;
 bh=R+Dprnvr05T88Mizt2iAUN7Mpxt7+4SX5wnMJtwnNOk=;
 h=Subject:To:From:Date:From;
 b=bqpgAlXdLxwmJyAD9Uh5pSeQUajiUWRffPlte2PMZZmfDy9gt8r7OeDqdJ9uA/Ogo
 r33gxOUagujZ2YwxKlotVVjiLukrWI5GKWtPoOUysv1S2koEiyPcxyysF5QnSutItE
 wexHVKH2FsKKCFpJW7WBmnQb7MVcn4UVYYY5XPBg=
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp24.relay.iad3a.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id B919A24B82
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 11:37:26 -0400 (EDT)
X-Sender-Id: jasonr@3db-labs.com
Received: from [192.168.101.19] (rrcs-74-142-203-226.central.biz.rr.com
 [74.142.203.226]) (using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
 by 0.0.0.0:587 (trex/5.7.12); Thu, 21 May 2020 11:37:27 -0400
To: usrp-users@lists.ettus.com
References: <10F7328F6AD1354BA6DD787687B66B9001A97A1181@Maui.in.dynetics.com>
 <11a4d205a47a408eb1c78f5e89c6b27b@gtri.gatech.edu>
Message-ID: <c88d3770-a97e-5aee-cf36-689dcd0c5693@3db-labs.com>
Date: Thu, 21 May 2020 11:37:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <11a4d205a47a408eb1c78f5e89c6b27b@gtri.gatech.edu>
Content-Language: en-US
X-Classification-ID: c75be3d7-c132-435b-bd0b-6105894a1234-1-1
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
From: Jason Roehm via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Roehm <jasonr@3db-labs.com>
Content-Type: multipart/mixed; boundary="===============3829740910664805605=="
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

This is a multi-part message in MIME format.
--===============3829740910664805605==
Content-Type: multipart/alternative;
 boundary="------------5C942D593057E874EB419C8A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5C942D593057E874EB419C8A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I believe he means the UHD-3.15.LTS *branch*, not tag. See here:

https://github.com/EttusResearch/uhd/tree/UHD-3.15.LTS

Jason

On 5/21/20 11:34 AM, Hodges, Jeff via USRP-users wrote:
>
> I apologize for my ignorance, which of these is the LTS tag?
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
> Jeff
>
> *From:*Carmichael, Ryan <Ryan.Carmichael@dynetics.com>
> *Sent:* Thursday, May 21, 2020 11:29 AM
> *To:* usrp-users@lists.ettus.com
> *Cc:* Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
> *Subject:* Re: [USRP-users] rfnoc build standard image x310 failing
>
> I think you want to be using the UHD-3.15.LTS tag.
>
> -Ryan
>
> *From:*USRP-users <usrp-users-bounces@lists.ettus.com 
> <mailto:usrp-users-bounces@lists.ettus.com>> *On Behalf Of *Hodges, 
> Jeff via USRP-users
> *Sent:* Thursday, May 21, 2020 10:25 AM
> *To:* Jonathon Pendlum <jonathon.pendlum@ettus.com 
> <mailto:jonathon.pendlum@ettus.com>>
> *Cc:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>; 
> Prado, Ron <Ron.Prado@gtri.gatech.edu <mailto:Ron.Prado@gtri.gatech.edu>>
> *Subject:* [EXTERNAL] Re: [USRP-users] rfnoc build standard image x310 
> failing
>
> Maybe there is a mistake in they way I am pulling the repository?
>
> V3.14 with 2017.4 vivado failed:
>
> cd ~/rfnoc/src
>
>    $ git clone --recursive https://github.com/EttusResearch/uhd
>
> $ cd uhd
>
> $ git checkout v3.14.1.1
>
> $ git submodule update --init --recursive
>
> V3.15 with 2018.3 vivado failed:
>
> cd ~/rfnoc/src
>     $ git clone --recursivehttps://github.com/EttusResearch/uhd
>     $ cd uhd
>     $ git checkout v3.15.0.0
>     $ git submodule update --init --recursive
>
> Am I pulling the wrong branches?
>
> Looking at uhd_image_builder.py in v3.15.0.0:
>
> 44 wire ce_clk = radio_clk;
>
> 45 wire ce_rst = radio_rst;
>
> Jeff
>
> *From:*Jonathon Pendlum <jonathon.pendlum@ettus.com 
> <mailto:jonathon.pendlum@ettus.com>>
> *Sent:* Thursday, May 21, 2020 2:01 AM
> *To:* Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu 
> <mailto:Jeff.Hodges@gtri.gatech.edu>>
> *Cc:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>; 
> Prado, Ron <Ron.Prado@gtri.gatech.edu <mailto:Ron.Prado@gtri.gatech.edu>>
> *Subject:* Re: [USRP-users] rfnoc build standard image x310 failing
>
> Hi Jeff,
>
> For UHD 3.15, I believe that issue has been fixed. Check out the 
> UHD-3.15.LTS branch and let me know if you still have an issue building.
>
> For UHD 3.14, check out the UHD-3.14 branch.
>
> Using the branches above, I was able to successfully build an image 
> using your uhd_image_builder command (without the -g option) for both 
> UHD 3.15 and UHD 3.14.
>
> Jonathon
>
> On Wed, May 20, 2020 at 8:35 PM Hodges, Jeff via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Can someone please tell me what version of uhd and rfnoc are
>     compatible for building an image on Ubuntu 18.04?
>
>     I cannot get any of the UHD releases to properly build a standard
>     rfnoc image.
>
>     sudo ./uhd_image_builder.py fft ddc duc -g -t X310_RFNOC_HG -c -d
>     X310 --fill-with-fifos
>
>     I installed vivado 2018.3 with uhd 3.15.0.0 and get the error:
>
>     ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
>     bus_clk_gen/inst/CLK_OUT4 has multiple drivers:
>     radio_clk_gen/inst/clkout1_buf/O, and bus_clk_gen/inst/clkout4_buf/O.
>
>     ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
>     radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9
>     has multiple drivers:
>     radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q,
>     and
>     ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q.
>
>     I installed vivado 2017.4 with uhd 3.14.1.1 and get this error:
>
>     BUILDER: Releasing IP location:
>     /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/aurora_64b66b_pcs_pma
>
>     Using parser configuration from:
>     /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/dev_config.json
>
>     [00:00:00] Executing command: vivado -mode batch -source
>     /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build_x300.tcl
>     -log build.log -journal x300.jou
>
>     CRITICAL WARNING: [filemgmt 20-1440] File
>     '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v'
>     already exists in the project as a part of sub-design file
>     '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit.xci'.
>     Explicitly adding the file outside the scope of the sub-design can
>     lead to unintended behaviors and is not recommended.
>
>     [00:00:29] Current task: Initialization +++ Current Phase: Starting
>
>     [00:00:29] Current task: Initialization +++ Current Phase: Finished
>
>     [00:00:29] Executing Tcl: synth_design -top x300 -part
>     xc7k410tffg900-2 -verilog_define BUILD_1G=1 -verilog_define
>     BUILD_10G=1 -verilog_define SFP0_1GBE=1 -verilog_define
>     SFP1_10GBE=1 -verilog_define RFNOC=1 -verilog_define X310=1
>     -verilog_define GIT_HASH=32'hfbb85bdf
>
>     [00:00:29] Starting Synthesis Command
>
>     ERROR: [Synth 8-439] module 'ddr3_32bit' not found
>     [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:1191]
>
>     ERROR: [Synth 8-285] failed synthesizing module 'x300'
>     [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:20]
>
>     ERROR: [Common 17-69] Command failed: Synthesis failed - please
>     see the console or run log file for details
>
>     [00:08:36] Current task: Synthesis +++ Current Phase: Starting
>
>     [00:08:36] Current task: Synthesis +++ Current Phase: Finished
>
>     [00:08:36] Process terminated. Status: Failure
>
>     Any advice is greatly appreciated.
>
>     Thanks,
>
>     Jeff
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> //
>
> /
> ------------------------------------------------------------------------
> /
>
> /The information contained in this message, and any attachments, may 
> contain privileged and/or proprietary information that is intended 
> solely for the person or entity to which it is addressed. Moreover, it 
> may contain export restricted technical data controlled by Export 
> Administration Regulations (EAR) or the International Traffic in Arms 
> Regulations (ITAR). Any review, retransmission, dissemination, or 
> re-export to foreign or domestic entities by anyone other than the 
> intended recipient in accordance with EAR and/or ITAR regulations is 
> prohibited./
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------5C942D593057E874EB419C8A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>I believe he means the UHD-3.15.LTS *branch*, not tag. See here:</p>
    <p><a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/uhd/tree/UHD-3.15.LTS">https://github.com/EttusResearch/uhd/tree/UHD-3.15.LTS</a></p>
    <p>Jason<br>
    </p>
    <div class="moz-cite-prefix">On 5/21/20 11:34 AM, Hodges, Jeff via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:11a4d205a47a408eb1c78f5e89c6b27b@gtri.gatech.edu">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle25
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1755662119;
	mso-list-type:hybrid;
	mso-list-template-ids:1771444560 -1498101646 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">I
            apologize for my ignorance, which of these is the LTS tag?<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">git
            tag -l<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_007_002_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_007_003_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_008_000_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_008_002_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_008_003_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_008_004_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_008_005_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_009_000_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_009_002_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_009_003_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_009_004_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_009_005_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_009_006_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_009_007_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_010_001_000_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_010_001_000_rc2<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_010_001_001_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_010_002_000_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_010_003_000_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_010_003_000_rc2<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_011_000_000_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">003_011_000_001_rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">grcon_2016<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">n310_release-0.1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_000_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_000_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_001_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_001_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_001_002<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_002_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_002_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_002_002<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_002_003<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_002_004<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_003_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_003_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_003_002<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_004_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_004_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_004_002<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_004_003<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_004_004<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_004_005<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_005_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_005_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_005_002<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_005_003<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_005_004<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_005_005<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_006_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_006_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_006_002<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_007_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_007_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_007_002<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_007_003<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_008_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_008_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_008_002<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_008_003<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_008_003-1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_008_004<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_008_005<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_009_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_009_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_009_002<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_009_003<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_009_004<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_009_005<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_009_006<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_009_007<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_010_000_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_010_001_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_010_001_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_010_002_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_010_003_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_011_000_000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">release_003_011_000_001<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.11.0.0<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.11.0.1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.11.0.1-20180419<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.11.0.1-rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.11.1.0<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.11.1.0-rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.12.0.0<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.12.0.0-rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.12.0.1-rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.13.0.0<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.13.0.0-rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.13.0.1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.13.0.2<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.13.0.3-rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.13.1.0<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.13.1.0-rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.13.1.0-rc2<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.0.0<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.0.0-a0-20181220<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.0.0-a1-20181220<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.0.0-rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.0.0-rc2<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.0.0-rc3<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.1.0<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.1.0-rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.1.1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.1.1-rc1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.14.1.1.L<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.15.0.0<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.15.0.0-e310_prerelease<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.15.0.0-rc2<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">v3.15.0.0-rc3<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Jeff<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
                  style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">
                Carmichael, Ryan <a class="moz-txt-link-rfc2396E" href="mailto:Ryan.Carmichael@dynetics.com">&lt;Ryan.Carmichael@dynetics.com&gt;</a>
                <br>
                <b>Sent:</b> Thursday, May 21, 2020 11:29 AM<br>
                <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Cc:</b> Hodges, Jeff
                <a class="moz-txt-link-rfc2396E" href="mailto:Jeff.Hodges@gtri.gatech.edu">&lt;Jeff.Hodges@gtri.gatech.edu&gt;</a><br>
                <b>Subject:</b> Re: [USRP-users] rfnoc build standard
                image x310 failing<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">I
            think you want to be using the UHD-3.15.LTS tag.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo2"><!--[if !supportLists]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span
              style="mso-list:Ignore">-<span style="font:7.0pt
                &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Ryan<o:p></o:p></span></p>
        <p class="MsoListParagraph"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
                  style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">
                USRP-users &lt;<a
                  href="mailto:usrp-users-bounces@lists.ettus.com"
                  moz-do-not-send="true">usrp-users-bounces@lists.ettus.com</a>&gt;
                <b>On Behalf Of </b>Hodges, Jeff via USRP-users<br>
                <b>Sent:</b> Thursday, May 21, 2020 10:25 AM<br>
                <b>To:</b> Jonathon Pendlum &lt;<a
                  href="mailto:jonathon.pendlum@ettus.com"
                  moz-do-not-send="true">jonathon.pendlum@ettus.com</a>&gt;<br>
                <b>Cc:</b> <a href="mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send="true">usrp-users@lists.ettus.com</a>;
                Prado, Ron &lt;<a
                  href="mailto:Ron.Prado@gtri.gatech.edu"
                  moz-do-not-send="true">Ron.Prado@gtri.gatech.edu</a>&gt;<br>
                <b>Subject:</b> [EXTERNAL] Re: [USRP-users] rfnoc build
                standard image x310 failing<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Maybe
            there is a mistake in they way I am pulling the repository?<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">V3.14
            with 2017.4 vivado failed:<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;font-family:&quot;Courier New&quot;">cd
            ~/rfnoc/src   
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;font-family:&quot;Courier New&quot;">   $
            git clone --recursive
            <a href="https://github.com/EttusResearch/uhd"
              moz-do-not-send="true">https://github.com/EttusResearch/uhd</a><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;font-family:&quot;Courier New&quot;">  
            $ cd uhd<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;font-family:&quot;Courier New&quot;">  
            $ git checkout v3.14.1.1<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;font-family:&quot;Courier New&quot;">  
            $ git submodule update --init --recursive<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">V3.15
            with 2018.3 vivado failed:<o:p></o:p></span></p>
        <pre>cd ~/rfnoc/src    <o:p></o:p></pre>
        <pre>   $ git clone --recursive <a href="https://github.com/EttusResearch/uhd" moz-do-not-send="true">https://github.com/EttusResearch/uhd</a><o:p></o:p></pre>
        <pre>   $ cd uhd<o:p></o:p></pre>
        <pre>   $ git checkout v3.15.0.0<o:p></o:p></pre>
        <pre>   $ git submodule update --init --recursive<o:p></o:p></pre>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Am
            I pulling the wrong branches?<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Looking
            at uhd_image_builder.py in v3.15.0.0:<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">44
            wire ce_clk = radio_clk;<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">45
            wire ce_rst = radio_rst;<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Jeff<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><b><span
              style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">
            Jonathon Pendlum &lt;<a
              href="mailto:jonathon.pendlum@ettus.com"
              moz-do-not-send="true">jonathon.pendlum@ettus.com</a>&gt;
            <br>
            <b>Sent:</b> Thursday, May 21, 2020 2:01 AM<br>
            <b>To:</b> Hodges, Jeff &lt;<a
              href="mailto:Jeff.Hodges@gtri.gatech.edu"
              moz-do-not-send="true">Jeff.Hodges@gtri.gatech.edu</a>&gt;<br>
            <b>Cc:</b> <a href="mailto:usrp-users@lists.ettus.com"
              moz-do-not-send="true">usrp-users@lists.ettus.com</a>;
            Prado, Ron &lt;<a href="mailto:Ron.Prado@gtri.gatech.edu"
              moz-do-not-send="true">Ron.Prado@gtri.gatech.edu</a>&gt;<br>
            <b>Subject:</b> Re: [USRP-users] rfnoc build standard image
            x310 failing<o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">Hi Jeff,<o:p></o:p></p>
          <div>
            <p class="MsoNormal"><o:p> </o:p></p>
          </div>
          <div>
            <p class="MsoNormal">For UHD 3.15, I believe that issue has
              been fixed. Check out the UHD-3.15.LTS branch and let me
              know if you still have an issue building.<o:p></o:p></p>
          </div>
          <div>
            <p class="MsoNormal"><o:p> </o:p></p>
          </div>
          <div>
            <p class="MsoNormal">For UHD 3.14, check out the UHD-3.14
              branch.<o:p></o:p></p>
          </div>
          <div>
            <p class="MsoNormal"><o:p> </o:p></p>
          </div>
          <div>
            <p class="MsoNormal">Using the branches above, I was able to
              successfully build an image using your uhd_image_builder
              command (without the -g option) for both UHD 3.15 and UHD
              3.14.<o:p></o:p></p>
          </div>
          <div>
            <p class="MsoNormal"><o:p> </o:p></p>
          </div>
          <div>
            <p class="MsoNormal">Jonathon<o:p></o:p></p>
          </div>
          <div>
            <p class="MsoNormal"><o:p> </o:p></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <div>
            <p class="MsoNormal">On Wed, May 20, 2020 at 8:35 PM Hodges,
              Jeff via USRP-users &lt;<a
                href="mailto:usrp-users@lists.ettus.com"
                moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
              wrote:<o:p></o:p></p>
          </div>
          <blockquote style="border:none;border-left:solid #CCCCCC
            1.0pt;padding:0in 0in 0in
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5.0pt">
            <div>
              <div>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Can
                  someone please tell me what version of uhd and rfnoc
                  are compatible for building an image on Ubuntu 18.04?<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I
                  cannot get any of the UHD releases to properly build a
                  standard rfnoc image.<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">sudo
                  ./uhd_image_builder.py fft ddc duc -g -t X310_RFNOC_HG
                  -c -d X310 --fill-with-fifos<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I
                  installed vivado 2018.3 with uhd 3.15.0.0 and get the
                  error:<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">ERROR:
                  [DRC MDRV-1] Multiple Driver Nets: Net
                  bus_clk_gen/inst/CLK_OUT4 has multiple drivers:
                  radio_clk_gen/inst/clkout1_buf/O, and
                  bus_clk_gen/inst/clkout4_buf/O.<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">ERROR:
                  [DRC MDRV-1] Multiple Driver Nets: Net
                  radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9
                  has multiple drivers:
radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q,
                  and
ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q.<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I
                  installed vivado 2017.4 with uhd 3.14.1.1 and get this
                  error:<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">BUILDER:
                  Releasing IP location:
/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/aurora_64b66b_pcs_pma<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Using
                  parser configuration from:
                  /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/dev_config.json<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">[00:00:00]
                  Executing command: vivado -mode batch -source
                  /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build_x300.tcl
                  -log build.log -journal x300.jou<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">CRITICAL
                  WARNING: [filemgmt 20-1440] File
'/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v'
                  already exists in the project as a part of sub-design
                  file
'/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit.xci'.
                  Explicitly adding the file outside the scope of the
                  sub-design can lead to unintended behaviors and is not
                  recommended.<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">[00:00:29]
                  Current task: Initialization +++ Current Phase:
                  Starting<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">[00:00:29]
                  Current task: Initialization +++ Current Phase:
                  Finished<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">[00:00:29]
                  Executing Tcl: synth_design -top x300 -part
                  xc7k410tffg900-2 -verilog_define BUILD_1G=1
                  -verilog_define BUILD_10G=1 -verilog_define
                  SFP0_1GBE=1 -verilog_define SFP1_10GBE=1
                  -verilog_define RFNOC=1 -verilog_define X310=1
                  -verilog_define GIT_HASH=32'hfbb85bdf<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">[00:00:29]
                  Starting Synthesis Command<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">ERROR:
                  [Synth 8-439] module 'ddr3_32bit' not found
                  [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:1191]<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">ERROR:
                  [Synth 8-285] failed synthesizing module 'x300'
                  [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:20]<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">ERROR:
                  [Common 17-69] Command failed: Synthesis failed -
                  please see the console or run log file for details<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">[00:08:36]
                  Current task: Synthesis +++ Current Phase: Starting<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">[00:08:36]
                  Current task: Synthesis +++ Current Phase: Finished<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">[00:08:36]
                  Process terminated. Status: Failure<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Any
                  advice is greatly appreciated.<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Thanks,<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Jeff<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
              </div>
            </div>
            <p class="MsoNormal">_______________________________________________<br>
              USRP-users mailing list<br>
              <a href="mailto:USRP-users@lists.ettus.com"
                target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
              <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></p>
          </blockquote>
        </div>
        <p class="MsoNormal"><i><o:p> </o:p></i></p>
        <div class="MsoNormal" style="text-align:center" align="center"><i>
            <hr width="100%" size="5" align="center">
          </i></div>
        <p style="line-height:9.0pt;font-style:monospace"><i><span
              style="font-size:8.0pt">The information contained in this
              message, and any attachments, may contain privileged
              and/or proprietary information that is intended solely for
              the person or entity to which it is addressed. Moreover,
              it may contain export restricted technical data controlled
              by Export Administration Regulations (EAR) or the
              International Traffic in Arms Regulations (ITAR). Any
              review, retransmission, dissemination, or re-export to
              foreign or domestic entities by anyone other than the
              intended recipient in accordance with EAR and/or ITAR
              regulations is prohibited.<o:p></o:p></span></i></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------5C942D593057E874EB419C8A--


--===============3829740910664805605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3829740910664805605==--

