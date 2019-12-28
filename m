Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4651712BD52
	for <lists+usrp-users@lfdr.de>; Sat, 28 Dec 2019 11:49:30 +0100 (CET)
Received: from [::1] (port=45718 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1il9ex-00043s-Mv; Sat, 28 Dec 2019 05:49:27 -0500
Received: from mail-ot1-f54.google.com ([209.85.210.54]:42504)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <varban.metodiev@gmail.com>)
 id 1il9eu-00040G-C3
 for usrp-users@lists.ettus.com; Sat, 28 Dec 2019 05:49:24 -0500
Received: by mail-ot1-f54.google.com with SMTP id 66so39562067otd.9
 for <usrp-users@lists.ettus.com>; Sat, 28 Dec 2019 02:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E1W8SpDO4a8cX2UIgIXPten8C0ttaQWYT0cymWXvh9c=;
 b=d5HOWg3hEuwjJGtZBSXK6dT2TylwjpY/lx3EbkjWEcwQvLYKzI//UT6rwG8StU5n7y
 yoN6LOnntbjk/giXV7FiXZJyJWyzr3LBMoLg0HJgS+KFJMXK6B3hcHYhI2hpXhVQviGe
 sG4tUFJSOHwDR8K5vHywyT6RG2dvUodg/e4qPFh6uhd2MQdtnxBqvxy54KBMjD1fsHgR
 RlF2zwWBWkw354VPpeRNwfVw39uLzRTKDgWUMcTdwmTNXhHm2k7Mhy87tm8HP0Ly75pw
 ZsAdaUQuD7ikP4uoFmDHRBSjBMTZhoEw0To09we9ikmsNNdymFRm24t/LJjJ3J4UYv3M
 rbAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E1W8SpDO4a8cX2UIgIXPten8C0ttaQWYT0cymWXvh9c=;
 b=lGkD2PwUM8aYWYTfvIxPaZYBcKnWtdHKRirmYRw8UIqZy1SF4rX9yYJoDj6vz+jXpo
 Gp4k42M7sZB9fE9qSuqs+Pr2wGqhQarAXUfBl1zUw5YidtCctHqKWPq3dgp6B4CSp+o3
 NJfcKrQ/18LBGpGvGwm4MV0xu28sGQGhaZEi5D0kokbKsdpe9/TPBuuuhy2Dt1iB7Y1m
 U9yBoUnw+tHc2aSYqlwBeWpxeFXP9SPbaA9bvBrg/epcJSz94hg7JzO64nIa8GgtvA6a
 SERyHOnVHwqK0zXD/bIByISgL/LxZRb6Xi+GzlZ5WnKpJB9GA/G4WBD9nTVNstOjzWbq
 5ONw==
X-Gm-Message-State: APjAAAVr5GhT5Keytr0/fOjCxSind3f1UbFEgqwoC+wNX6eHLjy7mxV/
 +IuSAKsfRiU5naeJwkZkpDzW7+e3ALJRam9R55s=
X-Google-Smtp-Source: APXvYqzgcyX1+TqGTJPIWkhtKYgVwfa3VcZakA5Gh17uUPwv7MlQKwNuTyrT5lzSEg6CpLxBwZ/jr/foXzV9EJ54bXs=
X-Received: by 2002:a9d:7ccc:: with SMTP id r12mr65266953otn.22.1577530123260; 
 Sat, 28 Dec 2019 02:48:43 -0800 (PST)
MIME-Version: 1.0
References: <CAKA0MUjRDT3FH3J64adsLZmXQ4iC9q9EbscaiePWv=MRQfk2+Q@mail.gmail.com>
 <91be310516a5f964d97e1289b41895ae6420cdb6.camel@ettus.com>
In-Reply-To: <91be310516a5f964d97e1289b41895ae6420cdb6.camel@ettus.com>
Date: Sat, 28 Dec 2019 12:48:32 +0200
Message-ID: <CAKA0MUjaeHuEaJWrpQB2aGRZfF9=MApK3oL9aPwrki-L+N5dpA@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Subject: Re: [USRP-users] Header files cannot be opened upon trying to
 compile the FPGA image for b205mini
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
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3502456090238604532=="
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

--===============3502456090238604532==
Content-Type: multipart/alternative; boundary="0000000000009e96e2059ac15a60"

--0000000000009e96e2059ac15a60
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

