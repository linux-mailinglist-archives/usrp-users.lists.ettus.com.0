Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 963688BEFD
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2019 18:52:10 +0200 (CEST)
Received: from [::1] (port=48354 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxa1o-0001To-Hb; Tue, 13 Aug 2019 12:52:08 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:45800)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <emil.bjelski@gmail.com>)
 id 1hxa1k-0001Lf-Mc
 for usrp-users@lists.ettus.com; Tue, 13 Aug 2019 12:52:04 -0400
Received: by mail-ot1-f51.google.com with SMTP id m24so22103194otp.12
 for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2019 09:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fopgh1hZqa/KVUw++FtQqG7aZi/lXt0FiZCIag0cDAg=;
 b=TM7w3dhHF/FW0lny3ddcjAwdjB8QMNTx6lZf9PXyBSIRStAE0DTtoxUNqY+jgHl+8Y
 kky+/hlVwQDNuJYRY0q9dZse91yqx4MDTktTZb1cKwiwIsQ/WtSjNCflxzakzG9EsJf0
 YmWRS5VxG/REFYEqsL2CGPG66lWsdBbqCsBB1T+NmXVrn2UxyjkPyZHMwsH0YXpe8PRh
 TrEe21tJSb8XUwnD638SgNmsT5T6SnYuMRU0yFKoNxjqNg9F2cyxbvjLpZ5CsTqHMid7
 ACUBRrx36/Zr6GdxAC8mtyCUJ63apS3vhh6iBWMINleGfOlr1ilZIwevl78KDGB+/ec3
 QFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fopgh1hZqa/KVUw++FtQqG7aZi/lXt0FiZCIag0cDAg=;
 b=JPYwTRIjczf/hNalIJG1zA64447zBPskg1BdI9ktgYCgJstbrNj+W8XDb9HPc4QMHA
 j026rWQK96UvJOVdZ/lrMfUV4iLbzg7kAbP4Yi3mZRfwuhz3y/LVDUeOdmqxVImJohTG
 crVGzlAZiUBGNhczVG8Cl1JJ88j2y12s5C6akclP7abUNmGopELEzIgiDKNZojA5r1Yo
 JYlwRri61D5YLu77PkGWtlxlLM/OPLpW0iBtlaLOp7fKKFlgAjQ2oo67/FdFm+RKhaH6
 gajUU1Z4F0ep2DpAoD57QosQncWrSNNlWSOc1QzQhQwZSbywVSs8HfutKVDT4LpNkX+v
 5vtA==
X-Gm-Message-State: APjAAAU6cIGcmVQcIBLm2JCZK1lWKEun9M758jgJc2nMvhlOnxoIQqjs
 749YGV363l2HHVvGuw1vy1qOyWuirhxdgyOi8U4=
X-Google-Smtp-Source: APXvYqysTaPnjANSjFg1h16phbsOkaATVZP7g6MhXA6n3DkacZWKkmKRPhu9EO4Uw+nMfKc9h2YLADVZZ8E0AcqscpA=
X-Received: by 2002:aca:f443:: with SMTP id s64mr2127641oih.108.1565715083996; 
 Tue, 13 Aug 2019 09:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxUKJk6Em7Mk8R-tD_N9taR=ZyVAXbutKcNGNBsnjDi9NQ@mail.gmail.com>
 <fcf49dc3-c5b0-4020-b38a-eb47b87ec8c7@www.fastmail.com>
In-Reply-To: <fcf49dc3-c5b0-4020-b38a-eb47b87ec8c7@www.fastmail.com>
Date: Tue, 13 Aug 2019 18:51:12 +0200
Message-ID: <CADrptxURrkg82rUbQwHHWiV3jFn2-mGSEPO9tyqZ+DvxSEKJBg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4761749092795228701=="
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

--===============4761749092795228701==
Content-Type: multipart/alternative; boundary="00000000000066b34c0590027322"

--00000000000066b34c0590027322
Content-Type: text/plain; charset="UTF-8"

Hello Michael,

I am using Ubuntu 18.04.2 LTS.

I installed UHD, GnuRadio and RFNoC using pybombs by following "Getting
stared with RFNoC development tutorial":
https://kb.ettus.com/Getting_Started_with_RFNoC_Development

