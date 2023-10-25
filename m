Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C96D7D784E
	for <lists+usrp-users@lfdr.de>; Thu, 26 Oct 2023 01:00:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C5645385F69
	for <lists+usrp-users@lfdr.de>; Wed, 25 Oct 2023 19:00:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698274825; bh=eZJioPoIbLQQHrAM9jH3eCiLw+KpR40HcICVTrcg0CA=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bv8UHBqsYOUrWTfXZsPKd5szzHIpt9L0fJYpji853cMB3Xw/T89dc5XTqtfIaa7bC
	 2/YeF1dTMAB7wGiV3jbnKklmG2hBmnOJ5lVIO6d5TuuWB+DUAKAfAVrV3uPyHPceg2
	 cAOcRsROfY88MqYu+GsWcSBBOG0wAka3uEjGP1fjEB6WGiSnlP1FlK7gvu83iCqqTr
	 UtIaMlcW34k0kzi9u7bLtCEl7eV6MaGX7UgUJuu/kBXY1RGtsInsvyrbzSbM8yGrsu
	 xFeusHzDhcjuK8zX1xLPXMA2Wm6U9a2bIBDJCkhSj18Gk3PXI0LuH+plsmYsSVyQJ6
	 Rfi3n0Ynn8AUw==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B991385BF5
	for <usrp-users@lists.ettus.com>; Wed, 25 Oct 2023 19:00:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fa2jlGis";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-66d12b3b479so1814986d6.1
        for <usrp-users@lists.ettus.com>; Wed, 25 Oct 2023 16:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698274801; x=1698879601; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A92tSUMLB63prtZfNfCdxJ49HcJX9eTdF3HJSXLcC5c=;
        b=fa2jlGisJtikah9wEA/XR25PTjMWB6kC2ftA18EPMkCmxSKitrY/NViyQLOCZRxL4A
         dxws4S6IEgwau84bqkjwpwgnzMHJjCpzlG3TRnZM7x0p5cLRKdDXKHd6vmWdSuSmzgVD
         vPvOm/9hR6RGGyGgY9uGXdfZ+2VS2NYuARV8PSodR1SPa+KCkVoyMnrhqXxxl4ey8Be0
         Fv0ro4Ry8ZV81aCwtYDBTj7wijD0lEqwBmlc1xuy3nIys0LhFbiefmdCQiu4MdT5C4C7
         2e20xJMZkZ5lpfR2o5puF9+1gpJB6vlTAq4ADe8F/eLcewDhrilDJ48zYke7bSXFl4gw
         Wa1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698274801; x=1698879601;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A92tSUMLB63prtZfNfCdxJ49HcJX9eTdF3HJSXLcC5c=;
        b=tgZLjXZ2o98QUqGRvSwdYPSB7bWWq8oJD0x3Yo9S7FQ2Fem6tNQ2Bg0/tpCX6/OR1x
         8UpV6QxD2flenF8XL3aPMRRb4rdWfUIxPebxYdXm68fY4eVtKZL7M6qdqbj+tiBqv4YM
         dyJBl733VSyxSgB2Py3jVf7/qkQ4jmE/lfWr9bYUoWNSODzF/jMJVSJ7hc+SP2hu7QCL
         UQgLtTlKBLKrb2trsdf6/IzZrr8myhn53J7iMHpUFqv/kCFtQxSP09srG27VllWoVBsK
         KoNrHyn9IjQhsoD856vRgGgmVCTmrrsRV6MnoDHf9Ewwk00ORwI+cYNpDiNNH4SNXMKW
         QkgA==
X-Gm-Message-State: AOJu0YysagctTkrXqatn5s/M/odlV2Paxug5gSeciZ1qKv4g6pq8aIay
	JcVzQFHRfQNU+DFJ5acRNLif5PTlT90=
X-Google-Smtp-Source: AGHT+IF89vYbh3Y+sQKk8YjQqMBbzTmFbdFG7NOi5dSienvNIyj5tF/XXgssNegQHgoXri+nf1+uEg==
X-Received: by 2002:a05:6214:f24:b0:66d:4680:6dc5 with SMTP id iw4-20020a0562140f2400b0066d46806dc5mr23607466qvb.50.1698274801448;
        Wed, 25 Oct 2023 16:00:01 -0700 (PDT)
Received: from smtpclient.apple ([174.88.54.173])
        by smtp.gmail.com with ESMTPSA id w13-20020a0cef8d000000b0065b17b925d0sm4736878qvr.38.2023.10.25.16.00.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 16:00:01 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 25 Oct 2023 18:59:42 -0400
Message-Id: <B585E010-C744-4F5C-AF7C-3A1727DB8AD8@gmail.com>
References: <CAAEs_nQf2L0vo0cqs3XFZzW9jpb2cp5sPaTsFe65vT6tkKt2mA@mail.gmail.com>
In-Reply-To: <CAAEs_nQf2L0vo0cqs3XFZzW9jpb2cp5sPaTsFe65vT6tkKt2mA@mail.gmail.com>
To: Brian Hay <brian@chaosinc.com>
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: RTIMUH77UF4X37WECXIR5JH3EVQU2YJH
X-Message-ID-Hash: RTIMUH77UF4X37WECXIR5JH3EVQU2YJH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 Remote Power On
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RTIMUH77UF4X37WECXIR5JH3EVQU2YJH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6095342247087129883=="


--===============6095342247087129883==
Content-Type: multipart/alternative; boundary=Apple-Mail-9E370060-1CF3-4BF8-A67E-75EF425DFFC5
Content-Transfer-Encoding: 7bit


--Apple-Mail-9E370060-1CF3-4BF8-A67E-75EF425DFFC5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

There is no such feature that I know of.=20

Sent from my iPhone

> On Oct 25, 2023, at 6:58 PM, Brian Hay <brian@chaosinc.com> wrote:
>=20
> =EF=BB=BF
>=20
> Hello,=20
>=20
> Does anyone know if the N320 has a remote power on or Wake-on-LAN capabili=
ty? Or is the only way to turn it on by physically pushing the power button?=

>=20
> Thanks,
>=20
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-9E370060-1CF3-4BF8-A67E-75EF425DFFC5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">There is no such feature that I know of.&nb=
sp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><b=
lockquote type=3D"cite">On Oct 25, 2023, at 6:58 PM, Brian Hay &lt;brian@cha=
osinc.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><table style=
=3D"font-family:&quot;Times New Roman&quot;;direction:ltr;border-collapse:co=
llapse"><tbody><tr><td style=3D"font-size:0px;height:18px;line-height:0px"><=
/td></tr><tr><td><br></td></tr></tbody></table>Hello,&nbsp;</div><div dir=3D=
"ltr"><br></div><div>Does anyone know if the N320 has a remote power on or W=
ake-on-LAN capability? Or is the only way to turn it on by physically pushin=
g the power button?</div><div dir=3D"ltr"><br></div><div>Thanks,</div><div><=
br></div><div>Brian</div></div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-9E370060-1CF3-4BF8-A67E-75EF425DFFC5--

--===============6095342247087129883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6095342247087129883==--
