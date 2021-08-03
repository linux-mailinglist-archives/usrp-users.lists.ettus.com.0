Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C583DF8B0
	for <lists+usrp-users@lfdr.de>; Wed,  4 Aug 2021 01:58:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7400638479C
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 19:57:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ea6qDjE4";
	dkim-atps=neutral
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id AB6F0384411
	for <USRP-users@lists.ettus.com>; Tue,  3 Aug 2021 19:57:17 -0400 (EDT)
Received: by mail-qv1-f50.google.com with SMTP id js7so330908qvb.4
        for <USRP-users@lists.ettus.com>; Tue, 03 Aug 2021 16:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=enU/etCVXjQKCoJ/okZPYgEfwBkFXVQCwh/fqi1mkc0=;
        b=ea6qDjE4mXH6Mi9MRNOi3SwrNbbtnAvhi/JgOdWcAO6b7NCUmqDGTWBe3QFseV6VMg
         +OCRkbXG6EfsJz1o1PW5iD0DJTFnWdwBqW3KH8PIfW+iVnTfTmZTF9qHUv4Uezxr46ai
         XmplAaQ5DjwvOfaN6+mEJXUwMe59frJsm4fIZ4ivscm9ODWjabNElwMGbkTsYGwlQ4ZO
         maa5pssrAYIU5s0z4r2TF8IOvXM5jQU3GziKYcRBdrhIGSv1zlZXzuUJw7aqr3++5/Cw
         lxu3RqW1Ytx3WMzQwwsrljD8zC+cZzufPvvpeOcNwz2ud8U5cmO440tZJWg0huRjSJdw
         Hx7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=enU/etCVXjQKCoJ/okZPYgEfwBkFXVQCwh/fqi1mkc0=;
        b=o6HuxXy52HIfV1MKqWpeAcvtgs4/Scinp7nOqG8+69XxeOHjZ5a5zzeyVQV8G840Sl
         qaM01xQnDKLDcQ4M6xzPxLYcfSKG1shnqK0rmKfr1KMQjduesps6g5BUqlF4CdNh8k6c
         PML2p2zKnyr7ovRSV4ki3R5LbZOReWwXckNiwyzcFUH5Ht3DQkmoG6DzqLJau1TjXWvv
         dbjsfJ3aIBNjlIsyKB9luT1CHQEewRq6T24zOe8IKk1g2+aLLlA2JA5haf8WX0aGQbeB
         3xvcLIh8WmNDPsxGFG0zf4AZUWlOyMmXCyESjK8W9DmQSee1jAqAjx7iMv9IODKC444c
         oPHg==
X-Gm-Message-State: AOAM533OqHVjBPAtinJvNTieRLShxETMJ2rTkRdd1ERnQv2Gc3Z7SRVS
	DZW199IgRh2tWRhcOhr2Ez0=
X-Google-Smtp-Source: ABdhPJxaMGf1jwHtVwz4R9f5RQ2rtNLSsfII8puswka4h7N5NzzB5VNNni7ecHH0bBrlRaklUVf2ow==
X-Received: by 2002:a0c:f308:: with SMTP id j8mr23940495qvl.25.1628035037210;
        Tue, 03 Aug 2021 16:57:17 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id u7sm195377qta.27.2021.08.03.16.57.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 16:57:16 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 3 Aug 2021 19:57:15 -0400
Message-Id: <C9C5D1D8-D5A3-435C-86AD-179CDBFB263A@gmail.com>
References: <f54a0ee1-c48e-47c5-847d-2bd49550883c@Spark>
In-Reply-To: <f54a0ee1-c48e-47c5-847d-2bd49550883c@Spark>
To: Ernest Poletaev <epoletaev@i-blades.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: MXYDAMSS267N6HINDK545HZ5NDKX26YG
X-Message-ID-Hash: MXYDAMSS267N6HINDK545HZ5NDKX26YG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Low power mode
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MXYDAMSS267N6HINDK545HZ5NDKX26YG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6745567565031624860=="


--===============6745567565031624860==
Content-Type: multipart/alternative; boundary=Apple-Mail-FAA73F02-8D95-44C6-942C-D4465ACF5460
Content-Transfer-Encoding: 7bit


--Apple-Mail-FAA73F02-8D95-44C6-942C-D4465ACF5460
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

My guess making this actually work would not be that simple.=20

PCB design files are proprietary to Ettus/NI.=20

Sent from my iPhone

