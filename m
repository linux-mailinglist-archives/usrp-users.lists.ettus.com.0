Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4063CCA11
	for <lists+usrp-users@lfdr.de>; Sun, 18 Jul 2021 19:39:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B03B0383DE2
	for <lists+usrp-users@lfdr.de>; Sun, 18 Jul 2021 13:39:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YC2JHHSl";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 2064D383C8C
	for <USRP-users@lists.ettus.com>; Sun, 18 Jul 2021 13:38:24 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id z25so11316818qto.12
        for <USRP-users@lists.ettus.com>; Sun, 18 Jul 2021 10:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=ed9f53rz7HBJEem5+UfQI0UqHLUj3ZRHGPLJteyAA/k=;
        b=YC2JHHSlKp5I7fDbiHJ2K1GACv4o+dOwnDa8fob6q4CYw2CJgTDH8Ze6BuwavvNCg0
         s+hmXZO1DeQp0NjofABMMB1b38qp3nPiYIrjAsugFsXfvhWiPbzItkdo7N8uPxMlwM5p
         nibqGPiruILHXf8GMLy3SiTStSiHF66FQ1ogF9tJEp2rpVzTJ5r1AELp9h84+qFgYm6X
         GL7yRmHXEr3kZVRnSwYjjsm36fy1fbUczx/H1w3W3GYB568Hg13cdNtqL71avZR9iuj6
         6shtHwoeCT3+ebied39XJPKxCZrsB+ROmfdlb+IqsfsR7mj+9UsjoGn2oA0la2HGy/Bb
         jA1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=ed9f53rz7HBJEem5+UfQI0UqHLUj3ZRHGPLJteyAA/k=;
        b=FTWePgpaM+b1gwmvK3TKuUiebbfi6c3Ex2jRJjPNqCTIwxZYCI/kRKknfKHjtMDFaf
         O3JueX5Gm/W8M0rlzjJalaMcfvzj3oLePRViruTQ9qUtvrjgw6HpqPkanHFeTRa3Zr17
         sOloryUXDgq6SucKulbqFUI3L3aw38aO5zP6WQ+JI4kasFnHIBE2ilD7IxF19vslYTtl
         iM2o+XKTmK8UlUq3yI6eT1qIqcoDeOYC9A6UXdWXUDjFziQ2Ckm0BfXNxcu7/Nyc50L4
         JMgtpisvmcP3ncia3RrvjsBTyOLym8PxWEPprhh7xZL6yvf/PNWrnOTCr717jXoUdyeN
         A4Vw==
X-Gm-Message-State: AOAM531jy5fSE+zyTrpoMiQDl0+GZWHYC/7l/nIom/LlL2zxaPnCod51
	yREdXBCacQq0XI2A0k1Q18/UQfHPYn9qcg==
X-Google-Smtp-Source: ABdhPJxmNkfYqFHbAObQBeMrWfAkrSecV8G1p0TpiaKCbybyuu+DB/rNpxmN8zmPWoP7Cen4BBSuUQ==
X-Received: by 2002:ac8:665a:: with SMTP id j26mr19326400qtp.254.1626629904400;
        Sun, 18 Jul 2021 10:38:24 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id 197sm7064901qkn.64.2021.07.18.10.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jul 2021 10:38:23 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 18 Jul 2021 13:38:22 -0400
Message-Id: <6D75DADA-492A-4A91-83C4-9EF76F39AA4E@gmail.com>
References: <CADjF3PxXuL43b3kwn-Q148Wc4J+baz4buf0+wpE1Cf1vpsfQgw@mail.gmail.com>
In-Reply-To: <CADjF3PxXuL43b3kwn-Q148Wc4J+baz4buf0+wpE1Cf1vpsfQgw@mail.gmail.com>
To: Martin Elfvelin <marelf-5@student.ltu.se>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: MRYFLEZYT5Q7LTSM32HMZCTMS4RUYQDA
X-Message-ID-Hash: MRYFLEZYT5Q7LTSM32HMZCTMS4RUYQDA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The relationship between buffer, samples per buffer and packets
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MRYFLEZYT5Q7LTSM32HMZCTMS4RUYQDA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2494450928599567851=="


