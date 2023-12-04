Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CFF803537
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 14:43:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5735384B3D
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 08:43:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701697432; bh=tf75aUdkf/h9kJ5nrLhywEEj+BP5UUxpJrDMFD8+G88=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=zmUKWQJni/1KqRtZ3f0t3msyNU7L44VCATJ/6VevirgQjgCX//+RTv1whTecAHE+S
	 rCKnoNJxlyRg7XSfK4W646H4gwQgVTHjOiwbB14CIJMk2JC6MZykyXWklEyFEyXHvI
	 NPiu1NxwT4wm0YzA+bmHdLlcTQkdjHE3alXY5l5alCE0lkw0/xE4WFXf0xdr//RbeX
	 Hi9TqB+W6sbRh9Fgwh7j2xwyMSq2KLVU4wpNbLOpyGV/Ocol7zTN54dFLFqVseofxn
	 vZdlEa03neU3BPhQdVsLFcLWAMwntB0IUp3xEmN15uowjbQbQzA4TbSK7OZ7vdPQ/U
	 6a0+QR19uH5nA==
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 84050383D1E
	for <usrp-users@lists.ettus.com>; Mon,  4 Dec 2023 08:43:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dxkLb0G3";
	dkim-atps=neutral
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3b8b80cec8fso1140610b6e.0
        for <usrp-users@lists.ettus.com>; Mon, 04 Dec 2023 05:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701697380; x=1702302180; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6WqYlMKoz6mqZgAmLrrIaccn0RBZ+d24iZccHBc922g=;
        b=dxkLb0G3Hyp32/IoMe5Wet5l7rDQdUncybBCSnIKZUBJujWujVjmJMUQYfNjblfI81
         2ck/4ytaF9ZbnhzZM5ZBfZ/3sfnutj8aTkTedYZJYmRtJWTMEUG6tqJXYbq7CrDtkDDI
         0l5K96AVDBL5VDxBbh4NCArtmCMzaWM9LxnuzqAlIU8OkibkxTZBDlTUS79rqyLe5HzM
         re70NMPx6GCbMz3i7EpEzSx2Ui+5FDcapFZO58eYy1ylrlZUlnNxsKuNmzh4DNm4H5MG
         004qOl9UDb8w8FK1s06rFKY8OFn1gEsdO1LauH9N4+kSTform+k4mzXQwAvvcyxp6Ks+
         BNTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701697380; x=1702302180;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6WqYlMKoz6mqZgAmLrrIaccn0RBZ+d24iZccHBc922g=;
        b=p8U0b4n+xBXcMRCxqSoWY98Kfe9e0S0Gr5hkuqb7vL+6AwuouaYdWHEKG4bTa0sp+G
         w+S17RLd0mbLte5IjxnsY3cTGnUqbW/yOgZmxhxi+2BmLA5XOqlhIaVwKGy5dp0n+orn
         qQza67IXe4ui+6mT+BNWa1CEHeiCNGdpQSnaF8RVGjwaepWZFOzb6gI0KNO0M9o4D/T+
         FoY3KFDTd6Em9/VVdZdnNIVkksXK3Ny9fBcDzC4DIJy/mnMoRoKGyCrHhi9Vzp0W9enB
         ghWWyMGTz+hFA+zM/r1GnPU+g65oIwoZZqkiaJsD9zyuoPhLmujy/CNVT/K5P3jq67MD
         u4nQ==
X-Gm-Message-State: AOJu0YwitUQ1t4qrargLfA3T3uDo3a2sRnt72P1Bshumy3EuAYF8NcgT
	iQ8dvHkelevNjYZGFuiH0uqduFu8Mag=
X-Google-Smtp-Source: AGHT+IHJBAU5QwoJ4hGFXEl6RhEq7DV7WBB8dldLzIAkFfZ9F00X/8oCfUR8OxqhGxyNPS23GDaHfg==
X-Received: by 2002:a05:6808:d9:b0:3b8:b063:ae14 with SMTP id t25-20020a05680800d900b003b8b063ae14mr4411677oic.113.1701697380466;
        Mon, 04 Dec 2023 05:43:00 -0800 (PST)
Received: from smtpclient.apple ([174.93.0.146])
        by smtp.gmail.com with ESMTPSA id v15-20020a05620a122f00b0077d606bec92sm4244039qkj.108.2023.12.04.05.42.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 05:43:00 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 4 Dec 2023 08:42:41 -0500
Message-Id: <135302A5-7887-412D-A202-59E76EDFE670@gmail.com>
References: <6ViSPAl8QcFRgCF2NKuNSFEm7c2yLU9h6QECYKPgI@lists.ettus.com>
In-Reply-To: <6ViSPAl8QcFRgCF2NKuNSFEm7c2yLU9h6QECYKPgI@lists.ettus.com>
To: purva.joshi@phd.unipi.it
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: MDQH4Y6T43OS62IQ2O43XVUKWFWR7CID
X-Message-ID-Hash: MDQH4Y6T43OS62IQ2O43XVUKWFWR7CID
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MDQH4Y6T43OS62IQ2O43XVUKWFWR7CID/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6227637057640248328=="


--===============6227637057640248328==
Content-Type: multipart/alternative; boundary=Apple-Mail-C790F3EC-6759-4F79-8A52-88ABC4FE98CC
Content-Transfer-Encoding: 7bit


--Apple-Mail-C790F3EC-6759-4F79-8A52-88ABC4FE98CC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Please share the output of:

ifconfig

And. uhd_config_info =E2=80=94version



Sent from my iPhone

> On Dec 4, 2023, at 3:53 AM, purva.joshi@phd.unipi.it wrote:
>=20
> =EF=BB=BF
> Dear Marcus,
>=20
> Sorry for late reply. I have connected USRP through SFP0 port using 10Giga=
 Ethernet card. For pinging, I have set the IP address by manually, which is=
 as per guidelines of ETTUS =E2=80=9CGetting started Guidelines=E2=80=9D. It=
 is new device, but my professor used this device before in Ubuntu 16.04 in s=
ame desktop, but now it is disconnected. Hope to hear from you soon. Thanks.=

>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-C790F3EC-6759-4F79-8A52-88ABC4FE98CC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Please share the output of:<div><br></div><=
div>ifconfig</div><div><br></div><div>And. uhd_config_info =E2=80=94version<=
/div><div><br></div><div><br></div><div><br><div dir=3D"ltr">Sent from my iP=
hone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Dec 4, 2023, at 3=
:53 AM, purva.joshi@phd.unipi.it wrote:<br><br></blockquote></div><blockquot=
e type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Dear Marcus,</p><p>Sorry for la=
te reply. I have connected USRP through SFP0 port using 10Giga Ethernet card=
. For pinging, I have set the IP address by manually, which is as per guidel=
ines of ETTUS =E2=80=9CGetting started Guidelines=E2=80=9D. It is new device=
, but my professor used this device before in Ubuntu 16.04 in same desktop, b=
ut now it is disconnected. Hope to hear from you soon. Thanks. </p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-C790F3EC-6759-4F79-8A52-88ABC4FE98CC--

--===============6227637057640248328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6227637057640248328==--
