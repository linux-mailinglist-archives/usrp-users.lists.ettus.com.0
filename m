Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAE81B182F
	for <lists+usrp-users@lfdr.de>; Mon, 20 Apr 2020 23:16:58 +0200 (CEST)
Received: from [::1] (port=33922 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQdme-0007QY-Hz; Mon, 20 Apr 2020 17:16:52 -0400
Received: from mail-lj1-f169.google.com ([209.85.208.169]:36847)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <coxe@close-haul.com>) id 1jQdma-0007Mq-N0
 for usrp-users@lists.ettus.com; Mon, 20 Apr 2020 17:16:48 -0400
Received: by mail-lj1-f169.google.com with SMTP id u15so11700913ljd.3
 for <usrp-users@lists.ettus.com>; Mon, 20 Apr 2020 14:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LwSCwpax5rl/hO/Dy2Sc33HmEjmIdAF9lmfGjjllQmY=;
 b=nodR4loQ0NuiyUHHuWk0TmEf6Z506f0taSKqvHDxtdv4YuirZI9qDIqhW5FAoMsj+A
 pDueHjtN8V/tsz4xK5UcPuGEW9LaphvAyiTvMKg7yD4MTTbbdWyXaSrQOnYoP+0iqVUM
 DNaxAJh83c1nvL84tcYwAFgik9AjRNJluRRJBuT+sP+5t2FzRc7PigKiBSYc8QqSxWmm
 /pRDM+fU+SXuBS1C40YeCgvil676agJiVQrn/8FCES1cVhuN6/yfygGTWDr2dcFiRW7Z
 nvKU1HqhbYLMP9ZbmFx/Esh8FybXjikqCmbK1zpxhBGZIFXuOiec3OUqFPVJ5kEC3Gpm
 qyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LwSCwpax5rl/hO/Dy2Sc33HmEjmIdAF9lmfGjjllQmY=;
 b=qrj1B30Spz4vKJFTci2EN4CKHBkmBoM7f7Cg2PMBUwu9l7p9+mlTp2UE9L1O1FUjXT
 K0C+W43jyAREAkswqmXLKejltPCV5QFNzSyxq+B9QhrNkhPKYG1QXPLXCmGaXhax+lnM
 vmdojguz2OpEv/wqrtjo8TDFrbiTgXCZgRbZF/dU/vnXbPAB7UUlyZ26qCrqZumm7JxI
 1BGq25tgLXkXMV6p8ZaxzhmJLhFnAT2I+VM+XIF0B3GbvcqNpnGq3Op9+5C6GuaV+k/8
 NKsBGFIJhiyuNmmXEG+dY1ADQKDs9IYEADGVaW3sXyLoe+ynoXUhifKbnvC82xWKoj8S
 aqXg==
X-Gm-Message-State: AGi0PubwGoPYtWps0g6e8kiF5Q1+ZDR8fR9QLbK4HdkRQbnPGkC+AsiJ
 wk/d9yQR7ZQsXfZTCwfzJf4Kdal8cKjlWzdMeFCM/6Hc
X-Google-Smtp-Source: APiQypKtYa9wylGvbPei4PpCVB4k53Ff5KxOunc/U3kPNEtOFrNGnmjXxsDN5gwYpAdXz7uq8AtXGUXSjoaBPub11TE=
X-Received: by 2002:a2e:8087:: with SMTP id i7mr8929308ljg.99.1587417367164;
 Mon, 20 Apr 2020 14:16:07 -0700 (PDT)
MIME-Version: 1.0
References: <eb1fa60c44c4410a814e83a4fdf45df9@MLBXCH12.cs.myharris.net>
In-Reply-To: <eb1fa60c44c4410a814e83a4fdf45df9@MLBXCH12.cs.myharris.net>
Date: Mon, 20 Apr 2020 14:15:56 -0700
Message-ID: <CAKJyDkLWFYmpgZPC_O=YL3P05bN0iTpCfonSFnE0V1ehvvCqDg@mail.gmail.com>
To: "Harris, Dan" <Dan.Harris@l3harris.com>
Subject: Re: [USRP-users] Cygwin build of E310_SG3
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2066323753856692383=="
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

