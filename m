Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5391F792D
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2020 15:58:52 +0200 (CEST)
Received: from [::1] (port=47224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjkCn-0003NY-KG; Fri, 12 Jun 2020 09:58:49 -0400
Received: from mail-yb1-f179.google.com ([209.85.219.179]:45958)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1jjkCj-0002zo-7S
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 09:58:45 -0400
Received: by mail-yb1-f179.google.com with SMTP id b15so4926046ybg.12
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 06:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fILaZt4IauOb061XImgOZYyOUOrCb/MlhvoGlTHRZ4Q=;
 b=Er/fSJEsoUQJfRVt42gKZyHcuzNAahoxVfhHaNx3DzqbqrcQcyrr+5LMEMHg8icA1h
 9Zy3Zg56QVxzPZ5Fk5e7taU2jiUGNTxT9abX1xkwsPR4u3W/yaimUVzi9wUXIzZ51YsK
 lwmLbHE5H9bpJi+6PWkiZ8CFTevcRoucSYmArzKK8b5uE2GRFupFibbgbPOs1NDkS+Yu
 U8E+TWKXw5N1VH8UGL/FblPbAAIJUIc3r9YUHlQPPbrDrzlLv1ByueyH5ka6xMXcRdQY
 IwXysGmsnNnnly7fFltkuYwXZIgPcyAOZOCyZ8yyVkvpEZPcuLJZcymqtbkCZa8mxoI4
 Xo9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fILaZt4IauOb061XImgOZYyOUOrCb/MlhvoGlTHRZ4Q=;
 b=B0WYebCTkyY9p6Jg9pe8f9px/eFBJcRp/JSDUmoiLM4BlZ/t3J0VCFqGERm/wy33P1
 g7ez9BGYZsNykGxYq/1FgCUWoC8vs+LHnZ+11FRDjJgZ3lDT/+OOOIK6JZGUwNYfG5RY
 2ZCxOrh2xVxLGVFDqLdRIKkH223WeB2h+HtcpIzMD19YJtofzzVd0YkhEJqrrEMmUzRU
 SddLkwjsjUNYfA8RfmUQTlXymyoxuJjlx8JdOZommI2Bd6p/RsXo+TT+oW3NTGGA7TkP
 qqrTRLjhWgm7Q3Vk46LKyOLqgB9RzpV8K/Pic8ZaomwU3frKfmybrh91rBB0IcaT2gxO
 w6bg==
X-Gm-Message-State: AOAM530z0zxMVEFxxWCcawVskls+eO+Wo1hMq7pxsikYEPXLnri7HVIO
 e+BzLd9eIQ8RVUTChpldRQRl4Rj29A8kFMk48Ps=
X-Google-Smtp-Source: ABdhPJyAC4NII32eHt73SzQ/BN7pJzyfqXXRprUe1SGDt203TI09OvjuFekoE52PTW9M8O3Q91oDfgubObeB06xm9MM=
X-Received: by 2002:a25:db03:: with SMTP id g3mr12674307ybf.100.1591970284412; 
 Fri, 12 Jun 2020 06:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <B7FF765BD755A047B8932CE984AFDC4627E20FF4@CNSZEXMB01>
In-Reply-To: <B7FF765BD755A047B8932CE984AFDC4627E20FF4@CNSZEXMB01>
Date: Fri, 12 Jun 2020 08:57:53 -0500
Message-ID: <CADBWrHgNtrjmK9AhfR0cXA_643L5h9DLteu=jovAznz5nWrMAA@mail.gmail.com>
To: "Tian, LI(R&D TECH&INNO 5G LAB (CN)-SZ-TCT)" <tian.li@tcl.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Help: How to solve the issue"At least one PLL did
 not lock!"
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Content-Type: multipart/mixed; boundary="===============0194226020574308598=="
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

--===============0194226020574308598==
Content-Type: multipart/alternative; boundary="0000000000004ba16005a7e3774b"

--0000000000004ba16005a7e3774b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is your program expecting you to supply an external 10MHz Reference to your
N310? I'd assume that's what *set_clock_source*() is configuring. You
should double-check the logs or source to be sure.

I don't think that  *set_clock_source* would be referencing an external LO,
but if it is, make sure you're following the LO frequency guidelines here:
https://kb.ettus.com/N300/N310#Interfaces_and_Connectivity

-Sam

On Fri, Jun 12, 2020 at 4:53 AM Tian, LI(R&D TECH&INNO 5G LAB (CN)-SZ-TCT)
via USRP-users <usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> Recently, I try to set OAI platform using the below configurations:
>
>
>
> USRP: N310 with XG image using 10G Ethernet
>
> UHD version: 3.15.0.0
>
> OAI version: develop branch with latest version
>
> Network card: Intel X520-DA2
>
>
>
> First, I set up UHD in the host computer. In the USRP, I updated file
> system and then updated the correspoding FPGA image. After these operatio=
n,
> I think the UHD versions in the host computer and USRP are matched. Then =
I
> downloaded the OAI codes and compiled the codes of gNB using the
> command(i.e. ./build_oai -I --gNB -w USRP).
>
>
>
> When I started to set up gNB using the comman(i.e. sudo ./nr-softmodem -O
> ../../../targets/PROJECTS/GENERIC-LTE-EPC/CONF/gnb.band78.tm1.106PRB.usrp=
n300.conf
> --parallel-config PARALLEL_SINGLE_THREAD), a PLL related issue occurs, i.=
e.
> Uncaught exception in method set_clock_source :At least one PLL did not
> lock!
>
>
>
> This problem always exists when I start to set up gNB. I very appreciate
> if you can provide some suggestions.
>
>
>
>
>
> The related PLL logs are shown below:
>
> [ERROR] [MPM.RPCServer] Uncaught exception in method set_clock_source :At
> least one PLL did not lock! Check the logs for details.
>
> Traceback (most recent call last):
>
>   File "/usr/lib/python3.5/site-packages/usrp_mpm/rpc_server.py", line
> 182, in new_claimed_function
>
>     return function(*args)
>
>   File "/usr/lib/python3.5/site-packages/usrp_mpm/periph_manager/n3xx.py"=
,
> line 601, in set_clock_source
>
>     self.set_sync_source(source)
>
>   File "/usr/lib/python3.5/site-packages/usrp_mpm/periph_manager/n3xx.py"=
,
> line 730, in set_sync_source
>
>     skip_rfic=3Dargs.get('skip_rfic', None)
>
>   File
> "/usr/lib/python3.5/site-packages/usrp_mpm/dboard_manager/magnesium.py",
> line 400, in update_ref_clock_freq
>
>     self._reinit(self.master_clock_rate)
>
>   File
> "/usr/lib/python3.5/site-packages/usrp_mpm/dboard_manager/magnesium.py",
> line 359, in _reinit
>
>     self.init(args)
>
>   File
> "/usr/lib/python3.5/site-packages/usrp_mpm/dboard_manager/magnesium.py",
> line 295, in init
>
>     args, self._init_args, fast_reinit)
>
>   File
> "/usr/lib/python3.5/site-packages/usrp_mpm/dboard_manager/mg_init.py", li=
ne
> 615, in init
>
>     args
>
>   File
> "/usr/lib/python3.5/site-packages/usrp_mpm/dboard_manager/mg_init.py", li=
ne
> 547, in _full_init
>
>     self.PHASE_DAC_SPI_ADDR,
>
>   File
> "/usr/lib/python3.5/site-packages/usrp_mpm/dboard_manager/mg_init.py", li=
ne
> 181, in _init_lmk
>
>     self.log
>
>   File
> "/usr/lib/python3.5/site-packages/usrp_mpm/dboard_manager/lmk_mg.py", lin=
e
> 52, in __init__
>
>     self.config()
>
>   File
> "/usr/lib/python3.5/site-packages/usrp_mpm/dboard_manager/lmk_mg.py", lin=
e
> 218, in config
>
>     raise RuntimeError("At least one PLL did not lock! Check the logs for
> details.")
>
> RuntimeError: At least one PLL did not lock! Check the logs for details.
>
> [PHY]   ru_thread_prach() RACH waiting for RU to be configured
>
>
>
>
>
> --
>
> Best Regards,
>
> Tian Li
>
>
> This e-mail (including any attachments) is confidential to the intended
> addressee, may be subject to copyright, and may also be privileged. If yo=
u
> are not the intended addressee, please do not read, print, re-transmit,
> copy, store, alter or otherwise disclose it or any of its attachments to
> anyone; nor should you act in reliance on it or any of its attachments.
> Instead, please notify the error to the sender by e-mail and immediately
> permanently delete this email and any of its attachments from your system=
.
> =E6=9C=AC=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=EF=BC=88=E5=8C=85=E6=8B=AC=
=E4=BB=BB=E4=BD=95=E9=99=84=E4=BB=B6=EF=BC=89=E6=98=AF=E6=8F=90=E4=BE=9B=E7=
=BB=99=E6=8C=87=E5=AE=9A=E6=94=B6=E4=BB=B6=E4=BA=BA=E7=9A=84=E4=BF=9D=E5=AF=
=86=E4=BF=A1=E6=81=AF=EF=BC=8C=E5=8F=AF=E8=83=BD=E5=9B=A0=E5=8F=97=E7=9F=A5=
=E8=AF=86=E4=BA=A7=E6=9D=83=E4=BF=9D=E6=8A=A4=E4=B8=94=E5=B1=9E=E4=B8=93=E6=
=9C=89=E4=BF=A1=E6=81=AF=E8=80=8C=E4=B8=8D=E5=BE=97=E6=8A=AB=E9=9C=B2=E3=80=
=82=E5=A6=82=E6=9E=9C=E6=82=A8=E4=B8=8D=E6=98=AF=E6=8C=87=E5=AE=9A=E6=94=B6=
=E4=BB=B6=E4=BA=BA=EF=BC=8C=E8=AF=B7=E4=B8=8D=E8=A6=81=E9=98=85=E8=AF=BB=E3=
=80=81=E6=89=93=E5=8D=B0=E3=80=81=E5=86=8D=E6=AC=A1=E4=BC=A0=E8=BE=93=E3=80=
=81=E5=A4=8D=E5=88=B6=E3=80=81=E5=AD=98=E5=82=A8=E3=80=81=E4=BF=AE=E6=94=B9=
=E6=88=96=E8=80=85=E4=BB=A5=E5=8F=A6=E5=A4=96=E6=96=B9=E5=BC=8F=E6=8F=AD=E9=
=9C=B2=E6=9C=AC=E9=82=AE=E4=BB=B6=E6=88=96=E5=85=B6=E4=BB=BB=E4=BD=95=E9=99=
=84=E4=BB=B6=E5=86=85=E5=AE=B9=E7=BB=99=E4=BB=BB=E4=BD=95=E4=BA=BA=EF=BC=9B=
=E6=82=A8=E4=B9=9F=E4=B8=8D=E5=BA=94=E8=AF=A5=E4=BF=A1=E8=B5=96=E6=9C=AC=E9=
=82=AE=E4=BB=B6=E6=88=96=E5=85=B6=E4=BB=BB=E4=BD=95=E9=99=84=E4=BB=B6=E7=9A=
=84=E5=86=85=E5=AE=B9=E8=A1=8C=E4=BA=8B=E3=80=82=E7=9B=B8=E5=8F=8D=EF=BC=8C=
=E8=AF=B7=E9=80=9A=E8=BF=87=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E9=80=9A=E7=
=9F=A5=E5=8F=91=E4=BB=B6=E4=BA=BA=E8=BF=99=E4=B8=80=E9=94=99=E8=AF=AF=E5=B9=
=B6=E4=B8=94=E7=AB=8B=E5=8D=B3=E6=B0=B8=E4=B9=85=E5=9C=B0=E4=BB=8E=E6=82=A8=
=E7=9A=84=E7=B3=BB=E7=BB=9F=E4=B8=AD=E5=88=A0=E9=99=A4=E6=9C=AC=E7=94=B5=E5=
=AD=90=E9=82=AE=E4=BB=B6=E5=8F=8A=E5=85=B6=E4=BB=BB=E4=BD=95=E9=99=84=E4=BB=
=B6=E3=80=82
> E-mails sent to and from TCL may be monitored and read for legitimate
> business purposes, notably to ensure compliance with the law and the
> regulatory obligations. Emails cannot be guaranteed to be secure or
> error-free, and you should protect your systems. TCL does not accept any
> liability arising from interception, error, loss or destruction of this
> e-mail, or if it arrives late or incomplete or with viruses.
> =E5=87=BA=E4=BA=8E=E5=90=88=E6=B3=95=E7=9A=84=E5=95=86=E6=B3=95=E7=9B=AE=
=E7=9A=84=EF=BC=8C=E5=B0=A4=E5=85=B6=E4=B8=BA=E4=BA=86=E7=A1=AE=E4=BF=9D=E9=
=81=B5=E5=AE=88=E7=9B=B8=E5=85=B3=E6=B3=95=E5=BE=8B=E6=B3=95=E8=A7=84=E7=9A=
=84=E8=A7=84=E5=AE=9A=EF=BC=8C=E5=8F=91=E8=87=B3=E6=88=96=E5=8F=91=E8=87=AA=
TCL=E7=9A=84=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E5=8F=AF=E8=83=BD=E8=A2=AB=
=E7=9B=91=E6=8E=A7=E5=92=8C=E9=98=85=E8=AF=BB=E3=80=82
> =E7=9B=B8=E5=85=B3=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E4=B8=8D=E8=83=BD=
=E4=BF=9D=E8=AF=81=E5=85=B6=E5=AE=89=E5=85=A8=E6=80=A7=E6=88=96=E6=B2=A1=E6=
=9C=89=E9=94=99=E8=AF=AF=EF=BC=8C=E6=89=80=E4=BB=A5=E6=82=A8=E5=BA=94=E8=AF=
=A5=E4=BF=9D=E6=8A=A4=E6=82=A8=E7=9A=84=E7=B3=BB=E7=BB=9F=E5=AE=89=E5=85=A8=
=E3=80=82TCL=E4=B8=8D=E6=89=BF=E6=8B=85=E7=94=B1=E4=BA=8E=E9=82=AE=E4=BB=B6=
=E8=A2=AB=E6=8B=A6=E6=88=AA=E3=80=81=E5=87=BA=E9=94=99=E3=80=81=E9=81=97=E5=
=A4=B1=E6=88=96=E6=AF=81=E5=9D=8F=E3=80=81=E6=88=96=E8=80=85=E9=82=AE=E4=BB=
=B6=E5=88=B0=E8=BE=BE=E5=BB=B6=E8=AF=AF=E3=80=81=E4=B8=8D=E5=AE=8C=E6=95=B4=
=E6=88=96=E8=80=85=E6=90=BA=E5=B8=A6=E7=97=85=E6=AF=92=E8=80=8C=E4=BA=A7=E7=
=94=9F=E7=9A=84=E4=BB=BB=E4=BD=95=E8=B4=A3=E4=BB=BB=E3=80=82
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004ba16005a7e3774b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is your program expecting you to supply an external 10MHz =
Reference to your N310? I&#39;d assume that&#39;s what=C2=A0<b>set_clock_so=
urce</b>() is configuring. You should double-check the logs or source to be=
 sure.=C2=A0<br><div><br></div><div>I don&#39;t think that=C2=A0 <b>set_clo=
ck_source</b> would be referencing an external LO, but if it is, make sure =
you&#39;re following the LO frequency guidelines here:=C2=A0<a href=3D"http=
s://kb.ettus.com/N300/N310#Interfaces_and_Connectivity">https://kb.ettus.co=
m/N300/N310#Interfaces_and_Connectivity</a></div><div><br></div><div>-Sam</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, Jun 12, 2020 at 4:53 AM Tian, LI(R&amp;D TECH&amp;INNO 5G LAB (=
CN)-SZ-TCT) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">





