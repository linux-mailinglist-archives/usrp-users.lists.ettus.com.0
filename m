Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A62A24C0D8
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 16:47:44 +0200 (CEST)
Received: from [::1] (port=41404 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8lqw-0002WO-4v; Thu, 20 Aug 2020 10:47:42 -0400
Received: from mail-qv1-f45.google.com ([209.85.219.45]:40435)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k8lqr-0002PX-RZ
 for usrp-users@lists.ettus.com; Thu, 20 Aug 2020 10:47:37 -0400
Received: by mail-qv1-f45.google.com with SMTP id s15so1008882qvv.7
 for <usrp-users@lists.ettus.com>; Thu, 20 Aug 2020 07:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=o2PV+pnHpDRzFxcQ5T0zmiux27kKTyJQ1IMfWvBHdRI=;
 b=gxlvL0l30ckn4x03P6svEM+nk4dmulH7GGlTf/as93HitF36uElQ7tgtP4RmfcklgC
 UinRKCeTuUTLjjB9qoV5CpSoC494YuNehwnYwLT39+EDYEmyBx70F9TP7seQR5E+/Rla
 vV+0XYP9kOiibtV+9u3dfZqUnbtId8EUXYI4HvbRbFZ3fSYMZ2PgaQu9ilNE2k8wttHj
 Klq+hVHHEumzaOG3nvrI+PbLdmL2TKL40as8bXceTkeHKYHjCViC4ktPXHELOpX6kjQs
 omhzr/ptWxSEKlp6SGNESSmOeVWOFsBz55s3PbP7a9DL6/xkTW4C+3D02klssbx+zHad
 zMdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=o2PV+pnHpDRzFxcQ5T0zmiux27kKTyJQ1IMfWvBHdRI=;
 b=pvmxrxnNuGpiENdEeEiqFyw2PT4/5icpBCaHm0hnLFaZiTr9xVsAmmJxFWiI2W3yos
 BDFifl05fGR6s5xFHiDI90BgWDn79Q2TbxAoY3H+jwPMDzTlnvILHpET0cKmDEnGP8JP
 LDJUcJIWTKJbTMOvr3l8+tjAf8IfdNx7oJgtzt+106KuKZIzHeGfvpPmg8FboJpcHWZv
 +vC9n7h1iOzaeM9xtUqzIg2F0AAtsIvZ8L1zAGe4ai5xR8/i7m2n+ka1MPTV/ZvSzMsv
 sMtFFiS8F54zQ7wIyYUAEpeSxj6q7D8ty9K5LFdwaxCYGsG+7qVOFOASPB3RxAXfBArT
 v4Fg==
X-Gm-Message-State: AOAM532lsPjyxucGvZMbG/P4uyWb8mwuQ/t93BFadvRhntS6thAMs2fd
 ZhzdRge4+baD0NdLMu5h0RU=
X-Google-Smtp-Source: ABdhPJz4t4MIY/RKOLo5Mhn1TOv1vZ/vC1640Ou3w/ZsdweyCIr7bFhLqCkZ67Peh86QhdFSPp/85g==
X-Received: by 2002:ad4:50c9:: with SMTP id e9mr3308139qvq.26.1597934817281;
 Thu, 20 Aug 2020 07:46:57 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id m17sm2848808qkn.45.2020.08.20.07.46.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Aug 2020 07:46:56 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 20 Aug 2020 10:46:56 -0400
Message-Id: <6529FE32-81AB-4045-9F98-20FA89C3CCD1@gmail.com>
References: <1597923348.315197297@f704.i.mail.ru>
Cc: Usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <1597923348.315197297@f704.i.mail.ru>
To: Vladimir <www2008_2@mail.ru>
X-Mailer: iPhone Mail (17G68)
Subject: Re: [USRP-users] B200mini vs B205mini - is there any performance
 difference?
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============7513376089742473976=="
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


--===============7513376089742473976==
Content-Type: multipart/alternative; boundary=Apple-Mail-E2E7A72E-8BFA-4ACB-870E-024AD5AA2C6E
Content-Transfer-Encoding: 7bit


--Apple-Mail-E2E7A72E-8BFA-4ACB-870E-024AD5AA2C6E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

My recollection is that the FPGA tools pad the output file out to the size o=
f the FPGA.=20

There is no functional difference.=20

Sent from my iPhone

> On Aug 20, 2020, at 7:35 AM, Vladimir <www2008_2@mail.ru> wrote:
>=20
> =EF=BB=BF
> Marcus,
> =20
> Thanks for the answer. I look at the stock FPGA images and B205mini=E2=80=99=
s file is almost twice larger. Are they actually the same by functionality/r=
esources used by stock image, or 205 has some more buffers or something like=
 that?
> =20
> Vladimir
> =20
> =D0=A7=D0=B5=D1=82=D0=B2=D0=B5=D1=80=D0=B3, 20 =D0=B0=D0=B2=D0=B3=D1=83=D1=
=81=D1=82=D0=B0 2020, 0:24 +03:00 =D0=BE=D1=82 Marcus D Leech <patchvonbraun=
@gmail.com>:
> =20
> The FPGA on the B205 is larger and also has the extended industrial temper=
ature range. But apart from that they are identical.
>=20
> Sent from my iPhone
> =20
> > On Aug 19, 2020, at 5:17 PM, Vladimir via USRP-users <usrp-users@lists.e=
ttus.com> wrote:
> >
> >
> > Hello!
> >
> > Is there any performance difference between subjects if we=E2=80=99re go=
ing to use stock fpga firmware? I see that B205mini has twice larger fpga, b=
ut does it really influence perfomance/capabilities and how? Are there any o=
ther differences between them? Is B200mini in some way limited in comparison=
 to B205mini, if we=E2=80=99re not going to forge our own fpga fw for it? We=
 are speaking about some regular stream-based sdr applications like experime=
ntal gsm-umts-lte setups with sampling rates up to ~15-20 MSps. Currently we=
 have done some experiments with B205mini, and need more boards, so we need t=
o understand if B200mini would suffice.
> >
> > Thank you,
> > Vladimir Pavlenko
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> =20
> =20
> =20
> =20

--Apple-Mail-E2E7A72E-8BFA-4ACB-870E-024AD5AA2C6E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">My recollection is that the FPGA tools pad t=
he output file out to the size of the FPGA.&nbsp;<div><br></div><div>There i=
s no functional difference.&nbsp;<br><div><br><div dir=3D"ltr">Sent from my i=
Phone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 20, 2020, a=
t 7:35 AM, Vladimir &lt;www2008_2@mail.ru&gt; wrote:<br><br></blockquote></d=
iv><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF
<div><div>Marcus,</div><div>&nbsp;</div><div>Thanks for the answer. I look a=
t the stock&nbsp;FPGA images&nbsp;and B205mini=E2=80=99s file is almost twic=
e larger. Are they&nbsp;actually the same by functionality/resources used by=
 stock image,&nbsp;or&nbsp;205 has some more buffers or something like that?=
</div><div>&nbsp;</div><div>Vladimir<br>&nbsp;</div><blockquote style=3D"bor=
der-left:1px solid #0857A6; margin:10px; padding:0 0 0 10px;">=D0=A7=D0=B5=D1=
=82=D0=B2=D0=B5=D1=80=D0=B3, 20 =D0=B0=D0=B2=D0=B3=D1=83=D1=81=D1=82=D0=B0 2=
020, 0:24 +03:00 =D0=BE=D1=82 Marcus D Leech &lt;patchvonbraun@gmail.com&gt;=
:<br>&nbsp;<div id=3D""><div class=3D"js-helper js-readmsg-msg"><div><div id=
=3D"style_15978722762006602780_BODY">The FPGA on the B205 is larger and also=
 has the extended industrial temperature range. But apart from that they are=
 identical.<br><br>Sent from my iPhone<br>&nbsp;<div class=3D"mail-quote-col=
lapse">&gt; On Aug 19, 2020, at 5:17 PM, Vladimir via USRP-users &lt;<a href=
=3D"/compose?To=3Dusrp%2dusers@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br>&gt;<br>&gt;<br>&gt; Hello!<br>&gt;<br>&gt; Is there any pe=
rformance difference between subjects if we=E2=80=99re going to use stock fp=
ga firmware? I see that B205mini has twice larger fpga, but does it really i=
nfluence perfomance/capabilities and how? Are there any other differences be=
tween them? Is B200mini in some way limited in comparison to B205mini, if we=
=E2=80=99re not going to forge our own fpga fw for it? We are speaking about=
 some regular stream-based sdr applications like experimental gsm-umts-lte s=
etups with sampling rates up to ~15-20 MSps. Currently we have done some exp=
eriments with B205mini, and need more boards, so we need to understand if B2=
00mini would suffice.<br>&gt;<br>&gt; Thank you,<br>&gt; Vladimir Pavlenko<b=
r>&gt;<br>&gt;<br>&gt; _______________________________________________<br>&g=
t; USRP-users mailing list<br>&gt; <a href=3D"/compose?To=3DUSRP%2dusers@lis=
ts.ettus.com">USRP-users@lists.ettus.com</a><br>&gt; <a href=3D"http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">ht=
tp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></div></=
div></div></div></div></blockquote>&nbsp;<div>&nbsp;</div><div data-signatur=
e-widget=3D"container"><div data-signature-widget=3D"content"><div>&nbsp;</d=
iv></div></div><div>&nbsp;</div></div>
</div></blockquote></div></div></body></html>=

--Apple-Mail-E2E7A72E-8BFA-4ACB-870E-024AD5AA2C6E--


--===============7513376089742473976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7513376089742473976==--

