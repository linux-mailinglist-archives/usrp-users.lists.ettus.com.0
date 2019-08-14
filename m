Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6FD8CF10
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 11:09:23 +0200 (CEST)
Received: from [::1] (port=42102 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxpHU-0001Uk-Hb; Wed, 14 Aug 2019 05:09:20 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:43118)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <emil.bjelski@gmail.com>)
 id 1hxpHR-0001QM-Ib
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 05:09:17 -0400
Received: by mail-ot1-f45.google.com with SMTP id e12so36409464otp.10
 for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2019 02:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hKIC6a4X+QcfRiSpqm5YyFVCWE/XEJgVufZcWb5WHEE=;
 b=O/gaCjaNtL+poCDBTFjCiKlUZjeRnQ3HlZxgk6F/3y47z3F9Ys296yZk+dvAbrsrwa
 0bf9ICvGpwdmF1JKBgsV7DjQ1ItGKmQDgsEi9rMsOlAayMhBiIaMAPRNTBAVcStq2BdJ
 WQ399QjlyZHVC/maD6IPxXUP93ZWg02KagO2jwZZ+dzLkb7+uv9Fodm7V7FTYsNWXUBe
 j0ts1lHHRuw5ih7Sxto6aRg+Vlr5+HWamUFxu3P02MuB5LoIZ+1qQ/iDnXstyYdq6D+/
 51w1FMz4sfe4SJh2+80SVrIDunsG7jUKOAdw9ojoqWuv/VTQy+I15puMxvh4nAJ7b3ri
 hF9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hKIC6a4X+QcfRiSpqm5YyFVCWE/XEJgVufZcWb5WHEE=;
 b=ML9sgJqYSFI5HSx1R8HBciCYnnoyWu8iL1dLa3UGdPs6/JhMzNJuGNMwTQw8xFQ+9x
 B2UZxZd56XxJ7pb3U2IqVkE54ufon9W9hMcwjcbaAvo3ur6DXfUqU2ZqDVMqwF6GnXis
 WNA2fwAnXL4hTaGvAaMvufNZo7DZeP96S6ABrIC5tXl/0Ic3TSw8LocqzEUBwCnuUr/U
 YbpjKk+dmxbXXNg4YuVdP6NhZ77ivZuaOiJPB2s8Ihk1ySPkJuH7SB85hSCAQsil3ipA
 /59D23bUgFlZDp1xAAcv9EzoQuULtedSqr8BrnGu72HcTXddkpC2Pyoluh/Er5fmN5ts
 /3uw==
X-Gm-Message-State: APjAAAWxOwh08AnI9hAV54UnavFPx/qDv0Olr+0Gnv9ZnCb44jzOmGbn
 rFe6o6yvzu5a56NeytBeWnnkrPLYFN2uRjD72Z0=
X-Google-Smtp-Source: APXvYqyI7B/uzIHXP3tG/eXWBed15sValTovuqmml5NQS4PJVZjWULiYxIsOri/zUHB1qrqn0MG7zbvU2T5KmHdJ/ow=
X-Received: by 2002:a9d:17e6:: with SMTP id j93mr38546709otj.275.1565773716854; 
 Wed, 14 Aug 2019 02:08:36 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxUKJk6Em7Mk8R-tD_N9taR=ZyVAXbutKcNGNBsnjDi9NQ@mail.gmail.com>
 <fcf49dc3-c5b0-4020-b38a-eb47b87ec8c7@www.fastmail.com>
 <CADrptxURrkg82rUbQwHHWiV3jFn2-mGSEPO9tyqZ+DvxSEKJBg@mail.gmail.com>
 <c0a28d10-1f50-46e4-9131-6df3c2dbee0a@www.fastmail.com>
In-Reply-To: <c0a28d10-1f50-46e4-9131-6df3c2dbee0a@www.fastmail.com>
Date: Wed, 14 Aug 2019 11:08:24 +0200
Message-ID: <CADrptxW3Hu2HFMkwf0qGo67Q2WP-FzM5ZSarY2D2pJifAP-rdA@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Subject: Re: [USRP-users] Compiling UHD examples errors
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
From: Emil Bjelski via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emil Bjelski <emil.bjelski@gmail.com>
Cc: USRP Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3787094846905211550=="
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

