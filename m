Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EB6E2762
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 02:35:15 +0200 (CEST)
Received: from [::1] (port=41990 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNR5r-0001d5-Sr; Wed, 23 Oct 2019 20:35:11 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:33747)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1iNR5n-0001Va-DL
 for usrp-users@lists.ettus.com; Wed, 23 Oct 2019 20:35:07 -0400
Received: by mail-io1-f44.google.com with SMTP id z19so27370896ior.0
 for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2019 17:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KRORlR3PyyXcXGZhDjkY8RUNx4BtEgl9/EJgwu8/wUQ=;
 b=p70gnDRu5O/FGX4fu2HHaf9ka6EAAaFWhV7DR0gx+QqtvgjZCx3K8B6Zs6MKspjsIm
 8l2Mk1zBOvTVo6iVQEvIsIV1V8q3VeQMTdvs5iFSR9rnFrIgd9LOMa8xzgvA95p/tAx4
 gJ36B3qFl+snoKIudp5FjHkUHVBKeymsDiPe69rZdXXC+QnLVMS3WfD7/uh8Tzyt598i
 8PButI0H2NMNhcHtd7bfq0ZgY4sdn4QA996kmvDSmv1Oxb4pTu9muOOpmuvOwxTSDBV5
 KJWIARL3Bs8eOm56/17MHr4UQRabpLqdknSVEJl0/lHdF9oB0p3/5ZIx8mWAtQgJ2op/
 bbOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KRORlR3PyyXcXGZhDjkY8RUNx4BtEgl9/EJgwu8/wUQ=;
 b=H/k7R8/4Edve3jNlaiCbBCMCVUVJq9yzcysPGkvXL76fPQt6PgY2GZdxg+aNokTMiS
 plwQZpPCN8LyTY9t1oacmVR/Cr8j3Ttr8zB45SxTc43p9w4kIJ4RAowocz6JWHXvvLwV
 cITpUISVid4VST6ibx7MEl2xPoqQmbSSRk058PziQadX/jVBpq7DM7K7AoF2e4MgD2Xb
 2wwV0jcxOgKNSng3Ii7nWqad40iRWSc3XzW9gKmd0sq3Scd8qpiwLc/qVNnOSgfq9kJj
 GSLX7Qk8qPnqEonhFnwxo9SHrsxqclEhQd3qB4bkmoOQFerHJzHOvwRxcnicyoM0NQG5
 SuEQ==
X-Gm-Message-State: APjAAAWTJbn1dG279PcnXYqp86bxYLssB7ZZggOUm7n2rX/s/rMRGPQj
 Ke+FCAkH1cqGXz0brEAALcoTncorpg7sODxN/eaXBg==
X-Google-Smtp-Source: APXvYqxjkr3nGIqia8o+n9qkwzlRpchPTi8rdGatLgkeZGZNpPFIjcB/BRuM6xCTFhsNXyJt30r2eEdyVCRJG+i7edY=
X-Received: by 2002:a02:40c6:: with SMTP id
 n189mr12394791jaa.121.1571877266346; 
 Wed, 23 Oct 2019 17:34:26 -0700 (PDT)
MIME-Version: 1.0
References: <8ac6e3b3f5234b0fab9a6528f4f16cc6@ll.mit.edu>
In-Reply-To: <8ac6e3b3f5234b0fab9a6528f4f16cc6@ll.mit.edu>
Date: Wed, 23 Oct 2019 17:34:04 -0700
Message-ID: <CA+JMMq8N1EzMBbAU_KUMn27G7ya0qOjPfv_F7F5pR-Vopda5nA@mail.gmail.com>
To: "Muri, Richard - 1002 - MITLL" <Richard.Muri@ll.mit.edu>
Subject: Re: [USRP-users] Controlling an X310 from embedded devices
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7337553806808519291=="
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

--===============7337553806808519291==
Content-Type: multipart/alternative; boundary="00000000000017599105959d3261"

--00000000000017599105959d3261
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You should have no trouble running UHD on an ARM architecture. The Ettus
E300 series radios are ARM devices. UHD does a huge amount of
initialization and configuration for the X310, and in any case the X310
doesn't use VRT in any real capacity. You won't realistically be able to
divorce the X310 from UHD.

Your biggest headache on an embedded machine will be keeping up with high
data rates, and waiting for UHD to compile in the first place. =3D)

Nick

On Wed, Oct 23, 2019 at 4:59 PM Muri, Richard - 1002 - MITLL via USRP-users
<usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I=E2=80=99m looking into controlling an X310 from an embedded device. I w=
anted to
> probe the users list before I bury myself into a rabbit hole.
>
>
>
> Is it possible to control a USRP directly from an FPGA? I noticed that UH=
D
> use VRT as the transport protocol (
> http://files.ettus.com/manual/page_rtp.html). If I have an FPGA that
> speaks VRT over Ethernet or Aurora can I control a USRP, and are there
> examples/documentation of controlling a USRP without running an instance =
of
> UHD? In my use case I need to send timed transmit commands and data
> packets, and timed receive commands and receive data packets.
>
>
>
> In the case that running without UHD is a headache I don=E2=80=99t want t=
o brave,
> are there examples of running UHD on ARM cores?
>
>
>
> Any insight is appreciated.
>
>
>
> Thanks,
>
> Richard
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000017599105959d3261
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You should have no trouble running UHD on an ARM arch=
itecture. The Ettus E300 series radios are ARM devices. UHD does a huge amo=
unt of initialization and configuration for the X310, and in any case the X=
310 doesn&#39;t use VRT in any real capacity. You won&#39;t realistically b=
e able to divorce the X310 from UHD.<br></div><div><br></div><div>Your bigg=
est headache on an embedded machine will be keeping up with high data rates=
, and waiting for UHD to compile in the first place. =3D)<br></div><div><br=
></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Oct 23, 2019 at 4:59 PM Muri, Richard - 1=
002 - MITLL via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-7992=
240679112399471WordSection1"><p class=3D"MsoNormal">Hello,<u></u><u></u></p=
><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">I=E2=
=80=99m looking into controlling an X310 from an embedded device. I wanted =
to probe the users list before I bury myself into a rabbit hole.<u></u><u><=
/u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal=
">Is it possible to control a USRP directly from an FPGA? I noticed that UH=
D use VRT as the transport protocol (<a href=3D"http://files.ettus.com/manu=
al/page_rtp.html" target=3D"_blank">http://files.ettus.com/manual/page_rtp.=
html</a>). If I have an FPGA that speaks VRT over Ethernet or Aurora can I =
control a USRP, and are there examples/documentation of controlling a USRP =
without running an instance of UHD? In my use case I need to send timed tra=
nsmit commands and data packets, and timed receive commands and receive dat=
a packets. <u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p=
><p class=3D"MsoNormal">In the case that running without UHD is a headache =
I don=E2=80=99t want to brave, are there examples of running UHD on ARM cor=
es?<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p clas=
s=3D"MsoNormal">Any insight is appreciated.<u></u><u></u></p><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Thanks,<u></u><u></=
u></p><p class=3D"MsoNormal">Richard<u></u><u></u></p><p class=3D"MsoNormal=
"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></=
div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000017599105959d3261--


--===============7337553806808519291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7337553806808519291==--

