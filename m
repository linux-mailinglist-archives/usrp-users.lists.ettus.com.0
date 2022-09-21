Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 385E05BF5C9
	for <lists+usrp-users@lfdr.de>; Wed, 21 Sep 2022 07:04:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6B1E38416E
	for <lists+usrp-users@lfdr.de>; Wed, 21 Sep 2022 01:04:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663736677; bh=5zLyHnS+4mt2TtF2gVK8HHmGKdEqEew22eIFbzE+LOk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ovP4ub6rh8d4H/cMWQ1urfv6gEenE1P8/V86huJvYQsCQ0jbHn0PbOPtKn3yDwQ+S
	 I//jlnl+0dgV0jKeI2q9VpHqpr3AXt3aF5fKuEKngW62hPUmMTRF9iPwO1tQB77YU/
	 t+m6NuxDVCMDGUaZ8WPfL+3LOY8LLe+6ExMuIyPteDKaAPFC4UZun9GbsFrJxGqi+4
	 uQHo/XSd7nnLGTd+3o8KlO31u3zVKPLCzX9HGCatd6Lik/SlZsDLmjJ7oIRY+ndkGj
	 MUHxyALdGAKu4NLJ72RG3oKVnNz249S1aChaljRPSSBOV08z8u0xBQgjUIfcWuzLNU
	 v8DJHnmAa5Yqg==
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D0D7384023
	for <usrp-users@lists.ettus.com>; Wed, 21 Sep 2022 01:03:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IBcOPiEy";
	dkim-atps=neutral
Received: by mail-pg1-f175.google.com with SMTP id bh13so4818409pgb.4
        for <usrp-users@lists.ettus.com>; Tue, 20 Sep 2022 22:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Ml6h++/aSfu05/oCw7Ldzy2bvXxBAI4o+wSd92NwAas=;
        b=IBcOPiEypG90/7GwGacN9E3Y9zF6FF3JgcfJ+oQeO1pwqUCl/0XvQmN/fTQiS47Bgv
         X5cN7g23NlPJ4sWYjClpVxP4A1JGq8rX9EfenvQkTkAdAPPHEwXH2XzupcgRUi36C4Vj
         sfdIZnuf2lmSDr/1jc/bwJfdbzfCGj8Nk5TX7NbjuVML1EmX2B8nZKjb08ZFy9pWNYqV
         gDdlaUakL+Kt7vdgUbctN08eoMLPZZTT1mYWu+IdjyEGRnfCtQIzXyS/1NiA/86iEpst
         aFuArJSiRViJ4IRqgeKjD5fmvP4ZO9sqI4nUiX+rT/gkHPug76as9UfFhbtAIm2GjfVj
         0+dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Ml6h++/aSfu05/oCw7Ldzy2bvXxBAI4o+wSd92NwAas=;
        b=6PBQfiouGEGDijfPpx9Fo8SOJLFY2c/scp0/7pCaeL8JkxCegPPwnORhAtKZQOPdRP
         5YW5uC3O0ellfvs6LCb/Su5BHJ7ULJewgNciLTMhsPApFLaFxuummKgPdhan+eZ7eZy+
         sB3H6M3FYt4w9kcl2XJ3jDLM3tzGRAF7L0C+UtjnbQJ6ttiL3PTX85NR1MyjQ+81pgxD
         P0sTsbpC6wiR5u/HKaupsfp6faCTXLvMUA6Ac9PUnZqkpfcG8CjOB7a/8MGV0hkGr7Wd
         M72fs2GOdOcX3l+fFd33LOC9uOz7M+1hXWWviAkIaaqYWa/Skxybd/znyzuMdFlsPcJL
         vjQQ==
X-Gm-Message-State: ACrzQf11xWC7cZBQEmL06Bu4BAPjxtM+2WnNJ3goojbumZOsBx9xW/Qs
	u4zyCMvOLhuWpokqvqQVvMRK3dOjgo4DqkUWhuQ=
X-Google-Smtp-Source: AMsMyM7EJtHUciUR5JpW3FrXEThLsgu8+1iTgmsDTonUoh1WtgYbluA3aIPA+QG2YZSFJOV4VVPsAfGLaZnqZ23a6/U=
X-Received: by 2002:aa7:9605:0:b0:53e:8062:43fc with SMTP id
 q5-20020aa79605000000b0053e806243fcmr27245832pfg.39.1663736602214; Tue, 20
 Sep 2022 22:03:22 -0700 (PDT)