<div lang=3D"ZH-CN">
<div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">Hi all,<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">Recently, I try to set OAI platform using the below configurations:<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">USRP: N310 with XG image using 10G Ethernet<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">UHD version: 3.15.0.0<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">OAI version: develop branch with latest version<u></u><u></u></span></p=
>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">Network card: Intel X520-DA2<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">First, I set up UHD in the host computer. In the USRP, I updated file s=
ystem and then updated the correspoding FPGA image. After
 these operation, I think the UHD versions in the host computer and USRP ar=
e matched. Then I downloaded the OAI codes and compiled the codes of gNB us=
ing the command(i.e. ./build_oai -I --gNB -w USRP).
<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">When I started to set up gNB using the comman(i.e. sudo ./nr-softmodem =
-O ../../../targets/PROJECTS/GENERIC-LTE-EPC/CONF/gnb.band78.tm1.106PRB.usr=
pn300.conf
 --parallel-config PARALLEL_SINGLE_THREAD), a PLL related issue occurs, i.e=
. Uncaught exception in method set_clock_source :At least one PLL did not l=
ock!<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">This problem always exists when I start to set up gNB. I very appreciat=
e if you can provide some suggestions.<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">The related PLL logs are shown below:<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">[ERROR] [MPM.RPCServer]
<span style=3D"background:yellow">Uncaught exception in method set_clock_so=
urce :At least one PLL did not lock!</span> Check the logs for details.<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">Traceback (most recent call last):<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/rpc_server.=
py&quot;, line 182, in new_claimed_function<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 return function(*args)<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/periph_mana=
ger/n3xx.py&quot;, line 601, in set_clock_source<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 self.set_sync_source(source)<u></u><u></u></span></p=
>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/periph_mana=
ger/n3xx.py&quot;, line 730, in set_sync_source<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 skip_rfic=3Dargs.get(&#39;skip_rfic&#39;, None)<u></=
u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/dboard_mana=
ger/magnesium.py&quot;, line 400, in update_ref_clock_freq<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 self._reinit(self.master_clock_rate)<u></u><u></u></=
span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/dboard_mana=
ger/magnesium.py&quot;, line 359, in _reinit<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 self.init(args)<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/dboard_mana=
ger/magnesium.py&quot;, line 295, in init<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 args, self._init_args, fast_reinit)<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/dboard_mana=
ger/mg_init.py&quot;, line 615, in init<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 args<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/dboard_mana=
ger/mg_init.py&quot;, line 547, in _full_init<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 self.PHASE_DAC_SPI_ADDR,<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/dboard_mana=
ger/mg_init.py&quot;, line 181, in _init_lmk<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 self.log<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/dboard_mana=
ger/lmk_mg.py&quot;, line 52, in __init__<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 self.config()<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0 File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/dboard_mana=
ger/lmk_mg.py&quot;, line 218, in config<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">=C2=A0=C2=A0=C2=A0 raise RuntimeError(&quot;At least one PLL did not lo=
ck! Check the logs for details.&quot;)<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">RuntimeError: At least one PLL did not lock! Check the logs for details=
.<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:12pt;font-family:=E5=AE=8B=E4=BD=93;color:bla=
ck">[PHY]=C2=A0=C2=A0 ru_thread_prach() RACH waiting for RU to be configure=
d
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:=E5=BE=AE=
=E8=BD=AF=E9=9B=85=E9=BB=91,sans-serif">--<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:=E5=BE=AE=
=E8=BD=AF=E9=9B=85=E9=BB=91,sans-serif">Best Regards,<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:=E5=BE=AE=
=E8=BD=AF=E9=9B=85=E9=BB=91,sans-serif">Tian Li<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
This e-mail (including any attachments) is confidential to the intended add=
ressee, may be subject to copyright, and may also be privileged. If you are=
 not the intended addressee, please do not read, print, re-transmit, copy, =