> On Aug 3, 2021, at 7:39 PM, Ernest Poletaev <epoletaev@i-blades.com> wrote=
:
>=20
> =EF=BB=BF
> Thanks Marcus,
>=20
> I was looking into it, there is power management in Spartan-6 FPGA (which I=
 suppose is the main power hog).
> However, it requires using Suspend pin which is inaccessible on board due t=
o BGA package.
>=20
> If we had PCB design we could modify wiring on FPGA to allow us to use thi=
s pin, but so far I was not able to find PCB design files.
>=20
> Best Regards,
> Ernest
>> On 4 Aug 2021 05:56 +0700, Marcus D Leech <patchvonbraun@gmail.com>, wrot=
e:
>> My gut tells me this would require exotic power management support in the=
 FPGA fabric itself. Which it doesn=E2=80=99t as far as I know, have.=20
>>=20
>> Sent from my iPhone
>>=20
>>> On Aug 3, 2021, at 6:44 PM, Ernest Poletaev <epoletaev@i-blades.com> wro=
te:
>>>=20
>>> =EF=BB=BF
>>> Hello,
>>>=20
>>> Power consumption is low until processing is started for the first time a=
fter FPGA firmware loaded.
>>> =46rom this point power consumption remains the same even if processing i=
s stopped.
>>>=20
>>> Power cycle will reduce power consumption but result in requiring to loa=
d FPGA firmware which is lengthy process.
>>>=20
>>> Is it possible to temporarily reduce B205mini power consumption without r=
equiring to reprogram FPGA?
>>>=20
>>> Using libuhd or with hardware mod or by modifying FPGA source code?
>>>=20
>>> Best Regards,
>>> Ernest
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-FAA73F02-8D95-44C6-942C-D4465ACF5460
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">My guess making this actually work would no=
t be that simple.&nbsp;<div><br></div><div>PCB design files are proprietary t=
o Ettus/NI.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D=
"ltr"><br><blockquote type=3D"cite">On Aug 3, 2021, at 7:39 PM, Ernest Polet=
aev &lt;epoletaev@i-blades.com&gt; wrote:<br><br></blockquote></div><blockqu=
ote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<title></title>


<div name=3D"messageBodySection">
<div dir=3D"auto">Thanks Marcus,<br>
<br>
I was looking into it, there is power management in Spartan-6 FPGA (which I s=
uppose is the main power hog).<br>
However, it requires using Suspend pin which is inaccessible on board due to=
 BGA package.<br>
<br>
If we had PCB design we could modify wiring on FPGA to allow us to use this p=
in, but so far I was not able to find PCB design files.</div>
</div>
<div name=3D"messageSignatureSection"><br>
<div class=3D"matchFont">
<div dir=3D"auto">Best Regards,
<div dir=3D"auto">Ernest</div>
</div>
</div>
</div>
<div name=3D"messageReplySection">On 4 Aug 2021 05:56 +0700, Marcus D Leech &=
lt;patchvonbraun@gmail.com&gt;, wrote:<br>
<blockquote type=3D"cite" style=3D"border-left-color: grey; border-left-widt=
h: thin; border-left-style: solid; margin: 5px 5px;padding-left: 10px;">My g=
ut tells me this would require exotic power management support in the FPGA f=
abric itself. Which it doesn=E2=80=99t as far as I know, have.&nbsp;<br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Aug 3, 2021, at 6:44 PM, Ernest Poletaev &lt;ep=
oletaev@i-blades.com&gt; wrote:<br>
<br></blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div name=3D"messageBodySection">
<div dir=3D"auto">Hello,<br>
<br>
<span style=3D"color:var(--textColor);background-color:var(--backgroundColor=
)">Power consumption is low until processing is started for the first time a=
fter FPGA firmware loaded.</span><br>
=46rom this point power consumption remains the same even if processing is s=
topped.<br>
<br>
Power cycle will reduce power consumption but result in requiring to load FP=
GA firmware which is lengthy process.<br>
<br>
Is it possible to temporarily reduce B205mini power consumption without requ=
iring to reprogram FPGA?<br>
<br>
Using libuhd or with hardware mod or by modifying FPGA source code?</div>
</div>
<div name=3D"messageSignatureSection"><br>
<div class=3D"matchFont">
<div dir=3D"auto">Best Regards,
<div dir=3D"auto">Ernest</div>
</div>
</div>
</div>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list -- usrp-users@lists.ettus.com</span><br>
<span>To unsubscribe send an email to usrp-users-leave@lists.ettus.com</span=
><br></div>
</blockquote>
</blockquote>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-FAA73F02-8D95-44C6-942C-D4465ACF5460--

--===============6745567565031624860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6745567565031624860==--
