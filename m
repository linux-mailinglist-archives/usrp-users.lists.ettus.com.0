Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B743E4C5CD2
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 17:25:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBC75384BBC
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 11:25:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xy4CeAP9";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 42FC338458A
	for <USRP-users@lists.ettus.com>; Sun, 27 Feb 2022 11:24:02 -0500 (EST)
Received: by mail-qt1-f169.google.com with SMTP id v3so7009756qta.11
        for <USRP-users@lists.ettus.com>; Sun, 27 Feb 2022 08:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=pHQXjIOLqzvPvpIfupeAH13w5cj+ACX2MhveYR90iko=;
        b=Xy4CeAP9dyuzlLuTID9aHOdcU132u14E++Vp3IjPw5doFqD3kuPvrztODxSXJOEswD
         hHEOO7BSTdfK0Ei7qw24Il/iMh+BDc4UebkA5w38RXZTK6s5uV186WTh9isXqM2h9mh5
         0aAH7GqFKFVrLsea3Yylt3jkjCRmnVqqTV57XdhpX6c05SIdmis57NRum0eySTuR/VuN
         uAOqYlSax6GaLoEejfAGOgx/orH4+uKnAA6xaCCusmLLLzpmk/MObcVMuA5+zh6kyZGk
         TKLXsAY39MIECn1JTaMDHECtdt0hEK/auFOEu8PngtbiimYYMiCugUs5+d0V+7gHeHey
         qrVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=pHQXjIOLqzvPvpIfupeAH13w5cj+ACX2MhveYR90iko=;
        b=bYab7KjBudExdG1XA+ImSjIqX5GTOOCTjrjI0OC87lMEJgErTjt7bLnNiWGhPk0Tbn
         uAcK6M3t1LpoMpQ68SkA1S2kbLo7mCPM3HM6KbjoWXQgUQYtllzr4N/CEbASWOl7lRpO
         l3EUsfXIWCdGlKEDJeA4g7bt4N/fosk3WIBTC/NAhGWb8a5ScOyS+VKBPvNQ0fZKYH0y
         1t9cpDzEyprVdQy1vCV/4KGKXnEuuXGE8JY3Nn/6pmVE/C+PEJ43sF2xfoa6oyskp08J
         BySk08FO1Pbf6HmHvq/WtNdvskdQy2Da4MDOkF1nt1rf3Kbycm61xshLlo3nZ7pSehH4
         O/+Q==
X-Gm-Message-State: AOAM530uwCeZvxBjxi4Qx4i2kZdu6fm0qnFDihb0vf2TeT8rMrZvgOxj
	1ROBBII7BYyEgFn8NRpu110=
X-Google-Smtp-Source: ABdhPJyIEuS/k7GK/ErcIYKwc0eeZi95YgutGgfYu9L63E7hIJ7WpWWop3UJCI0iyYxkGLg6cBYogw==
X-Received: by 2002:a05:622a:349:b0:2de:6589:2846 with SMTP id r9-20020a05622a034900b002de65892846mr13694283qtw.421.1645979041702;
        Sun, 27 Feb 2022 08:24:01 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id g24-20020a05620a13d800b006490afaa2f2sm3829530qkl.129.2022.02.27.08.24.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Feb 2022 08:24:01 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 27 Feb 2022 11:23:59 -0500
Message-Id: <D6F17993-DEE3-4A71-A88C-BBD178DC0E1E@gmail.com>
References: <CAD8PmbpSBj74xXqkDd_otMdQXuX1-iWbDy6V+m-JpHm_WAug_A@mail.gmail.com>
In-Reply-To: <CAD8PmbpSBj74xXqkDd_otMdQXuX1-iWbDy6V+m-JpHm_WAug_A@mail.gmail.com>
To: Sadiq Iqbal <sadiq.zahid73@gmail.com>
X-Mailer: iPhone Mail (19D52)
Message-ID-Hash: KG754YBFXYVLM5VRJJ5FBOQ7EUIEQ3UR
X-Message-ID-Hash: KG754YBFXYVLM5VRJJ5FBOQ7EUIEQ3UR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to estimate wireless channel using Matlab and ni USRP 2920
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KG754YBFXYVLM5VRJJ5FBOQ7EUIEQ3UR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0027728237192051088=="


--===============0027728237192051088==
Content-Type: multipart/alternative; boundary=Apple-Mail-600CFB68-86A2-4A37-9B32-DB137730510F
Content-Transfer-Encoding: 7bit


--Apple-Mail-600CFB68-86A2-4A37-9B32-DB137730510F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

https://www.mathworks.com/help/lte/ug/channel-estimation.html

Really the radio is part of the channel, so estimation algorithms I would th=
ink would be hardware agnostic.=20

You might do better asking on a MatLab forum rather than here.=20

Sent from my iPhone

> On Feb 27, 2022, at 7:08 AM, Sadiq Iqbal <sadiq.zahid73@gmail.com> wrote:
>=20
> =EF=BB=BF
> Hi everyone,=20
>=20
> I am using matlab 2019 and NI USRP 2920 to implement a wireless network wh=
ich consists of two Txs and two Rxs. I am using the general QPSK code which i=
s available on the matlab website. But the thing is I can not find the chann=
el estimation required when using a USRP. Therefore, can anybody guide me on=
 this or point me in the right direction? or Provide a source code for chann=
el estimation using USRP 2920.=20
>=20
> Thank you.=20
> Regards
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-600CFB68-86A2-4A37-9B32-DB137730510F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><a href=3D"https://www.mathworks.com/help/l=
te/ug/channel-estimation.html">https://www.mathworks.com/help/lte/ug/channel=
-estimation.html</a><div><br></div><div>Really the radio is part of the chan=
nel, so estimation algorithms I would think would be hardware agnostic.&nbsp=
;</div><div><br></div><div>You might do better asking on a MatLab forum rath=
er than here.&nbsp;</div><div><br><div dir=3D"ltr">Sent from my iPhone</div>=
<div dir=3D"ltr"><br><blockquote type=3D"cite">On Feb 27, 2022, at 7:08 AM, S=
adiq Iqbal &lt;sadiq.zahid73@gmail.com&gt; wrote:<br><br></blockquote></div>=
<blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi ever=
yone,&nbsp;<div><br></div><div>I am using matlab 2019 and NI USRP 2920 to im=
plement a wireless network which consists of two Txs and two Rxs. I am using=
 the general QPSK code which is available on the matlab website. But the thi=
ng is I can not find the channel estimation required when using a USRP. Ther=
efore, can anybody guide me on this or point&nbsp;me in the right direction?=
 or Provide a source code for channel estimation using USRP 2920.&nbsp;</div=
><div><br></div><div>Thank you.&nbsp;</div><div>Regards</div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-600CFB68-86A2-4A37-9B32-DB137730510F--

--===============0027728237192051088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0027728237192051088==--