store, alter or otherwise disclose
 it or any of its attachments to anyone; nor should you act in reliance on =
it or any of its attachments. Instead, please notify the error to the sende=
r by e-mail and immediately permanently delete this email and any of its at=
tachments from your system. =E6=9C=AC=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=
=EF=BC=88=E5=8C=85=E6=8B=AC=E4=BB=BB=E4=BD=95=E9=99=84=E4=BB=B6=EF=BC=89=E6=
=98=AF=E6=8F=90=E4=BE=9B=E7=BB=99=E6=8C=87=E5=AE=9A=E6=94=B6=E4=BB=B6=E4=BA=
=BA=E7=9A=84=E4=BF=9D=E5=AF=86=E4=BF=A1=E6=81=AF=EF=BC=8C=E5=8F=AF=E8=83=BD=
=E5=9B=A0=E5=8F=97=E7=9F=A5=E8=AF=86=E4=BA=A7=E6=9D=83=E4=BF=9D=E6=8A=A4=E4=
=B8=94=E5=B1=9E=E4=B8=93=E6=9C=89=E4=BF=A1=E6=81=AF=E8=80=8C=E4=B8=8D=E5=BE=
=97=E6=8A=AB=E9=9C=B2=E3=80=82=E5=A6=82=E6=9E=9C=E6=82=A8=E4=B8=8D=E6=98=AF=
=E6=8C=87=E5=AE=9A=E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=8C=E8=AF=B7=E4=B8=8D=E8=
=A6=81=E9=98=85=E8=AF=BB=E3=80=81=E6=89=93=E5=8D=B0=E3=80=81=E5=86=8D=E6=AC=
=A1=E4=BC=A0=E8=BE=93=E3=80=81=E5=A4=8D=E5=88=B6=E3=80=81=E5=AD=98=E5=82=A8=
=E3=80=81=E4=BF=AE=E6=94=B9=E6=88=96=E8=80=85=E4=BB=A5=E5=8F=A6=E5=A4=96=E6=
=96=B9=E5=BC=8F=E6=8F=AD=E9=9C=B2=E6=9C=AC=E9=82=AE=E4=BB=B6=E6=88=96=E5=85=
=B6=E4=BB=BB=E4=BD=95=E9=99=84=E4=BB=B6=E5=86=85=E5=AE=B9=E7=BB=99=E4=BB=BB=
=E4=BD=95=E4=BA=BA=EF=BC=9B=E6=82=A8=E4=B9=9F=E4=B8=8D=E5=BA=94=E8=AF=A5=E4=
=BF=A1=E8=B5=96=E6=9C=AC=E9=82=AE=E4=BB=B6=E6=88=96=E5=85=B6=E4=BB=BB=E4=BD=
=95=E9=99=84=E4=BB=B6=E7=9A=84=E5=86=85=E5=AE=B9=E8=A1=8C=E4=BA=8B=E3=80=82=
=E7=9B=B8=E5=8F=8D=EF=BC=8C=E8=AF=B7=E9=80=9A=E8=BF=87=E7=94=B5=E5=AD=90=E9=
=82=AE=E4=BB=B6=E9=80=9A=E7=9F=A5=E5=8F=91=E4=BB=B6=E4=BA=BA=E8=BF=99=E4=B8=
=80=E9=94=99=E8=AF=AF=E5=B9=B6=E4=B8=94=E7=AB=8B=E5=8D=B3=E6=B0=B8=E4=B9=85=
=E5=9C=B0=E4=BB=8E=E6=82=A8=E7=9A=84=E7=B3=BB=E7=BB=9F=E4=B8=AD=E5=88=A0=E9=
=99=A4=E6=9C=AC=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E5=8F=8A=E5=85=B6=E4=BB=
=BB=E4=BD=95=E9=99=84=E4=BB=B6=E3=80=82
 E-mails sent to and from TCL may be monitored and read for legitimate busi=
