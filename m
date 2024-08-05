Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CE19482B1
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2024 21:55:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB4F938443D
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2024 15:55:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722887700; bh=VRhp1RiDCWZS/tPbazbwaTGhcPyabR4redwsNAema+I=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eG2G3eQv7FeRyhqn8ZJMIQN9OsZT5Mbhd7UJ+OFlVju8cBnlPOfLfGQrMnBLl3elX
	 r/nofLkVMjygRfSKmvwSRnG2nouavSOa/tLMV/fEKNG1sDUfOfHzdkpE86GqIsBmFN
	 DqX2UxqlI04TZrGxu44dpYr+gqVKJ72gt7RJ5o45Fkd6qmeF8FIVtUMqkybqFumOZ0
	 o5tG2N5GkVvI+XSc5gnxRAqqNyu7yre6jqGLdG0if6MmyI9f0zS5vIlXtPqXGsSoZx
	 YwnDih3Z+7+El49KQV/ejJ+5ZiV70NrXsBLR1LAUrZWXSLbg9BRH+2YeXyuFdeD+sS
	 k49HKwDNROijA==
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	by mm2.emwd.com (Postfix) with ESMTPS id EB014383892
	for <usrp-users@lists.ettus.com>; Mon,  5 Aug 2024 15:54:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BISRMUWq";
	dkim-atps=neutral
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-25dfb580d1fso5147684fac.2
        for <usrp-users@lists.ettus.com>; Mon, 05 Aug 2024 12:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722887695; x=1723492495; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iQ5MvppC17QS1EyqEE5Gkad523M+ojo2gAhmhoTOf1k=;
        b=BISRMUWqxDnerF3DWX2xBkbenoGEwH6WMGgo8+J2MihGOJ6jue12OPtuA5mza9zuI/
         EpJnc0DJRdsde3XjMjFWFXwVJQxl11LEnyQqnu5OheEcUeKkDgPfrQZ9JWCw1MGogdvH
         a6wgV4orOJYpYaecZJIsHOdFt/XQKDWvf53ywtS421DSz7QS5hfB8lPIJSPx7IDZr+AR
         XrH0uGe8dZxuhI1TabFgahZ6fD87ybTC3nXhGW2dcTvvZUV97wsucARm7NsqsWv5Zxu2
         QumfMM/kVFuBnTmIhDg7vu0yrRHe7R+bUC0SRKz1SmdCKqgjtdjhGoP1Z+PnMmnMkxiD
         eP/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722887695; x=1723492495;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iQ5MvppC17QS1EyqEE5Gkad523M+ojo2gAhmhoTOf1k=;
        b=U3nUK+CFLtC0WZNN7SxR/HPmJF+Nee93WKmbav/vFOkr+FNyHpOxD6HNHW6DwIjNtw
         2/+Ep5/BHWVFyEWc4fpxFc1vSqV1VvYZygZWaq2gdmMBNZATtQ0ktNkLYzwba7C22O8C
         XzKnZCEC3HURUz+G4kq6NjyyYBIbw4hjdX7AR+Z6agikGDf3gKoigUXG7ug97q2Cc0iM
         Kh7DM8XmnppauDt+i1XK3vAQIohP1wSIPx7HGhGV7tWGyL5BA82cM2kVPIa3s3XvqsKi
         8oZd0QVTYniDS8S/glQJIMPgry0/76h/u04s/MISbh7guXNhxyOE2q3/fx9KofoeQ3oL
         2TIA==
X-Gm-Message-State: AOJu0YwLo5NtMraYYZoBbSNRe+urXF9RJPy09Dgcf4GW+SvS1En6U2r0
	NPIfR9PJcneLhsVowJOIM2V3FGzwodvsxhqKGa0ehpqDbFFfn/STZ9hikz329vACcZyGyXxLZIk
	VDAsYQSsWVKLgH5PtKLtHdbjbunIgz7EK7rg=
X-Google-Smtp-Source: AGHT+IH8V/9WerP6t8yV5AryDxBxQaQJRJvgJFGKri9+c7aOKRV6rox4fK/2ix+YlG3SphlaqbLIMQAytPft8S9Xw18=
X-Received: by 2002:a05:6871:82b:b0:261:1be0:b5b9 with SMTP id
 586e51a60fabf-26891732615mr16444141fac.0.1722887695013; Mon, 05 Aug 2024
 12:54:55 -0700 (PDT)
