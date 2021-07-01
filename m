Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 162DF3B98D7
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 01:07:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED1EA3848C5
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jul 2021 19:07:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GL4BDHIu";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id CFCC13842F2
	for <USRP-users@lists.ettus.com>; Thu,  1 Jul 2021 19:06:32 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id v139so7702352qkb.9
        for <USRP-users@lists.ettus.com>; Thu, 01 Jul 2021 16:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=Ui7t/8KV6pprw7QyQrKA2hVbWQ2QV6C8P5GD5T6sqzQ=;
        b=GL4BDHIuRTsOLuYxNgSyJeJVQSA2a2TcIiXp+313E4vZch+U55HxDTg64A3X4fDA7D
         gbIXy7hG9JgVDDQODW/G3FYEfaP1WIVNshDtDYWk7NJYaAlF+BGXuBez68we/4VvbCJA
         VGZVYSTzTCQT4vCak6cNl0QjacduJ+I7ha6e4FyeCgev8GbHmbOYlvGmXdUybCHWopBf
         GMPuoqvKL3m4EOxlFED/Fi+B6Z2E8u3ZQbGpXEnmX94vKj8oL3utLJI2toDzrqeManue
         C+H5MSMiqyCrpfnH5bSVbIHSRW7+1Bx6a9fEYMuO7sqvW2hsnWLWdJxKYlUfocERbrjj
         qHow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=Ui7t/8KV6pprw7QyQrKA2hVbWQ2QV6C8P5GD5T6sqzQ=;
        b=hF4xq8nRhZhkQrctV27OAUFv0EyhDYpoO2eJnWqcfk6S1kVR8i/tBzGbxJ7zCZfVGL
         kOKMoH/13rrhQKfUWoNGmtIRV8Dspbbuvm1Xx7RDBRbJ838MTsB/1vqbg81Rm57V9xk+
         OknkyRy9qvdrfuywWl7SyXHbGwu201IhENdm0t3fQtc0R6T1RRbW4XLREL7uUqagmNuI
         9LFIrTBJM5qbkCReYLi3rOaR1I3jz5Uxc1maOnc5Dl4U+TwC7XIPjxWvySpmKRhLgkGo
         skVErgDjNv+FfVxxOyxEcr098WuthMuZPBpUnmv+89alLOHgXZg2K4JyG7sfMVuOOpDN
         YtNg==
X-Gm-Message-State: AOAM531Qtijm4EdZDKMznF99Bs+81n/6XkFNkAMm6fpbqf2stm96UR9W
	MvqmIjeBnbMkZb33QaQsT2Y=
X-Google-Smtp-Source: ABdhPJxaArKCS4eg0yR/mM4ib/8mBfdfpHtQSWhkFJq7egvWeL/GOzPoH8vjRNwkAR9OVUjNeOfOVA==
X-Received: by 2002:a37:67cf:: with SMTP id b198mr2520563qkc.144.1625180792087;
        Thu, 01 Jul 2021 16:06:32 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id b15sm555575qto.6.2021.07.01.16.06.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jul 2021 16:06:31 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 1 Jul 2021 19:06:30 -0400
Message-Id: <A35C826E-0DD0-415C-854A-9AD45EDA7228@gmail.com>
References: <A36021AC-8A90-4415-8E32-CB735816EC2C@gmail.com>
In-Reply-To: <A36021AC-8A90-4415-8E32-CB735816EC2C@gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 5VOLSPMG2X4FPF3PYTYTQ55E25FTSLGN
X-Message-ID-Hash: 5VOLSPMG2X4FPF3PYTYTQ55E25FTSLGN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: rblack@swri.org, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: available RFNoc blocks for UHD 4.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5VOLSPMG2X4FPF3PYTYTQ55E25FTSLGN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8085742820560976815=="


--===============8085742820560976815==
Content-Type: multipart/alternative; boundary=Apple-Mail-396D8F9A-AA23-464E-A458-497FF2E41BCC
Content-Transfer-Encoding: 7bit


--Apple-Mail-396D8F9A-AA23-464E-A458-497FF2E41BCC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Is there some particular RFNOc block that you=E2=80=99d like a gr-Ettus mapp=
ing for?

Sent from my iPhone

> On Jul 1, 2021, at 6:52 PM, Paul Atreides <maud.dib1984@gmail.com> wrote:
>=20
> =EF=BB=BFI=E2=80=99ve had a lot of success adding blocks using the Ettus t=
ools like rfnoc_modtool. Have you tried that?
>=20
>=20
> <end transmission>
>=20
>>> On Jul 1, 2021, at 10:32, rblack@swri.org wrote:
>>>=20
>> =EF=BB=BF
>> Thanks for that.
>>=20
>> Not a lot to work with there- too bad.
>>=20
>> thx
>>=20
>> rb
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-396D8F9A-AA23-464E-A458-497FF2E41BCC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Is there some particular RFNOc block that y=
ou=E2=80=99d like a gr-Ettus mapping for?<br><br><div dir=3D"ltr">Sent from m=
y iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 1, 2021,=
 at 6:52 PM, Paul Atreides &lt;maud.dib1984@gmail.com&gt; wrote:<br><br></bl=
ockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<meta htt=
p-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">I=E2=80=99ve=
 had a lot of success adding blocks using the Ettus tools like rfnoc_modtool=
. Have you tried that?<div><br><br><div dir=3D"ltr">&lt;<span class=3D"Apple=
-style-span" style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875=
); -webkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -webkit-co=
mposition-frame-color: rgba(77, 128, 180, 0.230469); ">end transmission&gt;<=
/span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 1, 2021, a=
t 10:32, rblack@swri.org wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF<p>Thanks for that.  </p><p>Not a lot to wo=
rk with there- too bad.</p><p>thx</p><p>rb</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div><span>_______________________________________________</span><br>=
<span>USRP-users mailing list -- usrp-users@lists.ettus.com</span><br><span>=
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</span><br><=
/div></blockquote></body></html>=

--Apple-Mail-396D8F9A-AA23-464E-A458-497FF2E41BCC--

--===============8085742820560976815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8085742820560976815==--