--===============2494450928599567851==
Content-Type: multipart/alternative; boundary=Apple-Mail-8166173A-1BFA-49EE-915F-BCAEBCF4D044
Content-Transfer-Encoding: 7bit


--Apple-Mail-8166173A-1BFA-49EE-915F-BCAEBCF4D044
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

=E2=80=9CPacket=E2=80=9D is related to the on-the-wire MTU. You cannot have m=
ore samples per packet than will fit in MTU-overhead.=20

Buffers are an implementation detail and I=E2=80=99m not as familiar with th=
e details.=20



Sent from my iPhone

> On Jul 18, 2021, at 1:16 PM, Martin Elfvelin via USRP-users <usrp-users@li=
sts.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello all,
>=20
> Having done some simple bursty transmission with the UHD source code I've b=
ecome a bit confused by the relationship between the buffer, samples per buf=
fer and packet.=20
>=20
> My simple C++ program is an adaptation of the tx_bursts.cpp where the para=
meter spb is retrieved from the get_max_num_samps() function, spb tends to b=
ecome around 2000. My modulated signal which is around 8000 samples long is t=
hen transmitted in several bursts until all samples have been transmitted. T=
his works well but I've seen in other uhd examples that spb is set to 10 * g=
et_max_num_samps() or to whatever the user dictates. The function itself is d=
escribed as "Get the max number of samples per buffer per packet." This brin=
gs up a few questions:
> Can spb be set arbitrarily of what get_max_num_samps() returns?
> Is there a maximum buffer size?
> What is a packet defined as?
> Can spb be greater than the size of the buffer?
> What is the purpose of using get_max_num_samps()?
> I guess I'm trying to figure out if I can transmit longer modulated sequen=
ces without breaking the transmission up in several bursts.
>=20
> Best regards,
> Martin Elfvelin
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-8166173A-1BFA-49EE-915F-BCAEBCF4D044
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">=E2=80=9CPacket=E2=80=9D is related to the o=
n-the-wire MTU. You cannot have more samples per packet than will fit in MTU=
-overhead.&nbsp;<div><br></div><div>Buffers are an implementation detail and=
 I=E2=80=99m not as familiar with the details.&nbsp;<br><div><br></div><div>=
<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><bloc=
kquote type=3D"cite">On Jul 18, 2021, at 1:16 PM, Martin Elfvelin via USRP-u=
sers &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><bl=
ockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div><div>=
<div>Hello all,<br><br></div>Having done some simple bursty transmission wit=
h the UHD source code I've become a bit confused by the relationship between=
 the buffer, samples per buffer and packet. <br><br></div>My simple C++ prog=
ram is an adaptation of the tx_bursts.cpp where the parameter spb is retriev=
ed from the <i>get_max_num_samps()</i> function, spb tends to become around 2=
000. My modulated signal which is around 8000 samples long is then transmitt=
ed in several bursts until all samples have been transmitted. This works wel=
l but I've seen in other uhd examples that spb is set to 10 *=20
<i>get_max_num_samps()</i> or to whatever the user dictates. The function it=
self is described as "Get the max number of samples per buffer per packet." T=
his brings up a few questions:<br></div><ul><li>Can spb be set arbitrarily o=
f what <i>get_max_num_samps()</i> returns?</li><li>Is there a maximum buffer=
 size?<br></li><li>What is a packet defined as?</li><li>Can spb be greater t=
han the size of the buffer?</li><li>What is the purpose of using=20
<i>get_max_num_samps()</i>?</li></ul><div>I guess I'm trying to figure out i=
f I can transmit longer modulated sequences without breaking the transmissio=
n up in several bursts.</div><div><br></div><div>Best regards,</div><div>Mar=
tin Elfvelin<br></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></body></html>=

--Apple-Mail-8166173A-1BFA-49EE-915F-BCAEBCF4D044--

--===============2494450928599567851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2494450928599567851==--