MIME-Version: 1.0
From: Saulo Queiroz <ssaulojorge@gmail.com>
Date: Mon, 5 Aug 2024 20:54:45 +0100
Message-ID: <CABeHafiQq2DoHjTK6nHD9SUgLoWd3BLpLhERGssgwxy_kRv7pA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: TLUEX75MWLTUIGUBFSXNEVHIO4OU5F7L
X-Message-ID-Hash: TLUEX75MWLTUIGUBFSXNEVHIO4OU5F7L
X-MailFrom: ssaulojorge@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Patch ?? for RFNoC OFDM Receiver
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TLUEX75MWLTUIGUBFSXNEVHIO4OU5F7L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0496602549218617763=="

--===============0496602549218617763==
Content-Type: multipart/alternative; boundary="0000000000000c9e30061ef50d6b"

--0000000000000c9e30061ef50d6b
Content-Type: text/plain; charset="UTF-8"

Hello,


I'm getting the below error message when building a image to run an
OFDM receiver on X310.

ERROR: [Opt 31-2] SRLC32E
x300_core/inst_eq/inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[64].srlc32e
is missing a connection on D pin.


I patch for that was mentioned before (I copied the emails below) but
I didn't find it. Is there any solution (including an old functional
version)?

My system (orbit-lab testbed) is

 GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de


thank you



----------------------------------

"*Hi Sarah,

I have submitted a pull request with some OFDM improvements including a fix
for this issue, hopefully it will be merged soon. I'll send you the patch
set to try out in the meantime.*"

Jonathon

On Fri, Sep 28, 2018 at 11:05 AM Sarah Tran via USRP-users
<usrp-users@lists.ettus.com> wrote:

> Hi all,
>
>
> I am trying to build a custom FPGA image for my X310
> (daughterboards=UBX-160) using the uhd_image_builder gui and trying to use
> the following blocks:
>
> fft
>
> schmidl_cox
>
> eq
>
> ofdm_constellation_demapper
>
>
> as the code is running and building, it always stops on this error:
>
> '
> [00:22:41] Current task: Logic Optimization +++ Current Phase: Finished
> [00:22:41] Starting Connectivity Check Task
> ERROR: [Opt 31-2] SRLC32E
> x300_core/inst_eq/inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[64].srlc32e
> is missing a connection on D pin.
> [00:22:51] Current task: Connectivity Check +++ Current Phase: Starting
> [00:22:51] Current task: Connectivity Check +++ Current Phase: Finished
> [00:22:51] Process terminated. Status: Failure
>
> ========================================================
> Warnings:           862
> Critical Warnings:  36
> Errors:             1
>
> Makefile.x300.inc:111: recipe for target 'bin' failed
> make[1]: *** [bin] Error 1
> make[1]: Leaving directory '/home/lsop/rfnoc/fpga/usrp3/top/x300'
> Makefile:119: recipe for target 'X310_RFNOC_HG' failed
> make: *** [X310_RFNOC_HG] Error 2'
>
> I can't seem to get it resolved, and I was wondering if there was a trick
> that someone else was able to use to get it to build. Any help or insight
> is appreciated.
>
> Thank you,
> Sarah
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

_______________________________________________
USRP-users mailing
listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


-- 
Saulo Jorge bq
- "...  practical things ...  will improve your theories. ...  theoretical
things ... will improve your practice."
Donald Knuth.

--0000000000000c9e30061ef50d6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"font-family:courier,&quot;courier new&quot;,=
monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)"=
>Hello,<br></pre><pre style=3D"font-family:courier,&quot;courier new&quot;,=
monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)"=
><br></pre><pre style=3D"font-family:courier,&quot;courier new&quot;,monosp=
ace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)">I&#39=
;m getting the below error message when building a image to run an OFDM rec=
eiver on X310.</pre><pre style=3D"font-family:courier,&quot;courier new&quo=
t;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,=
0)"><pre style=3D"font-family:courier,&quot;courier new&quot;,monospace;mar=
gin-top:0px;margin-bottom:0px">ERROR: [Opt 31-2] SRLC32E x300_core/inst_eq/=
inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[64].srlc32e is missing =
a connection on D pin.</pre></pre><pre style=3D"font-family:courier,&quot;c=
ourier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;=
color:rgb(0,0,0)"><br></pre><pre style=3D"font-family:courier,&quot;courier=
 new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:=
