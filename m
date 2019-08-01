Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD407DA3A
	for <lists+usrp-users@lfdr.de>; Thu,  1 Aug 2019 13:26:32 +0200 (CEST)
Received: from [::1] (port=49820 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ht9E5-0007wo-Ct; Thu, 01 Aug 2019 07:26:29 -0400
Received: from mail-lj1-f176.google.com ([209.85.208.176]:33672)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1ht9E1-0007kE-Ks
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 07:26:25 -0400
Received: by mail-lj1-f176.google.com with SMTP id h10so69009266ljg.0
 for <usrp-users@lists.ettus.com>; Thu, 01 Aug 2019 04:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ylVqbIwWO/thC0oSRaxl/11LlgRKfvc9DDSBNl+VUGU=;
 b=CMJR9JydTTgIw0IvI1LuGBTEOg9kIy73n1a0LlwgTYdNK08jS1fbGzGQGWthcxivgF
 2Sv03FJ3O0vdjoymgBdpCIkUdQ7MaHZTZ5+lTfSGoJoRfh9dQV/kn0u5AZOs4XU86Bl2
 P2hjGkXSXeD3LagYpcbJG3V5if90NCKwHokeihqDznU3UK/GtaU+T+caZtjDfuIVS1x+
 0vb7WYERNBD03LU0G/V5SenXNAKjNoQggB4VFNQynutpYZDxfFLFHvgRdmW68jTb+WPp
 7k+kdTVn1ocbrwwsaccKm51Ybz4j8NVyZqYN4JtxuPnc3de1Q8MUjnoKiLp+/YG1vjNK
 IYGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ylVqbIwWO/thC0oSRaxl/11LlgRKfvc9DDSBNl+VUGU=;
 b=JgVEGt8E+9w1u7qRDBx9E9OiydCSLFD535csqkx13aTnJ3TiGRmJ7tXe3XnHfvrhS6
 7QQIOg3zy6cF+r9ypeHciEngTufliQqBiqq1ErT34a6WdSAB4X2PAusQ/S3W8MNOJQqE
 LqbGOt1u+Rte0Z55TeO7TqYpq7yqRj9+539TFdGzpdpkeTtALLYMSmDJMA0NYnX53XrH
 opmjyysUPHXqn21jqVqX+JfcS6m+LxssLOAYNum5mLzWxOMA5jsZdkXD+kUoiuGsuv66
 4J8YUHuDRCSDLmzBSepX3zWoMVUQ1fX7kiNuHkzsSu5fjwetHYPuCQMJGnd8TpqU+zzL
 wBZQ==
X-Gm-Message-State: APjAAAVFddlAJmMp7nzkGQ/mhYg4VBXQufndzh3sa89/9/8Bcxmg/pnu
 cbfoWSR7apVZDQYKoe726jG3I3eONj3zxgHht4mlnI+m
X-Google-Smtp-Source: APXvYqwbkdVDHfGlSHTqQudREDXxvMXU3K/9eU4Grh/VG8QRzJXgpFWGbwUe6thtwRDFJ7W4JOE9ySg35QOfLuMTBpc=
X-Received: by 2002:a2e:730d:: with SMTP id o13mr47660479ljc.81.1564658744347; 
 Thu, 01 Aug 2019 04:25:44 -0700 (PDT)
MIME-Version: 1.0
References: <HK0PR01MB2835299393DCA6F18EB1B726F3DC0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
In-Reply-To: <HK0PR01MB2835299393DCA6F18EB1B726F3DC0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
Date: Thu, 1 Aug 2019 20:25:08 +0900
Message-ID: <CAL7q81tqdPZkBqB9OidjaUZz34nUm7kAukeoZPo6ERCRpL-mNw@mail.gmail.com>
To: =?UTF-8?B?5rGkIOmjng==?= <retina999@hotmail.com>
Subject: Re: [USRP-users] N310 RFNOC tutorial block "gain" not found in
 synthesis
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1184068259353000034=="
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

--===============1184068259353000034==
Content-Type: multipart/alternative; boundary="000000000000a6e434058f0c8038"

--000000000000a6e434058f0c8038
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Could you try generating the image with uhd_image_builder_gui.py and see if
you get the same error?

Jonathon

On Wed, Jul 31, 2019 at 8:29 AM =E6=B1=A4 =E9=A3=9E via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I am studying the application note "Getting Started with RFNoC Developmen=
t".
> I was able to complete the simulation of custom noc_block_gain, but faile=
d in the final stage of the synthesis.
> The custom block "gain" cannot be found.
> I use the following command,  "./uhd_image_builder.py gain ddc fft -I ~/r=
fnoc/src/rfnoc-mesh/ -d n310 -t N310_RFNOC_HG -m 6 --fill-with-fifos -c".
> I did specify the OOT directory during image building. I am certain I hav=
e made all settings correct.
> So far I have no clue what causes this. How to solve this problem?
>
>
> PS, I use uhd 3.14.0.0, and post of imaging buiding,
>
> ****** Vivado v2018.3_AR71898 (64-bit)
>   **** SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
>   **** IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
>     ** Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
>
> source run_ippack.tcl -notrace
> INFO: [IP_Flow 19-234] Refreshing IP repositories
> INFO: [IP_Flow 19-1704] No user IP repositories specified
> INFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/opt/Xilinx/Vivado/2=
018.3/data/ip'.
> INFO: [Common 17-206] Exiting Vivado at Tue Jul 30 20:41:13 2019...
> INFO: [HLS 200-112] Total elapsed time: 17.38 seconds; peak allocated mem=
ory: 66.934 MB.
> INFO: [Common 17-206] Exiting vivado_hls at Tue Jul 30 20:41:13 2019...
> BUILDER: Releasing IP location: /home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3=
xx/build-ip/xc7z100ffg900-2/addsub_hls
> Using parser configuration from: /home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n=
3xx/dev_config.json*[00:00:00] Executing command: vivado -mode batch -sourc=
e /home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/build_n3xx.tcl -log build.log=
 -journal n3xx.jou*CRITICAL WARNING: [filemgmt 20-1440] File '/home/wtt/rfn=
oc/src/uhd-fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/ddr3_32bit/ddr3_32b=
it/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v' already exists in t=
he project as a part of sub-design file '/home/wtt/rfnoc/src/uhd-fpga/usrp3=
/top/n3xx/build-ip/xc7z100ffg900-2/ddr3_32bit/ddr3_32bit.xci'. Explicitly a=
dding the file outside the scope of the sub-design can lead to unintended b=
ehaviors and is not recommended.
> [00:00:14] Current task: Initialization +++ Current Phase: Starting
> [00:00:14] Current task: Initialization +++ Current Phase: Finished*[00:0=
0:14] Executing Tcl: synth_design -top n3xx -part xc7z100ffg900-2 -verilog_=
define SFP0_1GBE=3D1 -verilog_define SFP1_10GBE=3D1 -verilog_define USE_REP=
LAY=3D1 -verilog_define BUILD_1G=3D1 -verilog_define BUILD_10G=3D1 -verilog=
_define RFNOC=3D1 -verilog_define N310=3D1 -verilog_define GIT_HASH=3D32'hf=
b615a5a*[00:00:14] Starting Synthesis Command*ERROR: [Synth 8-439] module '=
noc_block_gain' not found [/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/rfno=
c_ce_auto_inst_n310.v:22]**ERROR: [Synth 8-6156] failed synthesizing module=
 'n3xx_core' [/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/n3xx_core.v:17]**=
