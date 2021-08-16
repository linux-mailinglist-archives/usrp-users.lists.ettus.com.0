Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C123ED448
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 14:47:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0ED9D38103D
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 08:47:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hvrvmtZg";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 4EA4A383AC6
	for <USRP-users@lists.ettus.com>; Mon, 16 Aug 2021 08:46:52 -0400 (EDT)
Received: by mail-qv1-f41.google.com with SMTP id g6so9170401qvj.8
        for <USRP-users@lists.ettus.com>; Mon, 16 Aug 2021 05:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=1nff7I0FEeBVj1vEkQqPRB41rUie4OVYLtoA0s232vw=;
        b=hvrvmtZgOFEeue2kEsEbD6bZz2yQsxemi4mXAvFV15jKXl6cHo/1aTVHwNKrNhaYWR
         P4/OuJGIf3qo4fv/CPRNdmJN/+bHlEumLnYEObP31mty1GIE+qu+W9hAnEw2kv7YZwPk
         LHYidvAfcBDHDHSD9q5LS5mSf1XSToeEjORg7Mo4xSR/WIgu8ZnWLHv6rqHAPXJKXVVU
         HDZFh8mc+LXVlPSSbwCeEVfw4KLMK4oCQ/VSnj6DEkCfBYwK5CtJvGnLvi8Ay+PJrpuQ
         m5+PgG80L69P9VJqECypZhJn8IIMicxu4cWa65XsK9ykZBlC+noi+AW8N2OHzcHoeVTj
         Yi0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=1nff7I0FEeBVj1vEkQqPRB41rUie4OVYLtoA0s232vw=;
        b=JTERY1Exl4MlWPZlrdf4z/ftrskToj7C8s0JPRp3Kbkq8nCdNYOFSoFkVNbEA3qwY5
         Oy2N9YdM9wTvn/kphXbBWjjeDEK1U/bfU5Df8nwnqV0/1UE1NaWbTl9K093rwB+boI+z
         BeisXWdf2JpArD4H9iChiSaFMe4jFw4aAJuCZqrDx3Yazb4CXeRk3Pr2jOvLQ95VT926
         QK2H7JgT4tgu88XKEhBw+y2EieBAOP6eAMAAWbKICJhvY79T+n05GwdMc8uDRS1K5IMC
         Kgzkisyru3DyF3ILa3T43EmeoLHUc4SkKpQmFTR5+dlzTrf34kWLtWOolrTxQUXfiaxn
         QOww==
X-Gm-Message-State: AOAM531+BWIpeaTb72rkvzzSJmZEeA2MVupisjK9nIHKwyThkbhObiyk
	aKwabdHduNRLvD8Va/41dYQ=
X-Google-Smtp-Source: ABdhPJyYNqFk6QAi4t0Arw3CF4FIqmdFFxGuD5XhgCu0nX8fAx9BU1OK/+xqO2ooTB/DVne1kxZaIA==
X-Received: by 2002:ad4:4e41:: with SMTP id eb1mr15825009qvb.3.1629118011764;
        Mon, 16 Aug 2021 05:46:51 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id v22sm4570756qtw.18.2021.08.16.05.46.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 05:46:51 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 16 Aug 2021 08:46:50 -0400
Message-Id: <6E8CC64D-7CAB-4E80-9379-0DB0BE0334EC@gmail.com>
References: <Fwie38EKpz09xa0yu64eSWYteLFaosSEBdm89414@lists.ettus.com>
In-Reply-To: <Fwie38EKpz09xa0yu64eSWYteLFaosSEBdm89414@lists.ettus.com>
To: maximilian.engelhardt@tu-ilmenau.de
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: EDTDV57BXELTC4KMV3D6GNFSVXXO5SOA
X-Message-ID-Hash: EDTDV57BXELTC4KMV3D6GNFSVXXO5SOA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Input Damage Limit for TwinRX/UBX independent of gain setting?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EDTDV57BXELTC4KMV3D6GNFSVXXO5SOA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6036815002976028467=="


--===============6036815002976028467==
Content-Type: multipart/alternative; boundary=Apple-Mail-711DE7E8-2C07-4C51-93B5-EA0899EE540F
Content-Transfer-Encoding: 7bit


--Apple-Mail-711DE7E8-2C07-4C51-93B5-EA0899EE540F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The values stated should be safe at all gain settings.=20

Sent from my iPhone

> On Aug 16, 2021, at 7:12 AM, maximilian.engelhardt@tu-ilmenau.de wrote:
>=20
> =EF=BB=BF
> Hello everyone,
>=20
> I have a question regarding the Rx input damage threshold: Is the value gi=
ven in the datasheet acceptable in every possible receiver configuration or d=
oes it only apply when the Rx gain is set to the lowest possible value?
>=20
> I am using two types of daughterboards here: The UBX and the TwinRX. In th=
e planned application, strong in-band and out-of-band interferers have to be=
 expected and I want to ensure that they cannot cause any damage to the daug=
hterboards, even when they are set to high Rx gain values.
>=20
> I found two related questions on this mailing list, but their answers do n=
ot explicitly state whether the damage limit applies to all gain settings:
> https://lists.ettus.com/empathy/thread/QVVT3OVEIPNCGCF2VS63AXKEKW46JCST=20=

> https://lists.ettus.com/empathy/thread/ITL5CPNGO2INBQCV44YI2GK4JL64MKLJ=20=

>=20
> Thanks
> Max
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-711DE7E8-2C07-4C51-93B5-EA0899EE540F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The values stated should be safe at all gai=
n settings.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D=
"ltr"><br><blockquote type=3D"cite">On Aug 16, 2021, at 7:12 AM, maximilian.=
engelhardt@tu-ilmenau.de wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF<p>Hello&nbsp;everyone,<br><br>I have a que=
stion regarding the Rx input damage threshold: Is the value given in the dat=
asheet acceptable in every possible receiver configuration or does it only a=
pply when the Rx gain is set to the lowest possible value?<br><br>I am using=
 two types of daughterboards here: The UBX and the TwinRX. In the planned ap=
plication, strong in-band and out-of-band interferers have to be expected an=
d I want to ensure that they cannot cause any damage to the daughterboards, e=
ven when they are set to high Rx gain values.<br><br>I found two related que=
stions on this mailing list, but their answers do not explicitly state wheth=
er the damage limit applies to all gain settings:<br><a href=3D"https://list=
s.ettus.com/empathy/thread/QVVT3OVEIPNCGCF2VS63AXKEKW46JCST">https://lists.e=
ttus.com/empathy/thread/QVVT3OVEIPNCGCF2VS63AXKEKW46JCST</a> <br><a href=3D"=
https://lists.ettus.com/empathy/thread/ITL5CPNGO2INBQCV44YI2GK4JL64MKLJ">htt=
ps://lists.ettus.com/empathy/thread/ITL5CPNGO2INBQCV44YI2GK4JL64MKLJ</a> <br=
><br>Thanks<br>Max<br><br></p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-711DE7E8-2C07-4C51-93B5-EA0899EE540F--

--===============6036815002976028467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6036815002976028467==--
