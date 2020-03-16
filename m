Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F4018738B
	for <lists+usrp-users@lfdr.de>; Mon, 16 Mar 2020 20:41:48 +0100 (CET)
Received: from [::1] (port=39558 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jDvcR-0002Xs-Sm; Mon, 16 Mar 2020 15:41:47 -0400
Received: from mail-il1-f173.google.com ([209.85.166.173]:43784)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bistromath@gmail.com>)
 id 1jDvcO-0002Qd-4R
 for usrp-users@lists.ettus.com; Mon, 16 Mar 2020 15:41:44 -0400
Received: by mail-il1-f173.google.com with SMTP id d14so17219668ilq.10
 for <usrp-users@lists.ettus.com>; Mon, 16 Mar 2020 12:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=98nYziD+mX+4pVJCdAuCKWGY9uVwAVLwI1CxQ1MLVmc=;
 b=rdGCVqRH6osMErPjulpsv7D/ZgiL2VJvQUMFVrB7GqDYvagOyyABSGFerbLnKGTnO1
 mQqusFRw3hVbbtEEicGC2jv2oiUPWZtI0/OCwuRdj/ogN7XaU3ezvT4y680bMl+6K0Qw
 y8CR7mrYV5bH8dSFYxzFJDEokquGn1c0leh+6b7DRiSQVICbnqsVd/z9T2TesMtGq7WB
 La8jInbY/+kYP4qqK7USyyatqACFpVLPkVlAPtsRPi1ARfXJN6bU3oSlJ5s1hxFDwXMx
 gQjCWibbp+thfC0yT8WsDplsddoU9/kbOHx08+TaHNSe7KcT9+wd0zhwHnFjEN1XbwXk
 ciaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=98nYziD+mX+4pVJCdAuCKWGY9uVwAVLwI1CxQ1MLVmc=;
 b=qGdJ5dfCcrKL8aVQqCxSEOWlNZB7orSkdXr9XksBU6e4JeautnxkjcaF3cLdtZLdbv
 aqM1UM4Xyz77R6qiHsyDYUaNYG9brPIMm/nmmz8WWv6jSMsluXEOBim/drffZOlidJmt
 8Y40+8FFLBgUt1FCdOYMJjSIxfndi1TRJXwmgpLozFGxRZow5dhs3w5ietRdlGD28WMc
 NINsonoyydKDfKyyiM842lQ+ZVa6ZkHv0b+5ak9irEoZ8l7XQUJhWJ/J0Ux5yBjdUICq
 6uVeI5Cs9Lo4SLJAexiEyIVvZdKz2LlP0WAWKHTCP4T1HsvoG8nWO5XXTLZlmqa8mInr
 mcCg==
X-Gm-Message-State: ANhLgQ31CBtDSZDe/lAjihEQQ2ma3BbscABoH2agOls/g95MPJLKi31R
 8EYKlsGSpKr4d4mqf/cTuYVKa2JQ4xcTIjvVVgM=
X-Google-Smtp-Source: ADFU+vvij4UpXYoIqto3PeATxIgYRR6NcjsAbiI6zG4++y5d8HvHgyahr+ANSGVNBedOQViSrJhnv+KRjo4FhOipNxE=
X-Received: by 2002:a92:3c1c:: with SMTP id j28mr1423066ila.304.1584387663375; 
 Mon, 16 Mar 2020 12:41:03 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR19MB2668AA02795183EE8871F430A4F90@DM6PR19MB2668.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB2668AA02795183EE8871F430A4F90@DM6PR19MB2668.namprd19.prod.outlook.com>
Date: Mon, 16 Mar 2020 12:40:51 -0700
Message-ID: <CA+JMMq8t0JE9ee=d-MO0obw2gz7Zab+M1bpbkFRJnxn_BmFJxQ@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] RFNoC Build Error? Or Something Else?
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7474067699649083360=="
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

--===============7474067699649083360==
Content-Type: multipart/alternative; boundary="000000000000dcb28d05a0fdff58"

--000000000000dcb28d05a0fdff58
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You're using the wrong version of Vivado. You need to use Vivado 2017.4.

