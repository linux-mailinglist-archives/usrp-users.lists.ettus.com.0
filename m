Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6E0474D18
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 22:11:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7510385709
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 16:11:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nuE3LeVq";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 20970385443
	for <USRP-users@lists.ettus.com>; Tue, 14 Dec 2021 16:10:53 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id de30so18141709qkb.0
        for <USRP-users@lists.ettus.com>; Tue, 14 Dec 2021 13:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=nGyHpSSpoUXW6o4S9xtrF19ifRdd4cFToNCe+gXb1lw=;
        b=nuE3LeVqmOh+BE1ung3cUrUNdFQxLfFhi/pMQPsvJvRuo3vRXTADEcaMEtzX2ytsNM
         JGf0N9N8rieBbodCW4wfN0UIOM8/UQsb3s4tlJgujJjUZ9VsvNfJouMT1pIukNrpJnI1
         9s2C+68ZmE9+rhG7UfH5vucXDyYMV4wOURpfE4L3ZaoDoBd56knMTJUqg7S5thzHLrMK
         1VARWpwtwsGc7F4T89iiK4A9uElcj2K+kYmjBrgo5ALinzfXV8ZUuAIq3PFgIA9Ma+Rq
         1NLks5H0xKZxOv8dna6ZeYE6O1SMTomm8UpnmhZ8CMNQow3uBXTYZE1z9GML/946sfOY
         qvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=nGyHpSSpoUXW6o4S9xtrF19ifRdd4cFToNCe+gXb1lw=;
        b=W7D8tmjEIsCBXWVHxbQqrSvBXR5OFZ1gFbqpet9t/zvkA0D3nITZNnVxmWzWNSJNlT
         ztZqpAaMUOhIohuXb99cwoxP4hiPkI5tGFz4u0fc4MrBaO8R4SOqjMvwUxuMpq+oEEk0
         AgA9x0oN1usLc9B0Hhm6PLErAukmWeGQ49do7xyoYz/Hw0pEN3NId2gAXGQxGTqTJA81
         32R7qxAG5oEdGoc7KJzw0EHd6M51SbaXnC5cZyGLo7q2sKWJJQC8DuazWGpj6RdHdtCy
         /79W1oiW/wl52xiQKrnrpAdSpFnVx8DB/xUi2yoAJVP/Mk2QrsIJRbmN+9yC12npMmDe
         DK1g==
X-Gm-Message-State: AOAM533TLT/CIVZb1cb4W2LTq/pawlvT7u+QaEluyaXHsDfkFZS9LCyb
	nwZzl2VH8qMhBsEsBrgLdnE=
X-Google-Smtp-Source: ABdhPJxEtpx8Glfc9FJxCSHB1vI9daDhhN4X+kAvGfRjwJsop+YkyxnqRikuvOeRcdXalRAW5h/8ew==
X-Received: by 2002:a37:6356:: with SMTP id x83mr6399344qkb.448.1639516253418;
        Tue, 14 Dec 2021 13:10:53 -0800 (PST)
Received: from smtpclient.apple ([2605:b100:d43:4b1b:fd80:915d:2f5c:4b12])
        by smtp.gmail.com with ESMTPSA id w10sm779836qkp.121.2021.12.14.13.10.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Dec 2021 13:10:53 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 14 Dec 2021 16:10:51 -0500
Message-Id: <1A0F7214-8BCC-40AA-AB27-C433B29C87FC@gmail.com>
References: <CANP_axLQZQMLjkHS1AvzhNgfNE_C08B-Ox=KT3NrebA9Yts+bQ@mail.gmail.com>
In-Reply-To: <CANP_axLQZQMLjkHS1AvzhNgfNE_C08B-Ox=KT3NrebA9Yts+bQ@mail.gmail.com>
To: Temir Karakurum <temirkarakurum@gmail.com>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: LP4E5Q4PKMPGP4PX3H44G2RZNPPJFVQI
X-Message-ID-Hash: LP4E5Q4PKMPGP4PX3H44G2RZNPPJFVQI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bias power on E312's RX ports (was: USRP and GPS antennas)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LP4E5Q4PKMPGP4PX3H44G2RZNPPJFVQI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2234777665427295537=="


--===============2234777665427295537==
Content-Type: multipart/alternative; boundary=Apple-Mail-3547969E-F1E4-4307-AF60-11D3F4603CAC
Content-Transfer-Encoding: 7bit


--Apple-Mail-3547969E-F1E4-4307-AF60-11D3F4603CAC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The only thing I can think of off the top of my head is RF gain differences.=
=20

Sent from my iPhone

> On Dec 14, 2021, at 4:09 PM, Temir Karakurum <temirkarakurum@gmail.com> wr=
ote:
>=20
> =EF=BB=BF
> Hi,
>=20
> Thanks for finding time to answer while commuting :)=20
> Quickly checking LC_XO webpage (http://www.jackson-labs.com/index.php/prod=
ucts/lc_xo):
> "The unit includes internal 3.3V to 5V DC-DC power supplies and filters, a=
nd can provide 5V at up to 50mA to external customer circuitry, as well as t=
o the external GPS antenna."
> This seems compatible with the Trimble antenna recommended for N-series bu=
t maybe I am missing something.
>=20
> Best,
> Temir
>=20

--Apple-Mail-3547969E-F1E4-4307-AF60-11D3F4603CAC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The only thing I can think of off the top o=
f my head is RF gain differences.&nbsp;<br><br><div dir=3D"ltr">Sent from my=
 iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Dec 14, 2021,=
 at 4:09 PM, Temir Karakurum &lt;temirkarakurum@gmail.com&gt; wrote:<br><br>=
</blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div d=
ir=3D"ltr"><div>Hi,</div><div><br></div><div>Thanks for finding time to answ=
er while commuting :)&nbsp;</div>Quickly checking LC_XO webpage (<a href=3D"=
http://www.jackson-labs.com/index.php/products/lc_xo">http://www.jackson-lab=
s.com/index.php/products/lc_xo</a>):<div>"<span style=3D"color:rgb(76,76,76)=
;font-family:Helvetica,Arial,sans-serif;font-size:14px">The unit includes in=
ternal 3.3V to 5V DC-DC power supplies and filters, and can provide 5V at up=
 to 50mA to external customer circuitry, as well as to the external GPS ante=
nna."</span></div><div><div>This seems compatible with the Trimble antenna r=
ecommended for N-series but maybe I am missing something.</div><div><br></di=
v><div>Best,</div><div>Temir</div></div><div><div><br></div></div></div>
</div></blockquote></body></html>=

--Apple-Mail-3547969E-F1E4-4307-AF60-11D3F4603CAC--

--===============2234777665427295537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2234777665427295537==--
