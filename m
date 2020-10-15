Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F3D28F7BF
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 19:43:58 +0200 (CEST)
Received: from [::1] (port=41844 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT7ID-0007Ud-5j; Thu, 15 Oct 2020 13:43:57 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:42036)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kT7I9-0007MN-BC
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 13:43:53 -0400
Received: by mail-oi1-f180.google.com with SMTP id 16so3968479oix.9
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 10:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QLWNZLM3glYrkGHosQg0tN04IaWh9w383oqhtZn32Ko=;
 b=GmRkV72q+w9MGhhNmnpI9hSpV4HN2g41rqHjVQ1a0MXBZMoDycZNRHu4hQ2hdMIsN8
 PTw5waut3TDXzkLztQi1rZPAzAOTXsW56gytulnLP5boeqQhdG+hD8InllnW6iyNqxOM
 ThAckOVbqwZe4XnyzTptbLvqshdF6QxSE28kF80hEsUgPK6p126QJM6lv4CeQFZorur4
 FoHyE+l0AiyMw5nRFW5RCq+bStIifd6SvdZdB79Z0wPhsQ0LA8qmHLnqLf63WEGYdKdy
 UaqorSIjuc18iS8d6mKLGyaD6lOeV8LTsTesCrDhsvY7oy0zP+CBnJPhCRk3Hhe6p0a9
 HyfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QLWNZLM3glYrkGHosQg0tN04IaWh9w383oqhtZn32Ko=;
 b=cibLYb28nnCa+9TsGJ6ufUu7h4M4KsVYFM+9PoxHyb0AnrygJlzvoHIjDYUh6tDSl5
 y18ZJ7fe3oJspLGKp9WpA1GNLXC2YVcU89fYerHBzUXa204l6l6yJeZrgCQ/MawCQYJu
 /+pMX8KD8O68d8DjxkJKo7O/StuDWx0CTLKN622pNhLdrlp/dM+kt8fnOSMz/egsbt49
 qSSlsjfJzlGT8MCNELT/u/RWEE/wZPUBLbIhn9kCS+BCbNDth+paCZZunuGnGwzRID4f
 q51aNmifG0yFfPJnq4wiaAVUo88oq6L7GK3/g3Ygl683NXq+cNIrtAdsGyR1v+HhaM0V
 x2OQ==
X-Gm-Message-State: AOAM530uDGw2KSFTVH6nsDX+ROj00qfSCSPo6dy/I+dEA8poB5KJw2XL
 RTdNBA6lXhmbGvokG3/t8PD/JrxX3bxWYv5RrjOmJizuEvw=
X-Google-Smtp-Source: ABdhPJw8TJrsf1BdxIKIHiVLE/tiUsCr3Jc6S+wIn25EPvXhkm/S9ZFV6Bl/NHRDWXdrc/R4VmASiFspWSGP8pZnnj8=
X-Received: by 2002:aca:4085:: with SMTP id n127mr2916792oia.33.1602783792539; 
 Thu, 15 Oct 2020 10:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR12MB3312D6040F4F80A6B1E838CCB8020@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB33125D99856227CEB8E2E8BAB8020@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB33125D99856227CEB8E2E8BAB8020@MN2PR12MB3312.namprd12.prod.outlook.com>
Date: Thu, 15 Oct 2020 13:43:01 -0400
Message-ID: <CAB__hTTC8-W8f0khfQ=Dq3Zcgy1jk-1O7VAYLR2ct=UU8vtSsg@mail.gmail.com>
To: Jim Palladino <jim@gardettoengineering.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Adding Xilinx IP to custom RFNoC block
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============2087953744551359720=="
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

--===============2087953744551359720==
Content-Type: multipart/alternative; boundary="0000000000009b5f4405b1b92e3f"

--0000000000009b5f4405b1b92e3f
Content-Type: text/plain; charset="UTF-8"

Jim,
I couldn't figure it out quickly enough so I just put my ip in-tree
(fpga/usrp3/lib/ip/) and updated the corresponding Ettus Makefile.inc
Rob

On Thu, Oct 15, 2020 at 1:40 PM Jim Palladino via USRP-users <
usrp-users@lists.ettus.com> wrote:

> As a quick update, with my attempt "2" described in the original post, I
> actually get the same result as I do with method "1" (I fixed a typo),
> although I don't get the critical warning. So, the result of trying to
> build the FPGA image is still:
>
> ...
> [00:00:12] Starting Synthesis Command
> ERROR: [Synth 8-439] module 'DDS_Test_Signal' not found
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_jjj.v:92]
> ERROR: [Synth 8-6156] failed synthesizing module 'jjj_const'
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_jjj.v:11]
> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_block_Block'
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_block_Block.v:25]
> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/icores/e320_rfnoc_image_core.v:14]
> ERROR: [Synth 8-6156] failed synthesizing module 'e320_core'
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/e320_core.v:18]
> ERROR: [Synth 8-6156] failed synthesizing module 'e320'
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/e320.v:14]
> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
> console or run log file for details
> [00:04:25] Current task: Synthesis +++ Current Phase: Starting
> [00:04:26] Current task: Synthesis +++ Current Phase: Finished
> [00:04:26] Process terminated. Status: Failure
>
> Thanks,
> Jim
>
>
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Jim
> Palladino via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Thursday, October 15, 2020 1:13 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Adding Xilinx IP to custom RFNoC block
>
> Hello,
>
> I'm trying to add a Xilinx DDS to a custom RFNoC block (using UHD 4.0 and
> associated gr-ettus repo). To do this, I started building the FPGA image
> using the GUI option, stopped the build shortly after Vivado opened, and
> saved a Vivado Project. Then, in Vivado I configured/added a Xilinx DDS to
> my custom RFNoC block hdl and built the project just fine.
>
> Now, I'm trying to setup my build file structure so I can use the "make"
> flow to build the FPGA image. I've tried several things.
>
> 1) I copied the xci file directly to my rfnoc/fpga/rfnoc_block_Block
> folder. Then, I added the following to the Makefile.srcs file in the same
> folder:
>
> RFNOC_OOT_SRCS += $(addprefix $(dir $(abspath $(lastword
> $(MAKEFILE_LIST)))), rfnoc_block_Block.v noc_shell_Block.v rfnoc_jjj.v
> DDS_Test_Signal.xci)
>
> When I try to build the FPGA image, I get the following critical warning:
> CRITICAL WARNING: [Vivado 12-1504] The IP is already part of the fileset
> 'sources_1'. Requested source
> '/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/DDS_Test_Signal.xci'
> will not be added.
>
> followed by these errors:
> ERROR: [Synth 8-439] module 'DDS_Test_Signal' not found
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/XXX/fpga/rfnoc_block_Block/rfnoc_jjj.v:92]
> ERROR: [Synth 8-6156] failed synthesizing module 'jjj_const'
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_jjj.v:11]
> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_block_Block'
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_block_Block.v:25]
> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/icores/e320_rfnoc_image_core.v:14]
> ERROR: [Synth 8-6156] failed synthesizing module 'e320_core'
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/e320_core.v:18]
> ERROR: [Synth 8-6156] failed synthesizing module 'e320'
> [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/e320.v:14]
> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
> console or run log file for details
>
>
> 2) Looking at the rfnoc-example included under uhd/host, I see that this
> comment is in Ettus's /rfnoc-example/fpga/Makefile.srcs file:
>
> # If there are additional modules or IP (other than what is in the RFNoC
> block
> # subdirectories) that needs to get installed in order to synthesize
> blocks from
> # this module, list them here:
> #RFNOC_OOT_SRCS += $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},
> #my_other_module.v \
> #ip/my_ip_core/my_ip_core.xci \
> #))
>
> So, I created an rfnoc/fpga/ip/DDS_Test_Signal folder and copied the xci
> file there. Then, I added the following line to my
> /rfnoc/fpga/Makefile.srcs:
>
> RFNOC_OOT_SRCS += $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},
> ip/DDS_Test_Signal/DDS_Test_Signal.xci))
>
> When I do this, I get:
>
> Environment successfully initialized.
> BUILDER: Checking tools...
> * GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
> * Python 2.7.17
> * Vivado v2019.1 (64-bit)
> make[5]: *** No rule to make target
> '/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/ip/DDS_Test_Signal/DDS_Test_Signal.xci',
> needed by 'bin'.  Stop.
> Makefile:65: recipe for target 'E320_XG' failed
> make[4]: *** [E320_XG] Error 2
> Built target Block_x310_rfnoc_image_core
>
>
> So, I'm obviously not adding the IP correctly. Can anyone point me in the
> right direction?
>
> Thanks,
> Jim
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009b5f4405b1b92e3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Jim,<div>I couldn&#39;t figure it out quickly enough so I =
just put my ip in-tree (fpga/usrp3/lib/ip/) and updated the corresponding E=
ttus Makefile.inc</div><div>Rob</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 15, 2020 at 1:40 PM Jim Pa=
lladino via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
As a quick update, with my attempt &quot;2&quot; described in the original =
post, I actually get the same result as I do with method &quot;1&quot; (I f=
ixed a typo), although I don&#39;t get the critical warning. So, the result=
 of trying to build the FPGA image is still:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