On Mon, Mar 16, 2020 at 12:38 PM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi, All.
>
> I am trying to start down the path of RFNoC development, and I am
> following the steps outlined on the following page:
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
>
> I have already ran into a problem, and I'm not quite sure where to go wit=
h
> it.  I'm not sure if I have missed a step somewhere in my installation, o=
r
> if something else is wrong.  I am hoping someone can point me in the
> correct direction.
>
> Here's what I have:
>
> $ uhd_config_info --version
> UHD 4.0.0.rfnoc-devel-702-geec24d7b
>
> $ ./uhd_image_builder.py window fft -d x310 -t X310_RFNOC_HG -m 5 --fill-=
with-fifos
> --Using the following blocks to generate image:
>     * window
>     * fft
> Adding CE instantiation file for 'X310_RFNOC_HG'
> changing temporarily working directory to /home/user/offline/src/fpga/usr=
p3/tools/scripts/../../top/x300
> Setting up a 64-bit FPGA build environment for the USRP-X3x0...
> - Vivado: Found (/tools/Xilinx/Vivado/2019.2/bin)
>
> Environment successfully initialized.
> make -f Makefile.x300.inc bin NAME=3DX310_RFNOC_HG ARCH=3Dkintex7 PART_ID=
=3Dxc7k410t/ffg900/-2 BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=
=3D1  RFNOC=3D1 X310=3D1  TOP_MODULE=3Dx300 EXTRA_DEFS=3D"BUILD_1G=3D1 BUIL=
D_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1  RFNOC=3D1 X310=3D1 "
> make[1]: Entering directory '/home/user/offline/src/fpga/usrp3/top/x300'
> BUILDER: Checking tools...
> * GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
> * Python 2.7.17
> * Vivado v2019.2.1 (64-bit)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> BUILDER: Building IP ten_gig_eth_pcs_pma
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> BUILDER: Staging IP in build directory...
> BUILDER: Reserving IP location: /home/user/offline/src/fpga/usrp3/top/x30=
0/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma
> BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...
> BUILDER: Building IP...*[00:00:00] Executing command: vivado -mode batch =
-source /home/user/offline/src/fpga/usrp3/tools/scripts/viv_generate_ip.tcl=
 -log ten_gig_eth_pcs_pma.log -nojournal*WARNING: [IP_Flow 19-2162] IP 'ten=
_gig_eth_pcs_pma' is locked:CRITICAL WARNING: [filemgmt 20-1366] Unable to =
reset target(s) for the following file is locked: /home/user/offline/src/fp=
ga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth=
_pcs_pma.xciCRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(=
s) for the following file is locked: /home/user/offline/src/fpga/usrp3/top/=
x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci
> [00:00:13] Current task: Initialization +++ Current Phase: Starting
> [00:00:13] Current task: Initialization +++ Current Phase: Finished*[00:0=
0:13] Executing Tcl: synth_design -top ten_gig_eth_pcs_pma -part xc7k410tff=
g900-2 -mode out_of_context*[00:00:13] Starting Synthesis CommandWARNING: [=
Vivado_Tcl 4-391] The following IPs are missing output products for Synthes=
is target. These output products could be required for synthesis, please ge=
nerate the output products using the generate_target or synth_ip command be=
fore running synth_design.WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pm=
a' is locked:*ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHD=
L sources specified**ERROR: [Common 17-53] User Exception: No open design. =
Please open an elaborated, synthesized or implemented design before executi=
ng this command.**ERROR: [Common 17-53] User Exception: No open design. Ple=
ase open an elaborated, synthesized or implemented design before executing =
this command.**ERROR: [Common 17-53] User Exception: No open design. Please=
 open an elaborated, synthesized or implemented design before executing thi=
s command.**ERROR: [Common 17-53] User Exception: No open design. Please op=
en an elaborated, synthesized or implemented design before executing this c=
ommand.**ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.**ERROR: [Common 17-53] User Exception: No open design. Please open an =
elaborated, synthesized or implemented design before executing this command=
.*CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/=
user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_=
pcs_pma/ten_gig_eth_pcs_pma.xml'CRITICAL WARNING: [IP_Flow 19-4739] Writing=
 uncustomized BOM file '/home/user/offline/src/fpga/usrp3/top/x300/build-ip=