--===============2066323753856692383==
Content-Type: multipart/alternative; boundary="00000000000047d44e05a3bf688b"

--00000000000047d44e05a3bf688b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What version of UHD are you using?  If memory serves, you'll need Vivado
2017.4 for UHD versions up to v.3.14.x.x.  v.3.15 uses 2018.3 I think.

On Mon, Apr 20, 2020 at 11:24 AM Harris, Dan via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>
> Is the windows Cygwin build of the E310_SG3 target being maintained?
>
>
>
> I have been following the build instructions and have Vivado 2019.1
> installed.  It is failing in multiple points in the generation of the IP.
> I had to correct some paths that should have been windows-ized but did no=
t
> seem to be in tools/make/viv_hls_ip_builder.mak.
>
>
>
> I can build at least one of the components (IP fifo_short_2clk), so I am
> somewhat confident that Vivado is installed correctly, and that my =E2=80=
=98source
> setupenv.sh=E2=80=99 was done properly.
>
>
>
> However now I am getting this error which is just impenetrable (this is
> with a clean git pull, not the changes I reference above):
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> BUILDER: Building IP mig_7series_0 - zynq xc7z020/clg484/-3
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> BUILDER: Staging IP in build directory...
>
> BUILDER: Reserving IP location:
> /cygdrive/c/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/build-=
ip/xc7z020clg484-3/mig_7series_0
>
> BUILDER: Retargeting IP to part zynq/xc7z020/clg484/-3...
>
> BUILDER: Building IP...
>
> [00:00:00] Executing command: vivado -mode batch -source
> C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/tools/scripts/viv_genera=
te_ip.tcl
> -log mig_7series_0.log -nojournal
>
> [00:00:47] Current task: Initialization +++ Current Phase: Starting
>
> [00:00:48] Current task: Initialization +++ Current Phase: Finished
>
> [00:00:48] Process terminated. Status: Failure
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> Warnings:           0
>
> Critical Warnings:  0
>
> Errors:             0
>
>
>
> BUILDER: Releasing IP location:
> /cygdrive/c/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/build-=
ip/xc7z020clg484-3/mig_7series_0
>
> make[1]: ***
> [/cygdrive/c/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/ip/mi=
g_7series_0/Makefile.inc:32:
> /cygdrive/c/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/build-=
ip/xc7z020clg484-3/mig_7series_0/mig_7series_0.xci]
> Error 1
>
> make[1]: Leaving directory
> '/cygdrive/c/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x'
>
> make: *** [Makefile:71: E310_SG3] Error 2
>
>
>
>
>
> build-ip/xc7z020clg484-3/ mig_7series_0.log is not helpful:
>
>
>
> #-----------------------------------------------------------
>
> # Vivado v2019.1 (64-bit)
>
> # SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
>
> # IP Build 2548770 on Fri May 24 18:01:18 MDT 2019
>
> # Start of session at: Mon Apr 20 19:14:06 2020
>
> # Process ID: 181720
>
> # Current directory:
> C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z02=
0clg484-3
>
> # Command line: vivado.exe -mode batch -source
> C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/tools/scripts/viv_genera=
te_ip.tcl
> -log mig_7series_0.log -nojournal
>
> # Log file:
> C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z02=
0clg484-3/mig_7series_0.log
>
> # Journal file:
>
> #-----------------------------------------------------------
>
> source
> C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/tools/scripts/viv_genera=
te_ip.tcl
>
> # set xci_file         $::env(XCI_FILE)               ;
>
> # set part_name        $::env(PART_NAME)              ;
>
> # set gen_example_proj $::env(GEN_EXAMPLE)            ;
>
> # set synth_ip         $::env(SYNTH_IP)               ;
>
> # set ip_name [file rootname [file tail $xci_file]]   ;
>
> # file delete -force "$xci_file.out"
>
> # create_project -part $part_name -in_memory -ip
>
> # set_property target_simulator XSim [current_project]
>
> # add_files -norecurse -force $xci_file
>
> INFO: [IP_Flow 19-234] Refreshing IP repositories
>
> INFO: [IP_Flow 19-1704] No user IP repositories specified
>
> INFO: [IP_Flow 19-2313] Loaded Vivado IP repository
> 'C:/Xilinx/Vivado/2019.1/data/ip'.
>
>
>
>
>
> There appears to be an error file and a core file:
>
> $ cat hs_err_pid181720.log
>
> #
>
> # An unexpected error has occurred (EXCEPTION_ACCESS_VIOLATION)
>
> #
>
> Stack:
>
> no stack trace available, please use hs_err_<pid>.dmp instead.
>
>
>
>
>
> Is this build maintained enough to use? Because of my limited setup at
> home, I really don=E2=80=99t want to spin up a new server or VM for this,=
 but if it