Kind Regards,

Emil

On Tue, Aug 13, 2019 at 5:12 PM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Emil - Can you tell us what OS you're using for the UHD host computer?
> If you're trying to compile UHD from source, which version of UHD (release
> / GIT / version). Those are useful starting points. Cheers! - MLD
>
> On Tue, Aug 13, 2019, at 10:47 AM, Emil Bjelski via USRP-users wrote:
>
> Hello everyone,
>
> I trying to compile UHD examples following tutorial provided here:
> https://kb.ettus.com/Getting_Started_with_UHD_and_C%2B%2B
>
> However, I am facing issue when runining:
> cmake ../
>
> I get this error:
> CMake Error at CMakeLists.txt:52 (UHD_INSTALL):
>   Unknown CMake command "UHD_INSTALL".
>
> -- Configuring incomplete, errors occurred!
>
>
> I am sure that uhd is installed as I am able to execute command
> uhd_find devices.
>
> What could be the issue?
>
> Thanks,
>
> Emil
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>

--00000000000066b34c0590027322
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Michael,</div><div><br></div><div>I am using Ub=
untu 18.04.2 LTS.</div><div><br></div><div>I installed UHD, GnuRadio and RF=
NoC using pybombs by following &quot;Getting stared with RFNoC development =
tutorial&quot;:</div><div><a href=3D"https://kb.ettus.com/Getting_Started_w=
ith_RFNoC_Development" target=3D"_blank">https://kb.ettus.com/Getting_Start=
ed_with_RFNoC_Development</a></div><div><br></div><div>Kind Regards,</div><=
div><br></div><div>Emil</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 13, 2019 at 5:12 PM Michael Dicke=
ns &lt;<a href=3D"mailto:michael.dickens@ettus.com">michael.dickens@ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><u></u><div><div style=3D"font-family:Arial">Hi Emil - Can you tell us wh=
at OS you&#39;re using for the UHD host computer? If you&#39;re trying to c=
ompile UHD from source, which version of UHD (release / GIT / version). Tho=
se are useful starting points. Cheers! - MLD<br></div><div style=3D"font-fa=
mily:Arial"><br></div><div style=3D"font-family:Arial"><span style=3D"font-=
size:0.875rem;font-family:&quot;Source Sans Pro&quot;,sans-serif">On Tue, A=
ug 13, 2019, at 10:47 AM, Emil Bjelski via USRP-users wrote:</span><br></di=
v><blockquote type=3D"cite" id=3D"gmail-m_3781658891793577393qt"><div dir=
=3D"ltr"><div>Hello everyone, <br></div><div><br></div><div>I trying to com=
pile UHD examples following tutorial provided here:<br></div><div><a href=
=3D"https://kb.ettus.com/Getting_Started_with_UHD_and_C%2B%2B" target=3D"_b=
lank">https://kb.ettus.com/Getting_Started_with_UHD_and_C%2B%2B</a><br></di=
v><div><br></div><div>However, I am facing issue when runining:<br></div><d=
iv>cmake ../<br></div><div><br></div><div>I get this error:<br></div><div><=
div style=3D"font-family:Arial">CMake Error at CMakeLists.txt:52 (UHD_INSTA=
LL):<br></div><div style=3D"font-family:Arial">=C2=A0 Unknown CMake command=
 &quot;UHD_INSTALL&quot;.<br></div><div style=3D"font-family:Arial"><br></d=
iv><div style=3D"font-family:Arial">-- Configuring incomplete, errors occur=
red!<br></div></div><div><br></div><div><br></div><div>I am sure that uhd i=
s installed as I am able to execute command<br></div><div>uhd_find devices.=
<br></div><div><br></div><div>What could be the issue?<br></div><div><br></=
div><div>Thanks,<br></div><div><br></div><div>Emil<br></div></div><div>____=
___________________________________________<br></div><div>USRP-users mailin=
g list<br></div><div><a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a><br></div><div><a href=3D"http://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_bla=
nk">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br></div><div><br></div></blockquote><div style=3D"font-family:Arial"><br><=
/div></div></blockquote></div>

--00000000000066b34c0590027322--


--===============4761749092795228701==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4761749092795228701==--

