Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE2E10F310
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2019 00:00:52 +0100 (CET)
Received: from [::1] (port=43270 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ibugU-0006yi-BW; Mon, 02 Dec 2019 18:00:50 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:38389)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ibugQ-0006v0-Nm
 for usrp-users@lists.ettus.com; Mon, 02 Dec 2019 18:00:46 -0500
Received: by mail-oi1-f179.google.com with SMTP id b8so1402381oiy.5
 for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2019 15:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D93Cp8JkVqrSlRAN4s0qY7yrlDni91WomivKzHYoQDo=;
 b=y64p7y2paok71Ti7eIz7r6hkqNahdwAlgmN6uuKXa6X3R0xPsfw41ikbgEQebhSdIM
 hbZFUnUKcuyZmO9CJ6jFptbvbzxxNCWtp9+RB0IJda3vUrCXhtMmld9NT7N6CGCTYWWI
 63VKwuBYbsI4sUJi8B6bK4MxgQAtpEjFunL+BEVpsqcURWIkiCo0wpqU09+EQDfdhKP+
 4PxFITWKYoGgHPptbum9LuOqiySq7ZltZS8cQ4QEOYaeWw6D9Ma+p7AEVJfNrz4FGDxo
 d2nR+GbCBQLrPNV1S1fj564sZH2+N0EkBrG04w6ZSgm+MemFQJaK3Pj/KJr1QBVEa5nG
 rUNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D93Cp8JkVqrSlRAN4s0qY7yrlDni91WomivKzHYoQDo=;
 b=lP6DgRL/v9KB/zsg5xE89rT+DCdjb2G6QPLWMZMjBNrHKXcEP2TUaOfFU9xIojzx4J
 BZOM8YndsKCMFb63B+ci21n634yCpYkF3Rpe/ONd838qEtu/m9MfCfevdctyZ7slaQS1
 1LxyMtRZ27JXo7pG88hwqso8G595bA2k+sldaESlxa84LZXGv3viTyEWMxXkFlxBfEyB
 KReVDrepkzQqMK17ROan1PtkK49SqSWqxMiqrh0nSubjDdb0+5QAOKcSHWMeYkkSG1lJ
 U5RyttCsqaMj16tcs5bc0CqkV5sz/eE97aK17nzklHMGZf1gUPuLro3Gu52Rw3Hrbkrg
 7eLQ==
X-Gm-Message-State: APjAAAUK/DZ6HwLs8cnDnecdnwu3A2RQmqaX0JYBcZRxExANhq3/kMH/
 0p/j6DyadGL74Uyv1WXJ0BLD0nZkNpqRfFXZNq7McGKLU8dEWA==
X-Google-Smtp-Source: APXvYqzn2h1BbFBN05dQJgZKLrYjSZHDW91WJcv6g+UocTAYiwJRZ2I34ECkXIO9TQEHwQb82oHPL1FsvfT2I/K3LNE=
X-Received: by 2002:aca:af54:: with SMTP id y81mr1214730oie.154.1575327605911; 
 Mon, 02 Dec 2019 15:00:05 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR16MB3485E9A8D33B3EF1F7700E9AB74A0@MN2PR16MB3485.namprd16.prod.outlook.com>
In-Reply-To: <MN2PR16MB3485E9A8D33B3EF1F7700E9AB74A0@MN2PR16MB3485.namprd16.prod.outlook.com>
Date: Mon, 2 Dec 2019 15:01:09 -0800
Message-ID: <CAL263iyPEOmBLz63fGL7tkWwqW4XRkU5qLWwgLrh09VFFtNogw@mail.gmail.com>
To: Michael Bassi <mbassi@srcaus.com>
Subject: Re: [USRP-users] Custom OOT C++ on USRP
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
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4733588789047894839=="
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

--===============4733588789047894839==
Content-Type: multipart/alternative; boundary="0000000000005b09db0598c08ab0"

--0000000000005b09db0598c08ab0
Content-Type: text/plain; charset="UTF-8"

Hi Michael,

Please see this app note which covers cross compiling UHD/GR/gr-ettus.

You can treat your OOT the same as gr-ettus.

https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#SDK_Setup

https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Cross-Compiling_gr-ettus

Regards,
Nate Temple