> is required then I guess I will.
>
>
>
> Thanks,
>
> Dan Harris
>
>
> CONFIDENTIALITY NOTICE: This email and any attachments are for the sole
> use of the intended recipient and may contain material that is proprietar=
y,
> confidential, privileged or otherwise legally protected or restricted und=
er
> applicable government laws. Any review, disclosure, distributing or other
> use without expressed permission of the sender is strictly prohibited. If
> you are not the intended recipient, please contact the sender and delete
> all copies without reading, printing, or saving.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000047d44e05a3bf688b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What version of UHD are you using?=C2=A0 If memory serves,=
 you&#39;ll need Vivado 2017.4 for UHD versions up to v.3.14.x.x.=C2=A0 v.3=
.15 uses 2018.3 I think.</div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon, Apr 20, 2020 at 11:24 AM Harris, Dan via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-7743731064311089702WordSection1">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is the windows Cygwin build of the E310_SG3 target b=
eing maintained?
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have been following the build instructions and hav=
e Vivado 2019.1 installed.=C2=A0 It is failing in multiple points in the ge=
neration of the IP.=C2=A0 I had to correct some paths that should have been=
 windows-ized but did not seem to be in tools/make/viv_hls_ip_builder.mak.<=
u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I can build at least one of the components (<span st=
yle=3D"font-size:9pt;font-family:&quot;Lucida Console&quot;">IP fifo_short_=
2clk</span>), so I am somewhat confident that Vivado is installed correctly=
, and that my =E2=80=98source
 setupenv.sh=E2=80=99 was done properly.<span style=3D"font-size:9pt;font-f=
amily:&quot;Lucida Console&quot;"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">However now I am getting this error which is just im=
penetrable (this is with a clean git pull, not the changes I reference abov=
e):<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">BUILDER: Building IP mig_7series_0 - zynq xc7z020/clg484/-=
3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">BUILDER: Staging IP in build directory...<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">BUILDER: Reserving IP location: /cygdrive/c/Users/user/Doc=
uments/e310/usrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/mig_7seri=
es_0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">BUILDER: Retargeting IP to part zynq/xc7z020/clg484/-3...<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">BUILDER: Building IP...<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;;color:rgb(96,96,255)">[00:00:00] Executing command: vivado =
-mode batch -source C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/tools/=
scripts/viv_generate_ip.tcl
 -log mig_7series_0.log -nojournal<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">[00:00:47] Current task: Initialization +++ Current Phase:=
 Starting<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">[00:00:48] Current task: Initialization +++ Current Phase:=
 Finished<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;;color:rgb(255,64,64)">[00:00:48] Process terminated. Status=