/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'CRITICAL WARN=
ING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/user/offline/sr=
c/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig=
_eth_pcs_pma.xml'CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized B=
OM file '/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410tffg900=
-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file '/home/user/offline/src/fpga/usrp3/to=
p/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xm=
l'*ERROR: [Vivado 12-398] No designs are open**ERROR: [Common 17-69] Comman=
d failed: * IP definition '10G Ethernet PCS/PMA (10GBASE-R/KR) (6.0)' for I=
P 'ten_gig_eth_pcs_pma' (customized with software release 2017.4) has a dif=
ferent revision in the IP Catalog.*
> [00:00:16] Current task: Synthesis +++ Current Phase: Starting
> [00:00:16] Current task: Synthesis +++ Current Phase: Finished*[00:00:16]=
 Process terminated. Status: Failure*
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> Warnings:           3
> Critical Warnings:  7
> Errors:             9
>
> BUILDER: Releasing IP location: /home/user/offline/src/fpga/usrp3/top/x30=
0/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma
> /home/user/offline/src/fpga/usrp3/top/x300/ip/ten_gig_eth_pcs_pma/Makefil=
e.inc:41: recipe for target '/home/user/offline/src/fpga/usrp3/top/x300/bui=
ld-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out' fai=
led
> make[1]: *** [/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410=
tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out] Error 1
> make[1]: Leaving directory '/home/user/offline/src/fpga/usrp3/top/x300'
> Makefile:119: recipe for target 'X310_RFNOC_HG' failed
> make: *** [X310_RFNOC_HG] Error 2
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000dcb28d05a0fdff58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You&#39;re using the wrong version of Vivado. You need to =
use Vivado 2017.4.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Mon, Mar 16, 2020 at 12:38 PM Jeff S via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Hi, All.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I am trying to start down the path of RFNoC development, and I am following=
 the steps outlined on the following page:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development" id=
=3D"gmail-m_7412278285325407485LPNoLP249160" target=3D"_blank">https://kb.e=
ttus.com/Getting_Started_with_RFNoC_Development</a><br>
</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I have already ran into a problem, and I&#39;m not quite sure where to go w=
ith it.=C2=A0 I&#39;m not sure if I have missed a step somewhere in my inst=
allation, or if something else is wrong.=C2=A0 I am hoping someone can poin=
t me in the correct direction.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Here&#39;s what I have:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<span>$ uhd_config_info --version<br>
</span><span>UHD 4.0.0.rfnoc-devel-702-geec24d7b</span><br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<pre>$ ./uhd_image_builder.py window fft -d x310 -t X310_RFNOC_HG -m 5 --fi=
ll-with-fifos
--Using the following blocks to generate image:
    * window
    * fft
Adding CE instantiation file for &#39;X310_RFNOC_HG&#39;
changing temporarily working directory to /home/user/offline/src/fpga/usrp3=
/tools/scripts/../../top/x300
Setting up a 64-bit FPGA build environment for the USRP-X3x0...
- Vivado: Found (/tools/Xilinx/Vivado/2019.2/bin)

Environment successfully initialized.
make -f Makefile.x300.inc bin NAME=3DX310_RFNOC_HG ARCH=3Dkintex7 PART_ID=
=3Dxc7k410t/ffg900/-2 BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=
=3D1  RFNOC=3D1 X310=3D1  TOP_MODULE=3Dx300 EXTRA_DEFS=3D&quot;BUILD_1G=3D1=
 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1  RFNOC=3D1 X310=3D1 &quot;
make[1]: Entering directory &#39;/home/user/offline/src/fpga/usrp3/top/x300=
&#39;
BUILDER: Checking tools...
* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
* Python 2.7.17
* Vivado v2019.2.1 (64-bit)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Building IP ten_gig_eth_pcs_pma
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Staging IP in build directory...
BUILDER: Reserving IP location: /home/user/offline/src/fpga/usrp3/top/x300/=
build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma
BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...
BUILDER: Building IP...
<font color=3D"#729FCF"><b>[00:00:00] Executing command: vivado -mode batch=
 -source /home/user/offline/src/fpga/usrp3/tools/scripts/viv_generate_ip.tc=