MIME-Version: 1.0
References: <BMXPR01MB355809682F5825CE6633E8FDD64F9@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BMXPR01MB355809682F5825CE6633E8FDD64F9@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
From: Alex Humberstone <alex.m.humberstone@gmail.com>
Date: Wed, 21 Sep 2022 00:02:45 -0500
Message-ID: <CAE0dfYYdnzXbjqOiqbu3uJr5bW0pHFYV280mSTNjNsEh0n4J8Q@mail.gmail.com>
To: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
Message-ID-Hash: PYDGDV2WRCYLHJNMMI5PV6S7PXISYJC6
X-Message-ID-Hash: PYDGDV2WRCYLHJNMMI5PV6S7PXISYJC6
X-MailFrom: alex.m.humberstone@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about USRP B210 Board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYDGDV2WRCYLHJNMMI5PV6S7PXISYJC6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4034790246065800195=="

--===============4034790246065800195==
Content-Type: multipart/alternative; boundary="0000000000002cc4f105e928ddca"

--0000000000002cc4f105e928ddca
Content-Type: text/plain; charset="UTF-8"

Hey Sivanesh,

What are you talking about? The Ettus B210 does not have a WIFI adapter on
it. It's not a WIFI dongle or something. It's a general software radio. If
you want to transmit WIFI signals, you have to program all that in GNU
Radio or C++.

Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University (NMSU)
Las Cruces, New Mexico, USA
https://ece.nmsu.edu/



On Tue, 20 Sept 2022 at 23:24, Sivanesh Kumar K <
k.sivaneshkumar@mobiveil.co.in> wrote:

> Hi All,
>
> I want to know any inbuild Wi-Fi card available in usrp B210 Board.
>
> If no any possibility to add separate Wi-Fi card in usrp B210 Board to
> broadcast Wi-Fi signal.
>
>
> Regards,
> Sivaneshkumar K
>
> Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any
> attachments, is for the sole use of the intended recipient(s) and may
> contain proprietary confidential or privileged information or otherwise be
> protected by law. Any unauthorized review, use, disclosure or distribution
> is prohibited. If you are not the intended recipient, please notify the
> sender and destroy all copies and the original message.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002cc4f105e928ddca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">Hey=C2=A0Sivanesh,</div><div class=3D"gmail_default" sty=
le=3D"font-family:monospace;font-size:large"><br></div><div class=3D"gmail_=
default" style=3D"font-family:monospace;font-size:large">What are you talki=
ng about? The Ettus B210 does not have a WIFI adapter on it. It&#39;s not a=
 WIFI dongle or something. It&#39;s a general software radio. If you want t=
o transmit WIFI signals, you have to program all that in GNU Radio or C++.<=
/div><div class=3D"gmail_default" style=3D"font-family:monospace;font-size:=
large"><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"f=
ont-family:monospace">Sincerely,<br></span></font><div><font size=3D"4"><sp=
an style=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><d=
iv><font size=3D"4"><span style=3D"font-family:monospace">PhD Student</span=
></font></div><div><font size=3D"4"><span style=3D"font-family:monospace">K=
lipsch School of Electrical Engineering<br></span></font></div><div><font s=
ize=3D"4"><span style=3D"font-family:monospace">New Mexico State University=
 (NMSU)<br><span><span>Las Cruces, </span></span>New Mexico, USA</span></fo=
nt></div><div><font size=3D"4"><font face=3D"monospace"><a href=3D"https://=
ece.nmsu.edu/" target=3D"_blank">https://ece.nmsu.edu/</a></font><br></font=
></div><div><font size=3D"4"><font face=3D"monospace"><br></font></font></d=
iv><div><font size=3D"4"><span style=3D"font-family:monospace"></span></fon=
t></div></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, 20 Sept 2022 at 23:24, Sivanesh Kumar=
 K &lt;<a href=3D"mailto:k.sivaneshkumar@mobiveil.co.in">k.sivaneshkumar@mo=
biveil.co.in</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div class=3D"msg-3779371343347707178">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I want to know any inbuild Wi-Fi card available in usrp B210 Board.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
If no any possibility to add separate Wi-Fi card in usrp B210 Board to broa=
dcast Wi-Fi signal.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Sivaneshkumar K<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please notify the sender and destroy all copies and the origina=
l message.
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000002cc4f105e928ddca--

--===============4034790246065800195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4034790246065800195==--
