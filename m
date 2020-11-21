Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 975762BC1BE
	for <lists+usrp-users@lfdr.de>; Sat, 21 Nov 2020 20:44:17 +0100 (CET)
Received: from [::1] (port=59716 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgYnj-0002ND-OV; Sat, 21 Nov 2020 14:44:03 -0500
Received: from mail-vs1-f42.google.com ([209.85.217.42]:43328)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kgYnf-0002H7-JL
 for usrp-users@lists.ettus.com; Sat, 21 Nov 2020 14:43:59 -0500
Received: by mail-vs1-f42.google.com with SMTP id f7so6962164vsh.10
 for <usrp-users@lists.ettus.com>; Sat, 21 Nov 2020 11:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JTsP1ZtBBxmdDOoCQsdZFDM2bIDoNsFI9kjOTY/vKJA=;
 b=0S8izUKdMe1AusqpJgoZZwtq7SfkCQ/ecMqDWItD5+gbaQ8BLgakETODyiHqEQGj7D
 oqOMTp1lp4tJ0RqqtfcfKrFN1nGBMnE7r4CMKwMl+uJG6z+1HQRjCwb8qArBUSg4YZ4E
 +Hc0U424hbOhnN7/xn3tvzXdwB3w225wn6f4SgsjjJtrs8h8OxRAco29f1aV28ZkK8zH
 aSesPc2riHP85YZB4f3H6ZLaSViE7SMuqAu/QJBKdTsyLLQyoo6CjjumUUBFtdzVdTzp
 tJ83+1oERqnODSyzottInIE2hP39dGyY7qczKt3Gf6JiAPIxgljFas3C/MQ2HoiuX4c7
 42jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JTsP1ZtBBxmdDOoCQsdZFDM2bIDoNsFI9kjOTY/vKJA=;
 b=kZLurmuly0F6VgFLkaE716t8P5VV35UBmcHrrvLcUiAjubg8X2Iys2ig3KR0+F5bhr
 oKfKEiG0xf4uEPcB7j/EgJn0qvoT6iHj/UHcBugBDiNFJZvX3/CdUxf5pLoCvPVSWGZs
 tcVepaRzklX8nAqpmhIkdxQZYI92DRqwXjDVhQvZ69fuTsupwKnphbO4qnhYuo4KVBIk
 zmOOdMqhvire83nQc1aHdx6ta+3f7pPOypXxR0nBWpZSPhFt6WC1iQSyfCOuPA4ZvI2T
 CJe3PH6jfSYSjXZFqGRCkWvFB17BpUXlUg0i1GLHX56LTbFolHdb0Eqm+3SHG1+UHlXg
 SGSg==
X-Gm-Message-State: AOAM530iQzlJmN33wdWv8xrv54rAlbQpHT/v9Rqhdo3496O8CAZppFrl
 ILBtRAo3ocvyRkKHTlmFxy7I02j/B12y0xI/nUIWB3m3LCgdYQ==
X-Google-Smtp-Source: ABdhPJwlDqwP66+0E/eV/WvmGIcgLPMse+0wTYosblyhN0T/iYvKdwN418XhKjl6RV8XwHOHg7CT85O2QunQ0NbjvKs=
X-Received: by 2002:a05:6102:3016:: with SMTP id
 s22mr16983132vsa.27.1605987798893; 
 Sat, 21 Nov 2020 11:43:18 -0800 (PST)
MIME-Version: 1.0
References: <CAKHaR3=cWOn8QPbVSU=h040NaquMntJoMgs2j1zXexcQmLDNpA@mail.gmail.com>
In-Reply-To: <CAKHaR3=cWOn8QPbVSU=h040NaquMntJoMgs2j1zXexcQmLDNpA@mail.gmail.com>
Date: Sat, 21 Nov 2020 14:42:43 -0500
Message-ID: <CAL7q81veqFNTKH46mdb-5Sf-KOGeJR0Y_dEphB1-BhsGcrmK6g@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] simulation error with uhd 4.0
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============3331038259104832470=="
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

--===============3331038259104832470==
Content-Type: multipart/alternative; boundary="000000000000445b9305b4a32c0f"

--000000000000445b9305b4a32c0f
Content-Type: text/plain; charset="UTF-8"

Hi Dario,

Unfortunately, Vivado's xsim simulator sometimes crashes when it runs into
syntax and elaboration errors. Make sure you don't have issues like signals
with multiple drivers, undriven signals, missing reset logic, typos, etc.
Note that these issues may be in code that is/seems unrelated to the cmul
instantiation.

Also, if you have access to ModelSim, I would highly suggest trying that
tool instead as it is far more robust than xsim. You can use the vsim make
target to use ModelSim.

Jonathon

On Sat, Nov 21, 2020 at 5:54 AM Dario Pennisi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> i'm trying to simulate a block where i'm using cmul. in order to have that
> compiled in i am including the following in my Makefile under rfnoc/fpga in
> my OOT directory:
>
> include $(BASE_DIR)/../lib/ip/Makefile.inc
> SIM_SRCS = $(abspath rfnoc_block_demod_tb.sv)  \
> $(LIB_IP_COMPLEX_MULTIPLIER_OUTS) \
>
> i tried also adding this to DESIGN_SRCS but when running simulation with
> Vivado 2019.1 i see the following error:
>
> ERROR: [XSIM 43-3983] Internal Compiler error encountered while processing
> aggregate association.
> ERROR: [XSIM 43-3915] Encountered a fatal error. Cannot continue.
> Exiting...
>
> if i remove cmul instance from my design simulation works.
>
> can you please shed some light on how to fix this?
> thanks,
>
> Dario Pennisi
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000445b9305b4a32c0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dario,<div><br></div><div>Unfortunately, Vivado&#39;s x=
sim simulator sometimes crashes when it runs into syntax and elaboration er=
rors. Make sure you don&#39;t have issues like signals with multiple driver=
s, undriven signals, missing reset logic, typos, etc. Note that these issue=
s may be in code that is/seems unrelated to the cmul instantiation.</div><d=
iv><br></div><div>Also, if you have access to ModelSim, I would highly sugg=
est trying that tool instead as it is far more robust than xsim. You can us=
e the vsim make target to use ModelSim.<br></div><div><br></div><div>Jonath=
on</div><div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Sat, Nov 21, 2020 at 5:54 AM Dario Pennisi via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div>Hi,</div><div>i&#39;m trying to simulate a bloc=
k where i&#39;m using cmul. in order to have that compiled in i am includin=
g the following in my Makefile under rfnoc/fpga in my OOT directory:</div><=
div><br></div><div>include $(BASE_DIR)/../lib/ip/Makefile.inc</div><div>SIM=
_SRCS =3D $(abspath <a href=3D"http://rfnoc_block_demod_tb.sv" target=3D"_b=
lank">rfnoc_block_demod_tb.sv</a>) =C2=A0\<br>$(LIB_IP_COMPLEX_MULTIPLIER_O=
UTS) \</div><div><br></div><div>i tried also adding this to DESIGN_SRCS but=
 when running simulation with Vivado 2019.1 i see the following error:</div=
><div><br></div><div>ERROR: [XSIM 43-3983] Internal Compiler error encounte=
red while processing aggregate association.<br>ERROR: [XSIM 43-3915] Encoun=
tered a fatal error. Cannot continue. Exiting... <br></div><div><br></div><=
div>if i remove cmul instance from my design simulation works.</div><div><b=
r></div><div>can you please shed some light on how to fix this?</div><div>t=
hanks,</div><div><br></div><div>Dario Pennisi<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000445b9305b4a32c0f--


--===============3331038259104832470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3331038259104832470==--

