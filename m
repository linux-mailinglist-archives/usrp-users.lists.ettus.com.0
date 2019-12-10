Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 249FD118E50
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2019 17:57:12 +0100 (CET)
Received: from [::1] (port=39882 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieiox-0000Hs-1A; Tue, 10 Dec 2019 11:57:11 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:37366)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ieiot-0000AD-00
 for usrp-users@lists.ettus.com; Tue, 10 Dec 2019 11:57:07 -0500
Received: by mail-ot1-f42.google.com with SMTP id k14so16129148otn.4
 for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2019 08:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sF1ia/3Iuc567pIWNv7XXfbD9eHft066t5VBBisHvYg=;
 b=CYg1ILqsSkscpPR3IZrNZ/d3xlZDWUPnJc3Li2OP/YjaoX78O+ErKS32hVcB/+kViz
 eqKikMjIAmaNjNSTL1N0LevHMmDuOUAVpKJAALj74IsrXOOX3qba5KLzupEQYlRCT8uO
 9Y5UaSeAq0ZmsLrhG30Nk5y+23A5vVnqRLK4GfsVIlD0EMtU4QrquMKKkKsbQb0rmMmi
 4k7pF5JclGyWaNrphRAn98+8h9rb8fi9IuNe4ILbaR6QRDwmzqqY3MvM3oZiZ5RWQo9W
 pp/YXqsOAkJeN8hi8A5bX17JGIvunp5YqtdXQFo0akBuEf0f9CuSYL81HbyB9S6aaSCv
 wtZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sF1ia/3Iuc567pIWNv7XXfbD9eHft066t5VBBisHvYg=;
 b=d/Mx5vtkhgvgXj1lxY8vW7v0gENQHrYtlf1Frt/xfY77D8TACfQkzy7GYtk/JTwGCk
 XKVh3TO9Z6WtXLuu+KqqtGMSaiqS0MII7Hv2bLbMfYqUtDRGbzNDa5e0WDBx+/+kf6NE
 x0OEXekCZeC/+ca4IEiRosKcwTv6d85xXWXEjn4pgKmp7F9S02dwh2q9QaXLKxqr2KLM
 HjwCtYHuyLrO21RGaWTZ5C1Axdxw/zDJMbIZidFvr0rXpuK1UcglSr2tGpmqBk0NkS9m
 Zq55WyqVo/JDg+uUlKrfLgNsDK/CRzHKRDv+YkdTsPotYplld1x76PQdBM2nRW4TpfX7
 JeKA==
X-Gm-Message-State: APjAAAVEgcphSJpI67HYgsTElS4zXtWmunhMCxaAv350igj4ZZPm+oYa
 NogUp6I4bp7ms0uwr0RNWHjMP1anFHe9aMA6Ul3pvh053rsl6g==
X-Google-Smtp-Source: APXvYqynhddPTnwSd8XGftgzW3r8NG917fVjCVDZBEEtnmin6ynZZxWRKBUh6KvuA6Js2Tmcgt8VuQNgDX8C7AoNOtE=
X-Received: by 2002:a05:6830:1b6d:: with SMTP id
 d13mr16615010ote.258.1575996986129; 
 Tue, 10 Dec 2019 08:56:26 -0800 (PST)
MIME-Version: 1.0
References: <d509cd368f8d4167a1fdff12613c35a2@dlr.de>
 <CAL263iwKA_R=30JEohT88GPAP6xm-V1VLSL2mNtk1UbJJ9bJPw@mail.gmail.com>
 <CAL263iyqgz_ALuntLoCcpum7k20eXKEXYHUZhqNouUr9r7cwig@mail.gmail.com>
 <23a286638bd44719a36b213cbfad0fa5@dlr.de>
In-Reply-To: <23a286638bd44719a36b213cbfad0fa5@dlr.de>
Date: Tue, 10 Dec 2019 08:57:20 -0800
Message-ID: <CAL263izHBHnBjKEYLzEyy-KP67kwKWVzN6LZCwdsmKKdqfWj9w@mail.gmail.com>
To: Robert.Poehlmann@dlr.de
Subject: Re: [USRP-users] Default RFNoC image for N310 does not compile
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3295545959664496154=="
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