At first, I tried sourcing the "settings64.sh" file, as per the official
instructions:
Build Instructions (Xilinx ISE only)Makefile based Builder

   - To add xtclsh to the PATH and to setup up the Xilinx build environment
   run
      - *source <install_dir>/Xilinx/14.7/ISE_DS/settings64.sh (64-bit
      platform)*

However, I did not see the PATH variable being concatenated with the xtclsh
path. That is why I got the path from "which xtclsh" and manually appended
it to the PATH.

In both cases  (with or without xtclpath present inside the PATH), I always
get the problem with opening the Verilog headers.

Do you have a specific shell that you
prepare for synthesis?
---> No, I am just using the official Linux VM installation of Xilinx ISE.
I keep the shell environment by default.

Regards,
Varban

On Sat, Dec 28, 2019 at 12:13 PM Marcus M=C3=BCller <marcus.mueller@ettus.c=
om>
wrote:

> Hi Varban,
>
> just a transient observation: your $PATH contains *a lot* of redundant
> ISE paths, as if some script kept recursively sourcing the xilinx
> settings. How are these set? Do you have a specific shell that you
> prepare for synthesis?
>
> Best regards,
> Marcus
> On Fri, 2019-12-27 at 12:47 +0000, Varban Metodiev via USRP-users
> wrote:
> > Hi,
> >
> > I am trying to compile the FPGA image for a b205mini as per the
> > official instructions. My environment looks like this:
> >
> > [ise@localhost b2xxmini]$ which xtclsh
> > /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xtclsh
> > [ise@localhost b2xxmini]$ pwd
> > /home/ise/USRP/fpga/usrp3/top/b2xxmini
> >
> > [ise@localhost b2xxmini]$ echo $PATH
> > /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/sys
> > gen/util:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/bin:/opt/Xilinx/14.7/ISE_
> > DS/ISE/../../../DocNav:/opt/Xilinx/14.7/ISE_DS/PlanAhead/bin:/opt/Xil
> > inx/14.7/ISE_DS/EDK/bin/lin64:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microbl
> > aze/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/powerpc-
> > eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/
> > 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili
> > nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X
> > ilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/li
> > n64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/I
> > SE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx
> > /14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt
> > /Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_D
> > S/EDK/gnu/powerpc-
> > eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/
> > 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili
> > nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X
> > ilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/li
> > n64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/I
> > SE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx
> > /14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt
> > /Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_D
> > S/EDK/gnu/powerpc-
> > eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/
> > 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili
> > nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X
> > ilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/li
> > n64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/I
> > SE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx
> > /14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt
> > /Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_D
> > S/EDK/gnu/powerpc-
> > eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/
> > 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili
> > nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X
> > ilinx/14.7/ISE_DS/common/bin/lin64:/usr/lib64/qt-
> > 3.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:
> > /home/ise/bin:/home/ise/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xtclsh
> >
> >
> > Upon starting the "make B205mini", the header files inside
> > /fpga/usrp3/lib/ cannot be accessed.
> >
> > INFO:ProjectMgmt - Include file found:
> >    '/home/ise/USRP/fpga/usrp3/lib/wishbone/i2c_master_defines.v' in
> > file
> >    "/home/ise/USRP/fpga/usrp3/lib/wishbone/i2c_master_byte_ctrl.v"
> > line 73
> > ERROR:ProjectMgmt - 1 error(s) found while parsing design hierarchy.
> > WARNING:ProjectMgmt - Circular Reference:
> > work:Module|cam_priority_encoder
> > > > > Adding source to project:
> > > > > /home/ise/USRP/fpga/usrp3/lib/wishbone/axi_stream_to_wb.v
> > INFO:HDLCompiler:1845 - Analyzing Verilog file
> >    "/home/ise/USRP/fpga/usrp3/lib/packet_proc/source_flow_control.v"
> > into
> >    library work
> > ERROR:HDLCompiler:281 -
> >    "/home/ise/USRP/fpga/usrp3/lib/packet_proc/source_flow_control.v"
> > Line 55:
> >    Cannot open include file "chdr_pkt_types.vh".
> > INFO:HDLCompiler:1845 - Analyzing Verilog file
> >    "/home/ise/USRP/fpga/usrp3/lib/wishbone/axi_stream_to_wb.v" into
> > library work
> > ERROR:ProjectMgmt - 1 error(s) found while parsing design hierarchy.
> > WARNING:ProjectMgmt - Circular Reference:
> > work:Module|cam_priority_encoder
> > > > > Adding source to project:
> > > > > /home/ise/USRP/fpga/usrp3/lib/timing/time_compare.v
> > INFO:TclTasksC - File
> > "/home/ise/USRP/fpga/usrp3/lib/timing/time_compare.v" is
> >    already present in the project
> >
> > May you please advise how add the search path correctly? Or maybe I
> > have missed something in the environment configuration?
> >
> > Regards,
> > Varban
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000009e96e2059ac15a60
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>At first, I tried sourcing t=
he &quot;settings64.sh&quot; file, as per the official instructions:</div><=
div><h2 style=3D"margin-right:15px;color:rgb(0,0,0);font-family:Roboto,sans=
-serif">Build Instructions (Xilinx ISE only)</h2><h3 style=3D"margin-right:=
15px;color:rgb(0,0,0);font-family:Roboto,sans-serif">Makefile based Builder=
</h3><ul style=3D"color:rgb(0,0,0);font-family:Roboto,sans-serif;font-size:=
14px"><li>To add xtclsh to the PATH and to setup up the Xilinx build enviro=
nment run<ul><li><b><code>source &lt;install_dir&gt;/Xilinx/14.7/ISE_DS/set=
tings64.sh</code>=C2=A0(64-bit platform)</b></li></ul></li></ul><div><font =
color=3D"#000000" face=3D"Roboto, sans-serif"><span style=3D"font-size:14px=
">However, I did not see the PATH variable being concatenated with the xtcl=
sh path. That is why I got the path from &quot;which xtclsh&quot; and manua=
lly appended it to the PATH.</span></font></div></div><div><font color=3D"#=
000000" face=3D"Roboto, sans-serif"><span style=3D"font-size:14px"><br></sp=
an></font></div><div><font color=3D"#000000" face=3D"Roboto, sans-serif"><s=
pan style=3D"font-size:14px">In both cases=C2=A0 (with or without xtclpath =
present inside the PATH), I always get the problem with opening the Verilog=
 headers.</span></font></div><div><font color=3D"#000000" face=3D"Roboto, s=