ERROR: [Synth 8-6156] failed synthesizing module 'n3xx' [/home/wtt/rfnoc/sr=
c/uhd-fpga/usrp3/top/n3xx/dboards/mg/n3xx.v:13]**ERROR: [Common 17-69] Comm=
and failed: Synthesis failed - please see the console or run log file for d=
etails*
> [00:03:48] Current task: Synthesis +++ Current Phase: Starting
> [00:03:49] Current task: Synthesis +++ Current Phase: Finished*[00:03:49]=
 Process terminated. Status: Failure*
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> Warnings:           407
> Critical Warnings:  1
> Errors:             4
>
> Makefile.n3xx.inc:149: recipe for target 'bin' failed
> make[1]: *** [bin] Error 1
> make[1]: Leaving directory '/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx'
> Makefile:133: recipe for target 'N310_RFNOC_HG' failed
> make: *** [N310_RFNOC_HG] Error 2
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a6e434058f0c8038
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Could you try generating the image =
with <span style=3D"white-space:pre-wrap">uhd_image_builder_gui.py and see =
if you get the same error?</span></div><div><span style=3D"white-space:pre-=
wrap"><br></span></div><div><span style=3D"white-space:pre-wrap">Jonathon</=
span></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Jul 31, 2019 at 8:29 AM =E6=B1=A4 =E9=A3=9E via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">



<div bgcolor=3D"#FFFFFF">
<pre>Hi all,