--===============3295545959664496154==
Content-Type: multipart/alternative; boundary="00000000000086947c05995c64cc"

--00000000000086947c05995c64cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

This patch/line change detailed below should resolve that issue and will be
included in the official 3.15.0.0 release:

---
 usrp3/lib/rfnoc/noc_shell.v | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/usrp3/lib/rfnoc/noc_shell.v b/usrp3/lib/rfnoc/noc_shell.v
index 927f40a70..732d41afa 100644
--- a/usrp3/lib/rfnoc/noc_shell.v
+++ b/usrp3/lib/rfnoc/noc_shell.v
@@ -267,7 +267,7 @@ module noc_shell
           .o_tdata({set_addr_bclk[8*k+7:8*k],
set_data_bclk[32*k+31:32*k]}),
           .o_tvalid(set_stb_bclk[k]), .o_tready(set_stb_bclk[k]));

-       localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D
2**(STR_SINK_FIFOSIZE[8*k+7:8*k]+3);
+       localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D (k < INPUT_PORTS) ?
2**(STR_SINK_FIFOSIZE[8*k+7:8*k]+3) : 0;
        // "Lines" is the most useful unit for the command FIFO size, since
        // commands take either 2 or 3 lines. Software can do the rest of
the
        // math to figure out how many actual command packets it can send.



Regards,
Nate Temple

On Tue, Dec 10, 2019 at 8:46 AM <Robert.Poehlmann@dlr.de> wrote:

> Hi Nate!
>
>
>
> I followed the guide in
> https://files.ettus.com/manual/md_usrp3_build_instructions.html, thus
> ended up with Vivado 2018.3 and then later found out this requires UHD
> 3.15. Thanks for pointing me to the Vivado bug. I thought with 2018.3.1
> this would be fixed, but apparently that is not the case. Now I went back
> to 2018.3 (clean re-install) and installed the patch AR#71898. The standa=
rd
> N310 image compiles fine now.
>
>
>
> The other error
>
> ERROR: [Synth 8-524] part-select [15:8] out of range of prefix
> 'STR_SINK_FIFOSIZE'
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
>
> seems to be happening only for few specific RFNoC blocks (fosphor and
> split_stream, specifically). Leaving these out, the RFNoC image does
> compile. Not sure what exactly is the problem, though. The recent commit
> https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d2=
03eb62ae26c9
> did not help (tried both versions, neither of them works).
>
>
>
> Regards
>
> Robert
>
>
>
>
>
> *From:* Nate Temple [mailto:nate.temple@ettus.com]
> *Sent:* Monday, December 09, 2019 8:43 PM
> *To:* P=C3=B6hlmann, Robert
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Default RFNoC image for N310 does not compile
>
>
>
> Hi Robert,
>
>
>
> So this is a bug related to Vivado, you will need to install this linked
> below patch and it should resolve it.
>
>
>
> https://www.xilinx.com/support/answers/71898.html
>
>
>
> Regards,
>
> Nate Temple
>
>
>
> On Mon, Dec 9, 2019 at 10:38 AM Nate Temple <nate.temple@ettus.com> wrote=
:
>
> Hi Robert,
>
> Thanks for the bug report.
>
> If you're just trying to use RFNoC at this point, I would recommend to
> stick with the latest stable release, which at this time is v3.14.1.1.
>
> Note, 3.14.x.x UHD will require Vivado 2017.4.
>
>
> Regards,
> Nate Temple
>
>
>
> On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi all!
>
>
>
> I tried to compile the default RFNoC image for the N310, using UHD on tag
> v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
>
>
>
> Running "make N310_RFNOC_XG", the IP cores are compiled successfully, but
> then Vivado shows the following errors:
>
>
>
> ERROR: [Synth 8-524] part-select [15:8] out of range of prefix
> 'STR_SINK_FIFOSIZE'
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
> ERROR: [Synth 8-521] parameter assignment could not be resolved to a
> constant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
> ERROR: [Synth 8-196] conditional expression could not be resolved to a
> constant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:239]
> WARNING: [Synth 8-693] zero replication count - replication ignored
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:26]
> WARNING: [Synth 8-693] zero replication count - replication ignored
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:27]
> WARNING: [Synth 8-693] zero replication count - replication ignored
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:31]
> ERROR: [Synth 8-6156] failed synthesizing module
> 'noc_shell__parameterized9'
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:21]
> ERROR: [Synth 8-6156] failed synthesizing module 'noc_block_fosphor'
> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_block_fosphor.v:8]
> ERROR: [Synth 8-6156] failed synthesizing module 'n3xx_core'
> [/usr/local/src/uhd/fpga-src/usrp3/top/n3xx/n3xx_core.v:17]
> ERROR: [Synth 8-6156] failed synthesizing module 'n3xx'
> [/usr/local/src/uhd/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]
>
>
>
> The full build.log file is attached. I did not modify any files, just
> trying to compile the RFNoC example as provided.
>
>
>
>
>
>
>
> Btw I also tried to build the default image with "make N310_XG", this one
> compiles but failed later during DRC:
>
> [DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank 34.
> For example, the following two ports in this bank have conflicting VCCOs:
> ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15]
> (LVCMOS18, requiring VCCO=3D1.800)
>
> [Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--00000000000086947c05995c64cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Robert,<br><br>This patch/line change detailed below=
 should resolve that issue and will be included in the official 3.15.0.0 re=
lease:<br><br>---<br>=C2=A0usrp3/lib/rfnoc/noc_shell.v | 2 +-<br>=C2=A01 fi=
le changed, 1 insertion(+), 1 deletion(-)<br><br>diff --git a/usrp3/lib/rfn=
oc/noc_shell.v b/usrp3/lib/rfnoc/noc_shell.v<br>index 927f40a70..732d41afa =
100644<br>--- a/usrp3/lib/rfnoc/noc_shell.v<br>+++ b/usrp3/lib/rfnoc/noc_sh=
ell.v<br>@@ -267,7 +267,7 @@ module noc_shell<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0.o_tdata({set_addr_bclk[8*k+7:8*k], set_data_bclk[32*k+31:=
32*k]}),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.o_tvalid(set_stb_bclk=
[k]), .o_tready(set_stb_bclk[k]));<br>=C2=A0<br>- =C2=A0 =C2=A0 =C2=A0 loca=
lparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D 2**(STR_SINK_FIFOSIZE[8*k+7:8*k]=
+3);<br>+ =C2=A0 =C2=A0 =C2=A0 localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =
=3D (k &lt; INPUT_PORTS) ? 2**(STR_SINK_FIFOSIZE[8*k+7:8*k]+3) : 0;<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 // &quot;Lines&quot; is the most useful unit for t=
he command FIFO size, since<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 // commands take=
 either 2 or 3 lines. Software can do the rest of the<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 // math to figure out how many actual command packets it can sen=
d.<br><br><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 10, 2019 at 8:46=
 AM &lt;<a href=3D"mailto:Robert.Poehlmann@dlr.de">Robert.Poehlmann@dlr.de<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-6331373918561515169WordSection1">
<p class=3D"MsoNormal">Hi Nate!<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I followed the guide in <a href=3D"https://files.ett=
us.com/manual/md_usrp3_build_instructions.html" target=3D"_blank">
https://files.ettus.com/manual/md_usrp3_build_instructions.html</a>, thus e=
nded up with Vivado 2018.3 and then later found out this requires UHD 3.15.=
 Thanks for pointing me to the Vivado bug. I thought with 2018.3.1 this wou=
ld be fixed, but apparently that
 is not the case. Now I went back to 2018.3 (clean re-install) and installe=
d the patch AR#71898. The standard N310 image compiles fine now.<u></u><u><=
/u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The other error<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:black">ERROR: [Synth 8-524] par=
t-select [15:8] out of range of prefix &#39;STR_SINK_FIFOSIZE&#39; [/usr/lo=
cal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal">seems to be happening only for few specific RFNoC bl=
ocks (fosphor and split_stream, specifically). Leaving these out, the RFNoC=
 image does compile. Not sure what exactly is the problem, though. The rece=