ness purposes, notably to ensure compliance with the law and the regulatory=
 obligations. Emails cannot be guaranteed to be secure or error-free, and y=
ou should protect your systems.
 TCL does not accept any liability arising from interception, error, loss o=
r destruction of this e-mail, or if it arrives late or incomplete or with v=
iruses. =E5=87=BA=E4=BA=8E=E5=90=88=E6=B3=95=E7=9A=84=E5=95=86=E6=B3=95=E7=
=9B=AE=E7=9A=84=EF=BC=8C=E5=B0=A4=E5=85=B6=E4=B8=BA=E4=BA=86=E7=A1=AE=E4=BF=
=9D=E9=81=B5=E5=AE=88=E7=9B=B8=E5=85=B3=E6=B3=95=E5=BE=8B=E6=B3=95=E8=A7=84=
=E7=9A=84=E8=A7=84=E5=AE=9A=EF=BC=8C=E5=8F=91=E8=87=B3=E6=88=96=E5=8F=91=E8=
=87=AATCL=E7=9A=84=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E5=8F=AF=E8=83=BD=E8=
=A2=AB=E7=9B=91=E6=8E=A7=E5=92=8C=E9=98=85=E8=AF=BB=E3=80=82 =E7=9B=B8=E5=
=85=B3=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E4=B8=8D=E8=83=BD=E4=BF=9D=E8=AF=
=81=E5=85=B6=E5=AE=89=E5=85=A8=E6=80=A7=E6=88=96=E6=B2=A1=E6=9C=89=E9=94=99=
=E8=AF=AF=EF=BC=8C=E6=89=80=E4=BB=A5=E6=82=A8=E5=BA=94=E8=AF=A5=E4=BF=9D=E6=
=8A=A4=E6=82=A8=E7=9A=84=E7=B3=BB=E7=BB=9F=E5=AE=89=E5=85=A8=E3=80=82TCL=E4=
=B8=8D=E6=89=BF=E6=8B=85=E7=94=B1=E4=BA=8E=E9=82=AE=E4=BB=B6=E8=A2=AB=E6=8B=
=A6=E6=88=AA=E3=80=81=E5=87=BA=E9=94=99=E3=80=81=E9=81=97=E5=A4=B1=E6=88=96=
=E6=AF=81=E5=9D=8F=E3=80=81=E6=88=96=E8=80=85=E9=82=AE=E4=BB=B6=E5=88=B0=E8=
=BE=BE=E5=BB=B6=E8=AF=AF=E3=80=81=E4=B8=8D=E5=AE=8C=E6=95=B4=E6=88=96=E8=80=
=85=E6=90=BA=E5=B8=A6=E7=97=85=E6=AF=92=E8=80=8C=E4=BA=A7=E7=94=9F=E7=9A=84=
=E4=BB=BB=E4=BD=95=E8=B4=A3=E4=BB=BB=E3=80=82
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004ba16005a7e3774b--


--===============0194226020574308598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0194226020574308598==--

