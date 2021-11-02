Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D470A44367A
	for <lists+usrp-users@lfdr.de>; Tue,  2 Nov 2021 20:26:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB44438416E
	for <lists+usrp-users@lfdr.de>; Tue,  2 Nov 2021 15:26:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MMZFBqWV";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 281C43837DC
	for <USRP-users@lists.ettus.com>; Tue,  2 Nov 2021 15:25:52 -0400 (EDT)
Received: by mail-qv1-f53.google.com with SMTP id v2so13948120qve.11
        for <USRP-users@lists.ettus.com>; Tue, 02 Nov 2021 12:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=D+NrMr/3zXvFl8Ee7i4FFQYJhl8EY4dr0qDPsA2dfFk=;
        b=MMZFBqWVt7lcXDzfMzjDeJo3yq84Bffwybpqdwo0UadkIGtZ+uPuYoKH50Th8Xe2s7
         CplQVHwLXfsuovusCvCrDHbBJ0IRPaDyUnQHK13RY1bZfKtM4aohj0Ob1R9+RLc86nSH
         u9eNe1GNZc/vQzZEnhM2s8qqCwQwbz58qbuDS+MIB9/KuHROOhaPjHmEuK/i2R2JYnWW
         cRu001KnJUzuYWxVboaghsDY2brOQNyR7rUdF4sP7UJVFEHGuAysi3LUCuYMQBMd901b
         V2AUMOOkcjcP2NDnguk17PQuUiyPTUluAqv6bHmm3hP/KYmFupL4Z87pbbbYiyaDp6DL
         0ECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=D+NrMr/3zXvFl8Ee7i4FFQYJhl8EY4dr0qDPsA2dfFk=;
        b=UEaScywaQ/uaSXPrkx4i87aEVeIyd6HRa0LmsyxydqEa69+ke1L2e7tZHVUisk3QWg
         k7cq7KjnfLbPE3YVaGJINkGyer8gbTtSjLJaoaCj0xQNUTPdfKusMNhP0oQxr3SKQP9f
         7T5KNBXaQSMzQa8Y6ZW9r5jlPjPBLsjg+29adX1Uh0lnT8lMXPDoiykzE5dnwGffWpct
         uMbplcWczpmO4Ko+/L/gC74sqpiCBoIYPfVsn+p229e+DZ31mQWYl2jBlz5zL4Nqw4ne
         c6HzVZDy+8TuzGyCxq5YV5o/g9n5CEb4pdSk1EvUiU+c6bDinRceESVUorvdP2C1CRU+
         otrw==
X-Gm-Message-State: AOAM531mOa7vmt5CstZYoeS70hD21Uhl3GsYmz4PGQZAAlGAjSopiW0m
	fAnseIPZgPbRk/zlOr8WuR8=
X-Google-Smtp-Source: ABdhPJwQgUHhLwE0t75IlcGmtccPa+fU0dkNf71E2B72zQRGBCxN74Hp2nX/RMpw2DoYQ6kR13tfmA==
X-Received: by 2002:ad4:4970:: with SMTP id p16mr23841029qvy.66.1635881151644;
        Tue, 02 Nov 2021 12:25:51 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id m1sm5198867qkp.124.2021.11.02.12.25.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Nov 2021 12:25:51 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 2 Nov 2021 15:25:50 -0400
Message-Id: <8A3C7CB8-1179-4F27-8A12-7DF0F9277431@gmail.com>
References: <009401d7d00e$63fb92b0$2bf2b810$@gmail.com>
In-Reply-To: <009401d7d00e$63fb92b0$2bf2b810$@gmail.com>
To: zhang.weit3@gmail.com
X-Mailer: iPhone Mail (18H17)
Message-ID-Hash: BGHST4NOXERTFOZFFNOPCDLM27VU355O
X-Message-ID-Hash: BGHST4NOXERTFOZFFNOPCDLM27VU355O
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B200 min-i
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BGHST4NOXERTFOZFFNOPCDLM27VU355O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2510744454361359233=="


--===============2510744454361359233==
Content-Type: multipart/alternative; boundary=Apple-Mail-A2362CF9-334E-4EBA-A82A-9F40012389D4
Content-Transfer-Encoding: 7bit


--Apple-Mail-A2362CF9-334E-4EBA-A82A-9F40012389D4
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It really only supports external PPS input which is used to steer the onboar=
d clock via a DPLL implemented in the FPGA.=20

The quality of this is not terrific so don=E2=80=99t expect tight phase sync=
hronization with other devices.=20

Sent from my iPhone

> On Nov 2, 2021, at 12:24 PM, zhang.weit3@gmail.com wrote:
>=20
> =EF=BB=BF
> Hi All,
> =20
> I have a USRP B200 mini-i under testing. But I only see the REF port which=
 I am assuming is for external 10MHz clock input. Is there any port for 1PPS=
 input for time synchronization? Does it support both external PPS input and=
 10MHz clock input?
> =20
> Thank you!
> =20
> West
> =20
> =20
> =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-A2362CF9-334E-4EBA-A82A-9F40012389D4
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It really only supports external PPS input w=
hich is used to steer the onboard clock via a DPLL implemented in the FPGA.&=
nbsp;<div><br></div><div>The quality of this is not terrific so don=E2=80=99=
t expect tight phase synchronization with other devices.&nbsp;<br><br><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Nov 2, 2021, at 12:24 PM, zhang.weit3@gmail.com wrote:<br><br></bl=
ockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<meta htt=
p-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"><meta nam=
e=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\7B49\7EBF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--><div class=3D"WordSection1"><p class=3D"Ms=
oNormal">Hi All,<o:p></o:p></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><=
p class=3D"MsoNormal">I have a USRP B200 mini-i under testing. But I only se=
e the REF port which I am assuming is for external 10MHz clock input. Is the=
re any port for 1PPS input for time synchronization? Does it support both ex=
ternal PPS input and 10MHz clock input?<o:p></o:p></p><p class=3D"MsoNormal"=
><o:p>&nbsp;</o:p></p><p class=3D"MsoNormal">Thank you!<o:p></o:p></p><p cla=
ss=3D"MsoNormal"><o:p>&nbsp;</o:p></p><p class=3D"MsoNormal">West<o:p></o:p>=
</p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><p class=3D"MsoNormal"><o:p>=
&nbsp;</o:p></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p></div><span>____=
___________________________________________</span><br><span>USRP-users maili=
ng list -- usrp-users@lists.ettus.com</span><br><span>To unsubscribe send an=
 email to usrp-users-leave@lists.ettus.com</span><br></div></blockquote></di=
v></body></html>=

--Apple-Mail-A2362CF9-334E-4EBA-A82A-9F40012389D4--

--===============2510744454361359233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2510744454361359233==--