nt commit
<a href=3D"https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b8=
8ce7251d203eb62ae26c9" target=3D"_blank">
https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203=
eb62ae26c9</a> did not help (tried both versions, neither of them works).<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards<u></u><u></u></p>
<p class=3D"MsoNormal">Robert<span style=3D"font-size:11pt;color:rgb(31,73,=
125)"> <u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:rgb(31,73,125)"><u></u>=C2=A0<u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:rgb(31,73,125)"><u></u>=C2=A0<u></u>=
</span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10pt;font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-siz=
e:10pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Nate Temple =
[mailto:<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.tem=
ple@ettus.com</a>]
<br>
<b>Sent:</b> Monday, December 09, 2019 8:43 PM<br>
<b>To:</b> P=C3=B6hlmann, Robert<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">Hi Robert, <u></u>
<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">So this is a bug related to Vivado, you will need to insta=
ll this linked below patch and it should resolve it.<u></u><u></u></span></=
p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://www.xilinx.com/support/answers/71=
898.html" target=3D"_blank"><span style=3D"font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;">https://www.xilinx.com/support/answers/71898.html</sp=
an></a><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"=
><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">Regards,<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">Nate Temple<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Dec 9, 2019 at 10:38 AM Nate Temple &lt;<a h=
ref=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.co=
m</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">Hi Robert,<br>
<br>
Thanks for the bug report. <br>
<br>
If you&#39;re just trying to use RFNoC at this point, I would recommend to =
stick with the latest stable release, which at this time is v3.14.1.1.
<br>
<br>
Note, 3.14.x.x UHD will require Vivado 2017.4.<br>
<br>
<br>
Regards,<br>
Nate Temple<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
<div>
<div id=3D"gmail-m_-6331373918561515169gmail-m_-7724419252963540251gmail-m_=
1503436027014080033divtagdefaultwrapper">
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">Hi all!<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">I tried to compile the default RFNoC image f=
or the N310, using UHD on tag v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">Running</span><code><span style=3D"font-size=
:10pt;color:black"> &quot;make N310_RFNOC_XG&quot;, the IP cores are compil=
ed successfully, but then Vivado shows the following errors:</span></code><=
span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:=
black"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">ERROR: [Synth 8-524] part-select [15:8] out =
of range of prefix &#39;STR_SINK_FIFOSIZE&#39; [/usr/local/src/uhd/fpga-src=
/usrp3/lib/rfnoc/noc_shell.v:270]<br>
ERROR: [Synth 8-521] parameter assignment could not be resolved to a consta=
nt [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]<br>
ERROR: [Synth 8-196] conditional expression could not be resolved to a cons=
tant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:239]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:26]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:27]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:31]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;noc_shell__parameteri=
zed9&#39; [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:21]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;noc_block_fosphor&#39=
; [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_block_fosphor.v:8]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;n3xx_core&#39; [/usr/=
local/src/uhd/fpga-src/usrp3/top/n3xx/n3xx_core.v:17]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;n3xx&#39; [/usr/local=
/src/uhd/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]<u></u><u></u></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">The full build.log file is attached. I did n=
ot modify any files, just trying to compile the RFNoC example as provided.<=
u></u><u></u></span></p>
</div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">Btw I also tried to build the default image with &quot;make N310=
_XG&quot;, this one compiles but failed later during DRC:<u></u><u></u></sp=
an></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">[DRC BIVC-1] Bank IO standard Vcc: Conflicti=
ng Vcc voltages in bank 34. For example, the following two ports in this ba=
nk have conflicting VCCOs:
<br>
ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15] (LVCMO=
S18, requiring VCCO=3D1.800)<u></u><u></u></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black">[Vivado_Tcl 4-2=
3] Error(s) found during DRC. Placer not run.<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
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
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--00000000000086947c05995c64cc--


--===============3295545959664496154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3295545959664496154==--