I am studying the application note &quot;Getting Started with RFNoC Develop=
ment&quot;.
I was able to complete the simulation of custom noc_block_gain, but failed =
in the final stage of the synthesis.
The custom block &quot;gain&quot; cannot be found.=20
I use the following command,  &quot;./uhd_image_builder.py gain ddc fft -I =
~/rfnoc/src/rfnoc-mesh/ -d n310 -t N310_RFNOC_HG -m 6 --fill-with-fifos -c&=
quot;.
I did specify the OOT directory during image building. I am certain I have =
made all settings correct.=20
So far I have no clue what causes this. How to solve this problem?


PS, I use uhd 3.14.0.0, and post of imaging buiding,

****** Vivado v2018.3_AR71898 (64-bit)
  **** SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
  **** IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
    ** Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

source run_ippack.tcl -notrace
INFO: [IP_Flow 19-234] Refreshing IP repositories
INFO: [IP_Flow 19-1704] No user IP repositories specified
INFO: [IP_Flow 19-2313] Loaded Vivado IP repository &#39;/opt/Xilinx/Vivado=
/2018.3/data/ip&#39;.
INFO: [Common 17-206] Exiting Vivado at Tue Jul 30 20:41:13 2019...
INFO: [HLS 200-112] Total elapsed time: 17.38 seconds; peak allocated memor=
y: 66.934 MB.
INFO: [Common 17-206] Exiting vivado_hls at Tue Jul 30 20:41:13 2019...
BUILDER: Releasing IP location: /home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx=
/build-ip/xc7z100ffg900-2/addsub_hls
Using parser configuration from: /home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3x=
x/dev_config.json
<font color=3D"#729FCF"><b>[00:00:00] Executing command: vivado -mode batch=
 -source /home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/build_n3xx.tcl -log bu=
ild.log -journal n3xx.jou</b></font>
<font color=3D"#C4A000">CRITICAL WARNING: [filemgmt 20-1440] File &#39;/hom=
e/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/ddr3_32bit=
/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v&#39; alread=
y exists in the project as a part of sub-design file &#39;/home/wtt/rfnoc/s=
rc/uhd-fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/ddr3_32bit/ddr3_32bit.x=
ci&#39;. Explicitly adding the file outside the scope of the sub-design can=
 lead to unintended behaviors and is not recommended.</font>
[00:00:14] Current task: Initialization +++ Current Phase: Starting
[00:00:14] Current task: Initialization +++ Current Phase: Finished
<font color=3D"#729FCF"><b>[00:00:14] Executing Tcl: synth_design -top n3xx=
 -part xc7z100ffg900-2 -verilog_define SFP0_1GBE=3D1 -verilog_define SFP1_1=
0GBE=3D1 -verilog_define USE_REPLAY=3D1 -verilog_define BUILD_1G=3D1 -veril=
og_define BUILD_10G=3D1 -verilog_define RFNOC=3D1 -verilog_define N310=3D1 =
-verilog_define GIT_HASH=3D32&#39;hfb615a5a</b></font>
<font color=3D"#4E9A06">[00:00:14] Starting Synthesis Command</font>
<font color=3D"#EF2929"><b>ERROR: [Synth 8-439] module &#39;noc_block_gain&=
#39; not found [/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/rfnoc_ce_auto_i=
nst_n310.v:22]</b></font>
<font color=3D"#EF2929"><b>ERROR: [Synth 8-6156] failed synthesizing module=
 &#39;n3xx_core&#39; [/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/n3xx_core=
.v:17]</b></font>
<font color=3D"#EF2929"><b>ERROR: [Synth 8-6156] failed synthesizing module=
 &#39;n3xx&#39; [/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx/dboards/mg/n3x=
x.v:13]</b></font>
<font color=3D"#EF2929"><b>ERROR: [Common 17-69] Command failed: Synthesis =
failed - please see the console or run log file for details</b></font>
[00:03:48] Current task: Synthesis +++ Current Phase: Starting
[00:03:49] Current task: Synthesis +++ Current Phase: Finished
<font color=3D"#EF2929"><b>[00:03:49] Process terminated. Status: Failure</=
b></font>

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Warnings:           407
Critical Warnings:  1
Errors:             4

Makefile.n3xx.inc:149: recipe for target &#39;bin&#39; failed
make[1]: *** [bin] Error 1
make[1]: Leaving directory &#39;/home/wtt/rfnoc/src/uhd-fpga/usrp3/top/n3xx=
&#39;
Makefile:133: recipe for target &#39;N310_RFNOC_HG&#39; failed
make: *** [N310_RFNOC_HG] Error 2
</pre>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a6e434058f0c8038--


--===============1184068259353000034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1184068259353000034==--

