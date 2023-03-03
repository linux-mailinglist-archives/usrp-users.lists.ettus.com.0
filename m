Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 849E56A9AFD
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 16:46:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6EA913848DC
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 10:46:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677858416; bh=MkJEdMunzgP7NW//f9SalftKzxBf/WRGSEvzDOywZ+c=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RxdH64HkS5d6UH/oi+xd1c1elP4M1AZ/wV3nb446S4SBomNaA7aIHugA0nRyA8x3j
	 RVN2tv1ZcMxgQoal/Gp4mJ0bXWLVGeYUv7KG23jOKb16CnDfuHW9N1DZfVrUvIptVb
	 X9JWRxMeJeU/KyveEnVaIb5qYan1Gxf2R4y/QZBWBYAUe4kvxCfcaahKOhuK+2EWdI
	 bBrOWfT+CBcJPJ80qrBETweUJjA99oH9oizFxrl+d27LFBlPEOTuQ6bCJ/Fs/Srmxn
	 KP5hGushpeqaVqbhExTU4fly4O7Zai2yidAj2LFnR3dyGDIYGn98HUxOaRL3uRiBeP
	 +EWBD2eeNA7FQ==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D0A5384861
	for <usrp-users@lists.ettus.com>; Fri,  3 Mar 2023 10:46:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kIu4vwnR";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id ay14so8328184edb.11
        for <usrp-users@lists.ettus.com>; Fri, 03 Mar 2023 07:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677858376;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RpkwW+7SW3Vuk+4MoR97jZiTtLOuu8fA2KIDVy4OWYE=;
        b=kIu4vwnRBz7QATqDeSHs2fkMOx1bMKvEgC2ZQIdCJmospfv+PI6V6mNhQZIeY06WSt
         aS5uLOQXtZ6KOGuzi7aUDcV6r02S/L8msrVExnhWsjw2RxWFjr4dfgFTPA5UHozn6y6A
         W64l0Xmbca2jOl2lp99ygqir3ryIJJO57iDMWnNSBm1KMJUQQgw/fR250PXUckJY8F8t
         MWWwEyTxUmNU0csflEli1YzlFXtjNlHJn+yCofgCM4NmTZabtbQWZdfI72pKGcqpJ7a0
         PnXkoBPyMuXrJCvG/HxodUzVaoTBpsvLSADBkZRFAgmWLr2Q/hu28wG6BNRjxntRvKWr
         ye6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677858376;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RpkwW+7SW3Vuk+4MoR97jZiTtLOuu8fA2KIDVy4OWYE=;
        b=yj94ajxpfT7F/CFJp8q4Rv+9zEZR7UIIzt9Hxb+BzwCVvtdj+F8n36V+52t4E30YvX
         z1cnWDNLBz2jGaDAZ2Lk1kNZf7vN+qD1b+G8Lfraq3g2ogs9+rBEBdwnj5WSFZQPh3bA
         zKd93hBixjcUv5TpQz/48cVG1nCF0E7LvBiQsegjY5+9vxbeUkPVCbqrPEQx9BBI5U8Q
         bWtYe1kE8PbUwfAJZgDsmMRRy8Ee6gn1/UAMjGOYodEhaDv+JtlHp6IO0ji693dLSxnR
         RVaO3hC2nlyJ4mNbkpMj8wH6Be9OLaChk6QHQ/ZqrPbaSqTPbL6PA7kNx4W+BIQcXPWZ
         43MA==
X-Gm-Message-State: AO0yUKUNCa5KBRLb+b5bpN3oDgvxW1pysARxkIkh2dX8wDyf97Um22ef
	Qv5jmn8Wl4GQGBVJ4nU2rCXpbxEP07OcMpQQPlk=
X-Google-Smtp-Source: AK7set/w11f8LbWZ7TK5e9BqngVZIg90qgON9ZzwgyC/IIeMrnLqx9OdeoFgxTQupmKos9GANuqIsmMadKiSGaS5YKE=
X-Received: by 2002:a17:906:9488:b0:88d:7af6:25de with SMTP id
 t8-20020a170906948800b0088d7af625demr1000129ejx.12.1677858376195; Fri, 03 Mar
 2023 07:46:16 -0800 (PST)