: Failure<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;;color:rgb(255,64,64)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">Warnings:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">Critical Warnings:=C2=A0 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">Errors:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">BUILDER: Releasing IP location: /cygdrive/c/Users/user/Doc=
uments/e310/usrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/mig_7seri=
es_0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">make[1]: *** [/cygdrive/c/Users/user/Documents/e310/usrp/u=
hd/fpga/usrp3/top/e31x/ip/mig_7series_0/Makefile.inc:32: /cygdrive/c/Users/=
user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/m=
ig_7series_0/mig_7series_0.xci]
 Error 1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">make[1]: Leaving directory &#39;/cygdrive/c/Users/user/Doc=
uments/e310/usrp/uhd/fpga/usrp3/top/e31x&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">make: *** [Makefile:71: E310_SG3] Error 2<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">build-ip/xc7z020clg484-3/ mig_7series_0.log is not helpful=
:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">#---------------------------------------------------------=
--<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># Vivado v2019.1 (64-bit)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># SW Build 2552052 on Fri May 24 14:49:42 MDT 2019<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># IP Build 2548770 on Fri May 24 18:01:18 MDT 2019<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># Start of session at: Mon Apr 20 19:14:06 2020<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># Process ID: 181720<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># Current directory: C:/Users/user/Documents/e310/usrp/uhd=
/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># Command line: vivado.exe -mode batch -source C:/Users/us=
er/Documents/e310/usrp/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -lo=
g mig_7series_0.log
 -nojournal<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># Log file: C:/Users/user/Documents/e310/usrp/uhd/fpga/usr=
p3/top/e31x/build-ip/xc7z020clg484-3/mig_7series_0.log<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># Journal file:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">#---------------------------------------------------------=
--<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">source C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/to=
ols/scripts/viv_generate_ip.tcl<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># set xci_file=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 $::env(XCI_FILE)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># set part_name=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
$::env(PART_NAME)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># set gen_example_proj $::env(GEN_EXAMPLE)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ;<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># set synth_ip=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0$::env(SYNTH_IP)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># set ip_name [file rootname [file tail $xci_file]]=C2=A0=
=C2=A0 ;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># file delete -force &quot;$xci_file.out&quot;<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># create_project -part $part_name -in_memory -ip<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># set_property target_simulator XSim [current_project]<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># add_files -norecurse -force $xci_file<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">INFO: [IP_Flow 19-234] Refreshing IP repositories<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">INFO: [IP_Flow 19-1704] No user IP repositories specified<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">INFO: [IP_Flow 19-2313] Loaded Vivado IP repository &#39;C=
:/Xilinx/Vivado/2019.1/data/ip&#39;.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal">There appears to be an error file and a core file: <=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">$ cat hs_err_pid181720.log<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">#<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;"># An unexpected error has occurred (EXCEPTION_ACCESS_VIOLA=
TION)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">#<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">Stack:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Lucid=
a Console&quot;">no stack trace available, please use hs_err_&lt;pid&gt;.dm=
p instead.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is this build maintained enough to use? Because of m=
y limited setup at home, I really don=E2=80=99t want to spin up a new serve=
r or VM for this, but if it is required then I guess I will.<u></u><u></u><=
/p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Dan Harris<u></u><u></u></p>
</div>
<span><span><br>=C2=A0</span>=C2=A0</span><br>
<div><span style=3D"font-family:&quot;Times New Roman&quot;"><span style=3D=
"font-size:14px">CONFIDENTIALITY NOTICE: This email and any attachments are=
 for the sole use of the intended recipient and may contain material that i=
s proprietary, confidential, privileged or otherwise legally protected or r=
estricted under applicable government laws. Any review, disclosure, distrib=
uting or other use without expressed permission of the sender is strictly p=
rohibited. If you are not the intended recipient, please contact the sender=
 and delete all copies without reading, printing, or saving.</span></span>
<div style=3D"font-size:14px;font-family:&quot;Times New Roman&quot;"><br><=
/div></div></div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000047d44e05a3bf688b--


--===============2066323753856692383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2066323753856692383==--