rgb(0,0,0)">I patch for that was mentioned before (I copied the emails belo=
w) but I didn&#39;t find it. Is there any solution (including an old functi=
onal version)?</pre><pre style=3D"font-family:courier,&quot;courier new&quo=
t;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,=
0)">My system (orbit-lab testbed) is<br></pre><pre style=3D"font-family:cou=
rier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin=
-bottom:0px;color:rgb(0,0,0)">=C2=A0GNU C++ version 7.5.0; Boost_106501; UH=
D_3.15.0.HEAD-0-gaea0e2de<br></pre><pre style=3D"font-family:courier,&quot;=
courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px=
;color:rgb(0,0,0)"><br></pre><pre style=3D"font-family:courier,&quot;courie=
r new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color=
:rgb(0,0,0)">thank you</pre><pre style=3D"font-family:courier,&quot;courier=
 new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:=
rgb(0,0,0)"><br></pre><pre style=3D"font-family:courier,&quot;courier new&q=
uot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,=
0,0)"><br></pre><pre style=3D"font-family:courier,&quot;courier new&quot;,m=
onospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)">=
----------------------------------</pre><pre style=3D"font-family:courier,&=
quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-botto=
m:0px;color:rgb(0,0,0)">&quot;<i>Hi Sarah,

I have submitted a pull request with some OFDM improvements including a fix
for this issue, hopefully it will be merged soon. I&#39;ll send you the pat=
ch
set to try out in the meantime.</i>&quot;</pre><pre style=3D"font-family:co=
urier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margi=
n-bottom:0px;color:rgb(0,0,0)">Jonathon

On Fri, Sep 28, 2018 at 11:05 AM Sarah Tran via USRP-users &lt;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; wrote:

&gt; Hi all,
&gt;
&gt;
&gt; I am trying to build a custom FPGA image for my X310
&gt; (daughterboards=3DUBX-160) using the uhd_image_builder gui and trying =
to use
&gt; the following blocks:
&gt;
&gt; fft
&gt;
&gt; schmidl_cox
&gt;
&gt; eq
&gt;
&gt; ofdm_constellation_demapper
&gt;
&gt;
&gt; as the code is running and building, it always stops on this error:
&gt;
&gt; &#39;
&gt; [00:22:41] Current task: Logic Optimization +++ Current Phase: Finishe=
d
&gt; [00:22:41] Starting Connectivity Check Task
&gt; ERROR: [Opt 31-2] SRLC32E
&gt; x300_core/inst_eq/inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[=
64].srlc32e
&gt; is missing a connection on D pin.
&gt; [00:22:51] Current task: Connectivity Check +++ Current Phase: Startin=
g
&gt; [00:22:51] Current task: Connectivity Check +++ Current Phase: Finishe=
d
&gt; [00:22:51] Process terminated. Status: Failure
&gt;
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
&gt; Warnings:           862
&gt; Critical Warnings:  36
&gt; Errors:             1
&gt;
&gt; Makefile.x300.inc:111: recipe for target &#39;bin&#39; failed
&gt; make[1]: *** [bin] Error 1
&gt; make[1]: Leaving directory &#39;/home/lsop/rfnoc/fpga/usrp3/top/x300&#=
39;
&gt; Makefile:119: recipe for target &#39;X310_RFNOC_HG&#39; failed
&gt; make: *** [X310_RFNOC_HG] Error 2&#39;
&gt;
&gt; I can&#39;t seem to get it resolved, and I was wondering if there was =
a trick
&gt; that someone else was able to use to get it to build. Any help or insi=
ght
&gt; is appreciated.
&gt;
&gt; Thank you,
&gt; Sarah
&gt;
&gt; _______________________________________________
&gt; USRP-users mailing list
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.c=
om</a>
&gt; <a rel=3D"nofollow" href=3D"http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com" style=3D"color:rgb(0,80,150)">http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com</a>
&gt;
</pre><pre style=3D"font-family:courier,&quot;courier new&quot;,monospace;f=
ont-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)">__________=
_____________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a=
>
<a rel=3D"nofollow" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com" style=3D"color:rgb(0,80,150)">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a></pre><div><br></div><span cl=
ass=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div>Saulo Jorge bq<br>-=C2=A0<span style=3D"font-size:12.8px">=
&quot;</span><span style=3D"font-family:sans-serif;font-size:14px">...=C2=
=A0 practical things ...=C2=A0 will improve your theories. ...=C2=A0 theore=
tical things ... will improve your practice.</span><span style=3D"font-size=
:12.8px">&quot;=C2=A0</span></div><div>Donald Knuth.<br></div></div></div><=
/div></div></div>

--0000000000000c9e30061ef50d6b--

--===============0496602549218617763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0496602549218617763==--