--===============3787094846905211550==
Content-Type: multipart/alternative; boundary="000000000000311db90590101a56"

--000000000000311db90590101a56
Content-Type: text/plain; charset="UTF-8"

Hi,
I want to compile and install one of the existing example scripts that are
located in */rfnoc/src/uhd/host/examples/*.
As a first step, I decided to use existing CMakeLists.txt for init_usrp.

However, after calling in */rfnoc/src/uhd/host/examples/init_usrp*

*cmake ../*

I get error:









*CMake Error at CMakeLists.txt:52 (UHD_INSTALL):  Unknown CMake command
"UHD_INSTALL".CMake Warning (dev) in CMakeLists.txt:  No
cmake_minimum_required command is present.  A line of code such as
cmake_minimum_required(VERSION 3.3)*...


On Tue, Aug 13, 2019 at 7:31 PM Michael Dickens <michael.dickens@ettus.com>
wrote:

> OK; that OS is great for GR / UHD / RFNoC work. What step are you on in
> the guide?
>
> On Tue, Aug 13, 2019, at 12:51 PM, Emil Bjelski wrote:
>
> Hello Michael,
>
> I am using Ubuntu 18.04.2 LTS.
>
> I installed UHD, GnuRadio and RFNoC using pybombs by following "Getting
> stared with RFNoC development tutorial":
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
> Kind Regards,
>
> Emil
>
>
>

--000000000000311db90590101a56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I want to compile and install one of the existing =
example scripts that are located in <b>/rfnoc/src/uhd/host/examples/</b>.</=
div><div>As a first step, I decided to use existing CMakeLists.txt for init=
_usrp.</div><div><br></div><div>However, after calling in <b>/rfnoc/src/uhd=
/host/examples/init_usrp</b></div><div><br></div><div><b>cmake ../</b></div=
><div><br></div><div>I get error:</div><div><br></div><div><i>CMake Error a=
t CMakeLists.txt:52 (UHD_INSTALL):<br>=C2=A0 Unknown CMake command &quot;UH=
D_INSTALL&quot;.<br><br><br>CMake Warning (dev) in CMakeLists.txt:<br>=C2=
=A0 No cmake_minimum_required command is present.=C2=A0 A line of code such=
 as<br><br>=C2=A0 =C2=A0 cmake_minimum_required(VERSION 3.3)<br></i>...</di=
v><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Aug 13, 2019 at 7:31 PM Michael Dickens &lt;<a hre=
f=3D"mailto:michael.dickens@ettus.com">michael.dickens@ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u><div=
><div style=3D"font-family:Arial">OK; that OS is great for GR / UHD / RFNoC=
 work. What step are you on in the guide?<br></div><div style=3D"font-famil=
y:Arial"><br></div><div>On Tue, Aug 13, 2019, at 12:51 PM, Emil Bjelski wro=
te:<br></div><blockquote type=3D"cite" id=3D"gmail-m_-4353082716963983050qt=
"><div dir=3D"ltr"><div>Hello Michael,<br></div><div><br></div><div>I am us=
ing Ubuntu 18.04.2 LTS.<br></div><div><br></div><div>I installed UHD, GnuRa=
dio and RFNoC using pybombs by following &quot;Getting stared with RFNoC de=
velopment tutorial&quot;:<br></div><div><a href=3D"https://kb.ettus.com/Get=
ting_Started_with_RFNoC_Development" target=3D"_blank">https://kb.ettus.com=
/Getting_Started_with_RFNoC_Development</a><br></div><div><br></div><div>Ki=
nd Regards,<br></div><div><br></div><div>Emil<br></div></div></blockquote><=
div style=3D"font-family:Arial"><br></div></div></blockquote></div>

--000000000000311db90590101a56--


--===============3787094846905211550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3787094846905211550==--