ans-serif"><span style=3D"font-size:14px"><br></span></font></div><div>Do y=
ou have a specific shell that you<br>prepare for synthesis?<br></div><div>-=
--&gt; No, I am just using the official Linux VM installation of Xilinx ISE=
. I keep the shell=C2=A0environment=C2=A0by=C2=A0default.</div><div><font c=
olor=3D"#000000" face=3D"Roboto, sans-serif"><span style=3D"font-size:14px"=
><br></span></font></div><div><font color=3D"#000000" face=3D"Roboto, sans-=
serif"><span style=3D"font-size:14px">Regards,<br>Varban</span></font></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Sat, Dec 28, 2019 at 12:13 PM Marcus M=C3=BCller &lt;<a href=3D"mailto:=
marcus.mueller@ettus.com">marcus.mueller@ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi Varban,<br>
<br>
just a transient observation: your $PATH contains *a lot* of redundant<br>
ISE paths, as if some script kept recursively sourcing the xilinx<br>
settings. How are these set? Do you have a specific shell that you<br>
prepare for synthesis?<br>
<br>
Best regards,<br>
Marcus<br>
On Fri, 2019-12-27 at 12:47 +0000, Varban Metodiev via USRP-users<br>
wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I am trying to compile the FPGA image for a b205mini as per the<br>
&gt; official instructions. My environment looks like this:<br>
&gt; <br>
&gt; [ise@localhost b2xxmini]$ which xtclsh<br>
&gt; /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xtclsh<br>
&gt; [ise@localhost b2xxmini]$ pwd<br>
&gt; /home/ise/USRP/fpga/usrp3/top/b2xxmini<br>
&gt; <br>
&gt; [ise@localhost b2xxmini]$ echo $PATH<br>
&gt; /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/sys<=
br>
&gt; gen/util:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/bin:/opt/Xilinx/14.7/ISE_<=
br>
&gt; DS/ISE/../../../DocNav:/opt/Xilinx/14.7/ISE_DS/PlanAhead/bin:/opt/Xil<=
br>
&gt; inx/14.7/ISE_DS/EDK/bin/lin64:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microbl<=
br>
&gt; aze/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/powerpc-<br>
&gt; eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/<=
br>
&gt; 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili<=
br>
&gt; nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X<=
br>
&gt; ilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/li<=
br>
&gt; n64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/I<=
br>
&gt; SE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx<=
br>
&gt; /14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt<=
br>
&gt; /Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_D<=
br>
&gt; S/EDK/gnu/powerpc-<br>
&gt; eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/<=
br>
&gt; 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili<=
br>
&gt; nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X<=
br>
&gt; ilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/li<=
br>
&gt; n64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/I<=
br>
&gt; SE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx<=
br>
&gt; /14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt<=
br>
&gt; /Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_D<=
br>
&gt; S/EDK/gnu/powerpc-<br>
&gt; eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/<=
br>
&gt; 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili<=
br>
&gt; nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X<=
br>
&gt; ilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/li<=
br>
&gt; n64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/I<=
br>
&gt; SE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx<=
br>
&gt; /14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt<=
br>
&gt; /Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_D<=
br>
&gt; S/EDK/gnu/powerpc-<br>
&gt; eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/<=
br>
&gt; 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili<=
br>
&gt; nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X<=
br>
&gt; ilinx/14.7/ISE_DS/common/bin/lin64:/usr/lib64/qt-<br>
&gt; 3.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:<=
br>
&gt; /home/ise/bin:/home/ise/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xtclsh<br=
>
&gt; <br>
&gt; <br>
&gt; Upon starting the &quot;make B205mini&quot;, the header files inside<b=
r>
&gt; /fpga/usrp3/lib/ cannot be accessed.<br>
&gt; <br>
&gt; INFO:ProjectMgmt - Include file found:<br>
&gt;=C2=A0 =C2=A0 &#39;/home/ise/USRP/fpga/usrp3/lib/wishbone/i2c_master_de=
fines.v&#39; in<br>
&gt; file<br>
&gt;=C2=A0 =C2=A0 &quot;/home/ise/USRP/fpga/usrp3/lib/wishbone/i2c_master_b=
yte_ctrl.v&quot;<br>
&gt; line 73<br>
&gt; ERROR:ProjectMgmt - 1 error(s) found while parsing design hierarchy.<b=
r>
&gt; WARNING:ProjectMgmt - Circular Reference:<br>
&gt; work:Module|cam_priority_encoder<br>
&gt; &gt; &gt; &gt; Adding source to project:<br>
&gt; &gt; &gt; &gt; /home/ise/USRP/fpga/usrp3/lib/wishbone/axi_stream_to_wb=
.v<br>
&gt; INFO:HDLCompiler:1845 - Analyzing Verilog file<br>
&gt;=C2=A0 =C2=A0 &quot;/home/ise/USRP/fpga/usrp3/lib/packet_proc/source_fl=
ow_control.v&quot;<br>
&gt; into<br>
&gt;=C2=A0 =C2=A0 library work<br>
&gt; ERROR:HDLCompiler:281 -<br>
&gt;=C2=A0 =C2=A0 &quot;/home/ise/USRP/fpga/usrp3/lib/packet_proc/source_fl=
ow_control.v&quot;<br>
&gt; Line 55:<br>
&gt;=C2=A0 =C2=A0 Cannot open include file &quot;chdr_pkt_types.vh&quot;.<b=
r>
&gt; INFO:HDLCompiler:1845 - Analyzing Verilog file<br>
&gt;=C2=A0 =C2=A0 &quot;/home/ise/USRP/fpga/usrp3/lib/wishbone/axi_stream_t=
o_wb.v&quot; into<br>
&gt; library work<br>
&gt; ERROR:ProjectMgmt - 1 error(s) found while parsing design hierarchy.<b=
r>
&gt; WARNING:ProjectMgmt - Circular Reference:<br>
&gt; work:Module|cam_priority_encoder<br>
&gt; &gt; &gt; &gt; Adding source to project:<br>
&gt; &gt; &gt; &gt; /home/ise/USRP/fpga/usrp3/lib/timing/time_compare.v<br>
&gt; INFO:TclTasksC - File<br>
&gt; &quot;/home/ise/USRP/fpga/usrp3/lib/timing/time_compare.v&quot; is<br>
&gt;=C2=A0 =C2=A0 already present in the project<br>
&gt; <br>
&gt; May you please advise how add the search path correctly? Or maybe I<br=
>
&gt; have missed something in the environment configuration?<br>
&gt; <br>
&gt; Regards,<br>
&gt; Varban<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div>

--0000000000009e96e2059ac15a60--


--===============3502456090238604532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3502456090238604532==--