l -log ten_gig_eth_pcs_pma.log -nojournal</b></font>
<font color=3D"#75507B">WARNING: [IP_Flow 19-2162] IP &#39;ten_gig_eth_pcs_=
pma&#39; is locked:</font>
<font color=3D"#C4A000">CRITICAL WARNING: [filemgmt 20-1366] Unable to rese=
t target(s) for the following file is locked: /home/user/offline/src/fpga/u=
srp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs=
_pma.xci</font>
<font color=3D"#C4A000">CRITICAL WARNING: [filemgmt 20-1365] Unable to gene=
rate target(s) for the following file is locked: /home/user/offline/src/fpg=
a/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_=
pcs_pma.xci</font>
[00:00:13] Current task: Initialization +++ Current Phase: Starting
[00:00:13] Current task: Initialization +++ Current Phase: Finished
<font color=3D"#729FCF"><b>[00:00:13] Executing Tcl: synth_design -top ten_=
gig_eth_pcs_pma -part xc7k410tffg900-2 -mode out_of_context</b></font>
<font color=3D"#4E9A06">[00:00:13] Starting Synthesis Command</font>
<font color=3D"#75507B">WARNING: [Vivado_Tcl 4-391] The following IPs are m=
issing output products for Synthesis target. These output products could be=
 required for synthesis, please generate the output products using the gene=
rate_target or synth_ip command before running synth_design.</font>
<font color=3D"#75507B">WARNING: [IP_Flow 19-2162] IP &#39;ten_gig_eth_pcs_=
pma&#39; is locked:</font>
<font color=3D"#EF2929"><b>ERROR: [Designutils 20-414] HRTInvokeSpec : No V=
erilog or VHDL sources specified</b></font>
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>
<font color=3D"#C4A000">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncusto=
mized BOM file &#39;/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7=
k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml&#39;</font>
<font color=3D"#C4A000">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncusto=
mized BOM file &#39;/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7=
k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml&#39;</font>
<font color=3D"#C4A000">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncusto=
mized BOM file &#39;/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7=
k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml&#39;</font>
<font color=3D"#C4A000">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncusto=
mized BOM file &#39;/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7=
k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml&#39;</font>
<font color=3D"#C4A000">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncusto=
mized BOM file &#39;/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7=
k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml&#39;</font>
<font color=3D"#EF2929"><b>ERROR: [Vivado 12-398] No designs are open</b></=
font>
<font color=3D"#EF2929"><b>ERROR: [Common 17-69] Command failed: * IP defin=
ition &#39;10G Ethernet PCS/PMA (10GBASE-R/KR) (6.0)&#39; for IP &#39;ten_g=
ig_eth_pcs_pma&#39; (customized with software release 2017.4) has a differe=
nt revision in the IP Catalog.</b></font>
[00:00:16] Current task: Synthesis +++ Current Phase: Starting
[00:00:16] Current task: Synthesis +++ Current Phase: Finished
<font color=3D"#EF2929"><b>[00:00:16] Process terminated. Status: Failure</=
b></font>

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Warnings:           3
Critical Warnings:  7
Errors:             9

BUILDER: Releasing IP location: /home/user/offline/src/fpga/usrp3/top/x300/=
build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma
/home/user/offline/src/fpga/usrp3/top/x300/ip/ten_gig_eth_pcs_pma/Makefile.=
inc:41: recipe for target &#39;/home/user/offline/src/fpga/usrp3/top/x300/b=
uild-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out&#3=
9; failed
make[1]: *** [/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410tf=
fg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out] Error 1
make[1]: Leaving directory &#39;/home/user/offline/src/fpga/usrp3/top/x300&=
#39;
Makefile:119: recipe for target &#39;X310_RFNOC_HG&#39; failed
make: *** [X310_RFNOC_HG] Error 2
</pre>
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

--000000000000dcb28d05a0fdff58--


--===============7474067699649083360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7474067699649083360==--

