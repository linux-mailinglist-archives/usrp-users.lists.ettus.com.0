Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9197263846A
	for <lists+usrp-users@lfdr.de>; Fri, 25 Nov 2022 08:20:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 647B43844C0
	for <lists+usrp-users@lfdr.de>; Fri, 25 Nov 2022 02:20:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669360813; bh=bgYENA02VdDnIlUV4GVrq6XPJxgUDbD7cAOtoyTyw68=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GIGsU+s3F06MsJc4xGLtqGRf1Ga6628Yzt3IFEggFTxMB4tEOif5qzawViE5Vx2z3
	 /0nxmS4dJk+W/n8VUBPthOnTV0pO0mgihxOznifNM3yxjRpTKC+QKhDJByFcpjESM4
	 Gd3XRW9pkJ7E80nN2JyUHn/uFJatFoz6KxaAtYOWtKWddu+AbXYP0EPrJ1ZJbFO+Va
	 Fw4T3Lmw3VUwu4rnaWjwXEqHqFFNmwzF9v5L7c7uX7tjBJBW7YMoJkwoqfqo+NEp9F
	 05ns8qTcfuP033Dn0ikZDmgKLAJqo17u9ixEOtY7GlOF7mjnaJhd8Kg/mHq+V41rrN
	 13+gHugDdEkUw==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 939BB38439B
	for <usrp-users@lists.ettus.com>; Fri, 25 Nov 2022 02:20:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="h0e2Z7RD";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id g10so2173548qkl.6
        for <usrp-users@lists.ettus.com>; Thu, 24 Nov 2022 23:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dbpo3ZtYWTDQaSHx+gvJz0V3/5Uq9NeSN+R1dhX40g8=;
        b=h0e2Z7RDd/cayxrBF8JInyn7hClgP2bsqW5pzpNoggZUzvCRJXrRS031XYptqfkd4G
         kToGfND/2pb+0GTkOGMXIEWeWgyCuQrxYxmIU+1NJVmR/YsXCTFeLOkmlejTNBWDMPis
         KPzBFXcDi56lJ6XnbMm145Tn9P9wv8pZV5rLfeOw5N2FMNCw7mt9EaBOb3Kg8fu55iZe
         M9kM35lTqkP2sBs8Lwb1Tx18v9N+CyDMVGJEhnLc3X2QzV9AqgxT5A8jjW2R1v8LB3iT
         fllqEE1B3qz1149jQUUndAAqdV+oIFrO2RcQJoZvMS64YjtUseExGXatGf7KV/vy27P1
         Hp0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dbpo3ZtYWTDQaSHx+gvJz0V3/5Uq9NeSN+R1dhX40g8=;
        b=hjmhrLN8c7bJwu0K1Ish+NRBBv3u2lSUWzMqs7NzvzTAK5p/rqxI1e9R2oJYW4Wbk7
         54tGoWB+GZz6UzJeSP2FALUdNUeZeZSrt7NnSQjJi4IELfdxYkD/jdUI4dirDwcuFGOV
         8E/x2+lzdc7w+NP+3yscm/FJODd44Cs6aiR3hD1tfm4H77VD8zJeJLmi8gup2gfbLWEQ
         KImiAGOmvGcCMWEmSSkArw3Dq86dt+CAYiKj6dksxl4WTQwXmxY7A/W1xj1N6uRpPMsv
         64+Ck/aCf4oBYKZS4aY/9HmEn1t6sPwjjRJtMydAFshC6fbO7Oorg1Hu7QC/0y90UGV/
         C1pw==
X-Gm-Message-State: ANoB5pnxbLm+Lle2DSeHxerX1kiWCBmQGjfkuieWQfJPXVHR+soCp/5A
	SHAt3zncW1JvqRVkgm4LX9WUVOVTGWMPt7P/VLXUfw==
X-Google-Smtp-Source: AA0mqf4F/vJ7fpmoDZQj+bqoia+aH6Qkqb25RXPOPh/KaySLyKjcNt19TnLOUxdwtZJu5G/qHTCO5JqzefNAXctywXw=
X-Received: by 2002:ae9:e405:0:b0:6fa:dde:394b with SMTP id
 q5-20020ae9e405000000b006fa0dde394bmr32475803qkc.265.1669360805820; Thu, 24
 Nov 2022 23:20:05 -0800 (PST)
MIME-Version: 1.0
References: <MHsUVIcVUbwj8fxukwBhNUv0Vkauuh81mNxEuJAdLOE@lists.ettus.com>
In-Reply-To: <MHsUVIcVUbwj8fxukwBhNUv0Vkauuh81mNxEuJAdLOE@lists.ettus.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Fri, 25 Nov 2022 08:19:54 +0100
Message-ID: <CAKHaR3nc+QmrxDe2G-ax0Yh33XVtjC0kuGBkEsaHArj_EoWwEQ@mail.gmail.com>
To: perper@o2.pl
Message-ID-Hash: 2TVTIFRZSBLV2R4GCEPOU7YYTVT7IVZN
X-Message-ID-Hash: 2TVTIFRZSBLV2R4GCEPOU7YYTVT7IVZN
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2TVTIFRZSBLV2R4GCEPOU7YYTVT7IVZN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1791793782279696695=="

--===============1791793782279696695==
Content-Type: multipart/alternative; boundary="000000000000d54d6f05ee46597f"

--000000000000d54d6f05ee46597f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,
We maintain our fork of UHD as we already customize it so if you could
point me to the right things to change it would be great. I tried changing
the default master clock rate definition in MPM python code but that causes
the software not to run at all
Thanks

Dario Pennisi



Il Gio 24 Nov 2022, 21:55 <perper@o2.pl> ha scritto:

> Hello,
>
> There might be some changes needed in the source code. I=E2=80=99m not su=
re what
> exactly (maybe prc_clock_map should be changed), but it seems the
> configuration for 100MHz clock multiply (3e9 sample rate) is still presen=
t
> in x4xx_sample_pll.py and x4xx_reference_pll.py.
>
> I can try build 100MHz version for you if you need it and if you are not
> afraid to modify slightly UHD code to find out what exactly might be
> missing to enable 100MHz support again.
>
> Best Regards,
> Piotr Krysik
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d54d6f05ee46597f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Piotr,</div><div dir=3D"auto">We maintain our for=
k of UHD as we already customize it so if you could point me to the right t=
hings to change it would be great. I tried changing the default master cloc=
k rate definition in MPM python code but that causes the software not to ru=
n at all</div><div dir=3D"auto">Thanks</div><div dir=3D"auto"><br><div data=
-smartmail=3D"gmail_signature" dir=3D"auto">Dario Pennisi<br><br>=C2=A0=C2=
=A0=C2=A0 </div><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr=
" class=3D"gmail_attr">Il Gio 24 Nov 2022, 21:55  &lt;<a href=3D"mailto:per=
per@o2.pl">perper@o2.pl</a>&gt; ha scritto:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><p>Hello,</p><p>There might be some changes needed in the source c=
ode. I=E2=80=99m not sure what exactly (maybe prc_clock_map should be chang=
ed), but it seems the configuration for 100MHz clock multiply (3e9 sample r=
ate) is still present in x4xx_sample_pll.py and x4xx_reference_pll.py.</p><=
p>I can try build 100MHz version for you if you need it and if you are not =
afraid to modify slightly UHD code to find out what exactly might be missin=
g to enable 100MHz support again.</p><p>Best Regards,<br>Piotr Krysik</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>

--000000000000d54d6f05ee46597f--

--===============1791793782279696695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1791793782279696695==--