On Mon, Nov 25, 2019 at 3:09 PM Michael Bassi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
>
> I have created my first GNU Radio Out of Tree (OOT) module in C++
> I have tested it in GNU Radio Companion (GRC) and it works as expected.
> I would now like to run it from my USRP device (E312).
> Currently my USRP does not recognize my custom module. Which makes sense!
> It is not a part of the GNU library....
> I have tried copying my gr-custom_module across to the device root
> directory, but obviously the dependencies are not setup.
> I have then tried running the standard cmake commands from the build
> directory (on the USRP), but these don't work.
>
> I got some tips on stack-overflow:
>
> https://stackoverflow.com/questions/58794210/running-a-gnu-radio-custom-out-of-tree-oot-module-on-a-usrp-device/58808077?noredirect=1#comment103906511_58808077
>
> I was told to:
>
>    - Set up a cross-compilation tool-chain on my PC,
>    - Cross-compile my module, and
>    - install it to the correct directory structure, finally
>    - copying over the thus generated filesystem tree to your device
>
> How do I do this?
>
> I'm currently reading this wiki
> https://wiki.gnuradio.org/index.php/Cross_compile_GNU_Radio_and_install_on_target.
> It says:
> We have our environment set up such that we've run the environment script
> provided by the SDK and we can talk to the device. To build the program, we
> just need to follow standard instructions for our build system to make sure
> it uses the right tools from the SDK. The environmental variables take care
> of a great many of these issues. For CMake-based projects like GNU Radio
> and GNU Radio out-of-tree modules, we also provide a toolchain file.
> Setting up the project is then as simple as: (and then some special cmake
> commands)
>
> What is this "environment script provided by the SDK"?
> I can currently connect to my device via ssh. Though I'm assuming this is
> something different?
> "we just need to follow standard instructions..." - what standard
> instructions"
> what toolchain file?
>
> Thanks again for any help!
> Mike
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005b09db0598c08ab0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Michael,<br><br>Please see this app note which cover=
s cross compiling UHD/GR/gr-ettus. <br><br>You can treat your OOT the same =
as gr-ettus.<br><br><a href=3D"https://kb.ettus.com/Software_Development_on=
_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#SDK_=
Setup">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Buildin=
g_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#SDK_Setup</a><br><br><a href=
=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_R=
FNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Cross-Compiling_gr-ettus">https=
://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_=
/_GNU_Radio_/_gr-ettus_from_Source#Cross-Compiling_gr-ettus</a><br><br>Rega=
rds,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Mon, Nov 25, 2019 at 3:09 PM Michael Bassi via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
<div>
<p>Hi all, <br>
</p>
<p><br>
</p>
<p>I have created my first GNU Radio Out of Tree (OOT) module in C++</p>
I have tested it in GNU Radio Companion (GRC) and it works as expected. <br=
>
</div>
<div>I would now like to run it from my USRP device (E312). <br>
</div>
<div>Currently my USRP does not recognize my custom module. Which makes sen=
se! It is not a part of the GNU library....</div>
<div>I have tried copying my gr-custom_module across to the device root dir=
ectory, but obviously the dependencies are not setup.</div>
<div>I have then tried running the standard cmake commands from the build d=
irectory (on the USRP), but these don&#39;t work.
<br>
</div>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
<br>
<div><span style=3D"color:rgb(0,0,0)">I got some tips on stack-overflow:</s=
pan><span style=3D"color:rgb(12,100,192)"><br>
</span></div>
<div><span style=3D"color:rgb(12,100,192)"></span><a href=3D"https://stacko=
verflow.com/questions/58794210/running-a-gnu-radio-custom-out-of-tree-oot-m=
odule-on-a-usrp-device/58808077?noredirect=3D1#comment103906511_58808077" i=
d=3D"gmail-m_3157413887527700861LPlnk235043" target=3D"_blank">https://stac=
koverflow.com/questions/58794210/running-a-gnu-radio-custom-out-of-tree-oot=
-module-on-a-usrp-device/58808077?noredirect=3D1#comment103906511_58808077<=
/a></div>
<div><br>
</div>
<div>I was told to:<br>
<ul>
<li>Set up a cross-compilation tool-chain on my PC,</li><li>Cross-compile m=
y module, and </li><li>install it to the correct directory structure, final=
ly</li><li>copying over the thus generated filesystem tree to your device</=
li></ul>
</div>
How do I do this? <br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
I&#39;m currently reading this wiki <a href=3D"https://wiki.gnuradio.org/in=
dex.php/Cross_compile_GNU_Radio_and_install_on_target" id=3D"gmail-m_315741=
3887527700861LPNoLP831107" target=3D"_blank">
https://wiki.gnuradio.org/index.php/Cross_compile_GNU_Radio_and_install_on_=
target</a>. It says:<br>
</div>
<div><span style=3D"color:rgb(12,100,192)">We have our environment set up s=
uch that we&#39;ve run the environment script provided by the SDK and we ca=
n talk to the device. To build the program, we just need to follow standard=
 instructions for our build system
 to make sure it uses the right tools from the SDK. The environmental varia=
bles take care of a great many of these issues. For CMake-based projects li=
ke GNU Radio and GNU Radio out-of-tree modules, we also provide a toolchain=
 file. Setting up the project is
 then as simple as:</span><span style=3D"color:rgb(0,0,0)"></span><span sty=
le=3D"color:rgb(0,0,0)"> (and then some special cmake commands)</span></div=
>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
What is this &quot;<span style=3D"color:rgb(12,100,192)">environment script=
 provided by the SDK</span>&quot;?
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
I can currently connect to my device via ssh. Though I&#39;m assuming this =
is something different?
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
<span style=3D"color:rgb(0,0,0)">&quot;</span><span style=3D"color:rgb(12,1=
00,192)">we just need to follow standard instructions..</span>.&quot; - wha=
t standard instructions&quot;
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
what <span style=3D"color:rgb(12,100,192)">toolchain file</span>? <br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
Thanks again for any help!</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
Mike<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:11pt;color=
:rgb(0,0,0)">
<br>
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

--0000000000005b09db0598c08ab0--


--===============4733588789047894839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4733588789047894839==--