MIME-Version: 1.0
References: <PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
 <PH0PR15MB470475B739510FC1329965F2E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAEXYVK76azqDJCxcBx6pN53abV9ACic0EcC1MfHLWoTpaK84Xg@mail.gmail.com>
 <20230301145718.0d3da2c7@x230> <CAEXYVK7YHU+XYUtTcn0k6WijONQn9eQSA22mHR0VAS5uRxrHHw@mail.gmail.com>
 <7ff087e59b0c4be49e9f490ec83b7277@EXCHANGE1.vastech.co.za>
In-Reply-To: <7ff087e59b0c4be49e9f490ec83b7277@EXCHANGE1.vastech.co.za>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 3 Mar 2023 10:46:05 -0500
Message-ID: <CAEXYVK79TnH39_y7kSNeCqM52btPrYCYjCjEzEyFk5obO8ZaiQ@mail.gmail.com>
To: Kevin Williams <kevin.williams@vastech.co.za>
Message-ID-Hash: RGIYDWMPX5SKUFJMYMALNUTMFHZNOOXA
X-Message-ID-Hash: RGIYDWMPX5SKUFJMYMALNUTMFHZNOOXA
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Bas.Vermeulen@molex.com" <Bas.Vermeulen@molex.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: What do I need to do to make uhd_usrp_probe see my custom RFNOC module?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RGIYDWMPX5SKUFJMYMALNUTMFHZNOOXA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0153065238317189878=="

--===============0153065238317189878==
Content-Type: multipart/alternative; boundary="0000000000007f224205f600d8e7"

--0000000000007f224205f600d8e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 3, 2023 at 10:14=E2=80=AFAM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi Guys,
>
>
>
> Answering my own question also.
>
>
>
> I had a mismatch in the NOC_ID between the driver code and my firmware
> block.
>
>
>
> After fixing that I could get uhd_usrp_probe and others, like gnuradio, t=
o
> recognize my block.
>
>
>
> It did still require an LD_PRELOAD after the =E2=80=9Csudo make install=
=E2=80=9D but that
> is ok for now.
>

I just want to reiterate that there is no need for LD_PRELOAD and you
should be using UHD_MODULE_PATH.

Brian

--0000000000007f224205f600d8e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Mar 3, 2023 at 10:14=E2=80=AFAM Kevin=
 Williams &lt;<a href=3D"mailto:kevin.williams@vastech.co.za">kevin.william=
s@vastech.co.za</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div class=3D"msg-7397729968396663284"><div lang=3D"EN-ZA"><=
div class=3D"m_-7397729968396663284WordSection1"><p class=3D"MsoNormal" sty=
le=3D"text-align:justify"><span>Hi Guys,<u></u><u></u></span></p><p class=
=3D"MsoNormal" style=3D"text-align:justify"><span><u></u>=C2=A0<u></u></spa=
n></p><p class=3D"MsoNormal" style=3D"text-align:justify"><span>Answering m=
y own question also.<u></u><u></u></span></p><p class=3D"MsoNormal" style=
=3D"text-align:justify"><span><u></u>=C2=A0<u></u></span></p><p class=3D"Ms=
oNormal" style=3D"text-align:justify"><span>I had a mismatch in the NOC_ID =
between the driver code and my firmware block.<u></u><u></u></span></p><p c=
lass=3D"MsoNormal" style=3D"text-align:justify"><span><u></u>=C2=A0<u></u><=
/span></p><p class=3D"MsoNormal" style=3D"text-align:justify"><span>After f=
ixing that I could get uhd_usrp_probe and others, like gnuradio, to recogni=
ze my block.<u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"text-a=
lign:justify"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal" s=
tyle=3D"text-align:justify"><span>It did still require an LD_PRELOAD after =
the =E2=80=9Csudo make install=E2=80=9D but that is ok for now.</span></p><=
/div></div></div></blockquote><div><br></div><div>I just want to reiterate =
that there is no need for LD_PRELOAD and you should be using UHD_MODULE_PAT=
H.</div><div><br></div><div>Brian</div></div></div>

--0000000000007f224205f600d8e7--

--===============0153065238317189878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0153065238317189878==--