...</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
[00:00:12] Starting Synthesis Command
<div>ERROR: [Synth 8-439] module &#39;DDS_Test_Signal&#39; not found [/home=
/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfno=
c-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_jjj.v:92]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module &#39;jjj_const&#39; [=
/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom=
/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_jjj.v:11]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module &#39;rfnoc_block_Bloc=
k&#39; [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNo=
C_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_block_Block.v:25]<=
/div>
<div>ERROR: [Synth 8-6156] failed synthesizing module &#39;rfnoc_image_core=
&#39; [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC=
_Custom/rfnoc-peanut/rfnoc/icores/e320_rfnoc_image_core.v:14]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module &#39;e320_core&#39; [=
/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usr=
p3/top/e320/e320_core.v:18]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module &#39;e320&#39; [/home=
/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/to=
p/e320/e320.v:14]</div>
<div>ERROR: [Common 17-69] Command failed: Synthesis failed - please see th=
e console or run log file for details</div>
<div>[00:04:25] Current task: Synthesis +++ Current Phase: Starting</div>
<div>[00:04:26] Current task: Synthesis +++ Current Phase: Finished</div>
<div>[00:04:26] Process terminated. Status: Failure</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Jim</div>
<div><br>
</div>
<br>
<br>
</div>
<div id=3D"gmail-m_-2397178323551408827appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-2397178323551408827divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com"=
 target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of =
Jim Palladino via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, October 15, 2020 1:13 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Adding Xilinx IP to custom RFNoC block</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m trying to add a Xilinx DDS to a custom RFNoC block (using UHD 4.0 a=
nd associated gr-ettus repo). To do this, I started building the FPGA image=
 using the GUI option, stopped the build shortly after Vivado opened, and s=
aved a Vivado Project. Then, in Vivado
 I configured/added a Xilinx DDS to my custom RFNoC block hdl and built the=
 project just fine.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Now, I&#39;m trying to setup my build file structure so I can use the &quot=
;make&quot; flow to build the FPGA image. I&#39;ve tried several things.</d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
1) I copied the xci file directly to my rfnoc/fpga/rfnoc_block_Block folder=
. Then, I added the following to the Makefile.srcs file in the same folder:=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword $(MAKEFILE_LIST)=
))), rfnoc_block_Block.v noc_shell_Block.v rfnoc_jjj.v DDS_Test_Signal.xci)=
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
When I try to build the FPGA image, I get the following critical warning:</=
div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
CRITICAL WARNING: [Vivado 12-1504] The IP is already part of the fileset &#=
39;sources_1&#39;. Requested source &#39;/home/XXX/Projects/SCISRS/usrp/gnu=
radio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_blo=
ck_Block/DDS_Test_Signal.xci&#39; will not be added.<br>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
followed by these errors:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt">ERROR: [Synth 8-439] module &#39;DDS_Test_Signal&#39; n=
ot found [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RF=
NoC_Custom/rfnoc-peanut/XXX/fpga/rfnoc_block_Block/rfnoc_jjj.v:92]</span><b=
r>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div>ERROR: [Synth 8-6156] failed synthesizing module &#39;jjj_const&#39; [=
/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom=
/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_jjj.v:11]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module &#39;rfnoc_block_Bloc=
k&#39; [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNo=
C_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_block_Block.v:25]<=
/div>
<div>ERROR: [Synth 8-6156] failed synthesizing module &#39;rfnoc_image_core=
&#39; [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC=
_Custom/rfnoc-peanut/rfnoc/icores/e320_rfnoc_image_core.v:14]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module &#39;e320_core&#39; [=
/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usr=
p3/top/e320/e320_core.v:18]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module &#39;e320&#39; [/home=
/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/to=
p/e320/e320.v:14]</div>
<div>ERROR: [Common 17-69] Command failed: Synthesis failed - please see th=
e console or run log file for details</div>
<div><br>
</div>
<br>
2) Looking at the rfnoc-example included under uhd/host, I see that this co=
mment is in Ettus&#39;s /rfnoc-example/fpga/Makefile.srcs file:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
# If there are additional modules or IP (other than what is in the RFNoC bl=
ock
<div># subdirectories) that needs to get installed in order to synthesize b=
locks from</div>
<div># this module, list them here:</div>
<div>#RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},</div>
<div>#my_other_module.v \</div>
<div>#ip/my_ip_core/my_ip_core.xci \</div>
#))<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
So, I created an rfnoc/fpga/ip/DDS_Test_Signal folder and copied the xci fi=
le there. Then, I added the following line to my /rfnoc/fpga/Makefile.srcs:=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR}, ip/DDS_Test=
_Signal/DDS_Test_Signal.xci))<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
When I do this, I get:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Environment successfully initialized.
<div>BUILDER: Checking tools...</div>
<div>* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)</div>
<div>* Python 2.7.17</div>
<div>* Vivado v2019.1 (64-bit)</div>
<div>make[5]: *** No rule to make target &#39;/home/XXX/Projects/SCISRS/usr=
p/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/ip/DDS_Test_Signa=
l/DDS_Test_Signal.xci&#39;, needed by &#39;bin&#39;.=C2=A0 Stop.</div>
<div>Makefile:65: recipe for target &#39;E320_XG&#39; failed</div>
<div>make[4]: *** [E320_XG] Error 2</div>
<div>Built target Block_x310_rfnoc_image_core</div>
<br>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
So, I&#39;m obviously not adding the IP correctly. Can anyone point me in t=
he right direction?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
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

--0000000000009b5f4405b1b92e3f--


--===============2087953744551359720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2087953744551359720==--

