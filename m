Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 338D6446DE3
	for <lists+usrp-users@lfdr.de>; Sat,  6 Nov 2021 13:15:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E9613841A2
	for <lists+usrp-users@lfdr.de>; Sat,  6 Nov 2021 08:15:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NfIYaPvD";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 1A7FB381081
	for <USRP-users@lists.ettus.com>; Sat,  6 Nov 2021 08:14:50 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id bm28so11199084qkb.9
        for <USRP-users@lists.ettus.com>; Sat, 06 Nov 2021 05:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=10udNf4cUVBM+HYmY/GkuSq6y3UEw/VauC5/mISuPWo=;
        b=NfIYaPvD7JhMga890ZijGb+6Kv9RYNcHDyFUkJHFjPCFlC24e46jgs3BpJTMA1rxiB
         ZE0nOKj6unA8YyKoGvnOUU7vn2SmS6dNTlFLn0Rvba1JKFRFBzjHmt5ITeiohDwRNarT
         w4AcSe3k/Y2/49vir8AXBUplO9X/a3K9THmaDvZ1K7cESl9n1pHKtAW1B8N6k1hNGuT0
         AYkUbHId6yTUBLj5YqCx30cXKhic887IRk1AsHMb4emaCG3UF8xKegFmrPtejtm7Id2A
         AAaw+fnxKtlNZ5XbpHiVBr/o0TB8Jo/iVUZdKMFbGyC2I2/9R+R5xdxS5ggnprdX1z3b
         K5cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=10udNf4cUVBM+HYmY/GkuSq6y3UEw/VauC5/mISuPWo=;
        b=jrANIHZERc/ajKWv/tUp+QcAWWdDodPczky02zDse56yaS1QTxZamFJ8mP0V00DN5q
         3XZs/bqRvqTtVo7U6kPn9tV2fXSi/MztOLryDwWcx+WQZHw9lNAy6mhsyt1PLoDLUrYo
         NaFlS/cTrX0LOTyC1WFkTcMgv8XZ+D6cQC7z77gWFh/YIixcV85Ar3KB7IAuZu7xV1OJ
         sw3zGucTj5/fMRqTBtaBSGKEKZOzxZkMw52AAaVJkcuYRau9S9MyVe8Syf31xwWgTECr
         GtxmpGLD4HjQDeyom0n1an9m6Mg4xDlnED4/snd2AFQoM+d2GXKgWJZSZLucrtSqCD4l
         cHFQ==
X-Gm-Message-State: AOAM532VVfQ40k98lPElLofzzMm9stZwUtjO4OcP/hh6u5MldTES30y2
	yqzS7hzlnanQPMk+1iZDyjJwxb0bGhQ=
X-Google-Smtp-Source: ABdhPJxn2XqyLO8b4WfPCJ8treHtOzHGrarZeBdDn0w7Xso0G3Hg/zGsd88BjHzp8fJVcG+3HqnCKw==
X-Received: by 2002:a05:620a:46ac:: with SMTP id bq44mr30422809qkb.336.1636200890302;
        Sat, 06 Nov 2021 05:14:50 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id c8sm7474960qtb.29.2021.11.06.05.14.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Nov 2021 05:14:49 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 6 Nov 2021 08:14:48 -0400
Message-Id: <D6D63767-1C78-4D89-9C3D-B7F26CBFF546@gmail.com>
References: <CA+QP_P=XaKdpHFRSi4=iz9cnCJWyHeoNdZa1=hBP8DdNoevnUA@mail.gmail.com>
In-Reply-To: <CA+QP_P=XaKdpHFRSi4=iz9cnCJWyHeoNdZa1=hBP8DdNoevnUA@mail.gmail.com>
To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
X-Mailer: iPhone Mail (18H17)
Message-ID-Hash: CIHAQZAXZCTEYIZC4SWREAAWU5QPPUA5
X-Message-ID-Hash: CIHAQZAXZCTEYIZC4SWREAAWU5QPPUA5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: HELP regarding B210 and B205mini-i
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CIHAQZAXZCTEYIZC4SWREAAWU5QPPUA5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8462863409049025135=="


--===============8462863409049025135==
Content-Type: multipart/alternative; boundary=Apple-Mail-9BC4F2C5-1D71-4E57-ABF5-CCB95014ED5D
Content-Transfer-Encoding: 7bit


--Apple-Mail-9BC4F2C5-1D71-4E57-ABF5-CCB95014ED5D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes. Just go ahead and ask your question.=20

Sent from my iPhone

> On Nov 6, 2021, at 6:32 AM, Arhum Ahmad via USRP-users <usrp-users@lists.e=
ttus.com> wrote:
>=20
> =EF=BB=BF
> Respected sir,
> Is this the right email to to ask doubts?
>=20
> --=20
> Thanks and Regards
> Arhum Ahmad
> Ph.D. Scholar, Electrical Engineering Department, IIT Ropar
> +91-7974897279 | arhum.19eez0005@iitrpr.ac.in
> Lab No. 323, Communication Research Lab, J.C.Bose Building
>=20
> CONFIDENTIALITY NOTICE: The contents of this email message and any attachm=
ents are intended solely for the addressee(s) and may contain confidential a=
nd/or privileged information and may be legally protected from disclosure. I=
f you are not the intended recipient of this message or their agent, or if t=
his message has been addressed to you in error, please immediately alert the=
 sender by reply email and then delete this message and any attachments. If y=
ou are not the intended recipient, you are hereby notified that any use, dis=
semination, copying, or storage of this message or its attachments is strict=
ly prohibited.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-9BC4F2C5-1D71-4E57-ABF5-CCB95014ED5D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yes. Just go ahead and ask your question.&n=
bsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><=
blockquote type=3D"cite">On Nov 6, 2021, at 6:32 AM, Arhum Ahmad via USRP-us=
ers &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blo=
ckquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Respected s=
ir,<div>Is this the right email&nbsp;to to ask doubts?<br clear=3D"all"><div=
><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D=
"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"color=
:rgb(100,100,100);font-family:Arial;font-size:12px;margin-bottom:5px;margin-=
top:0px"><b style=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-s=
erif;font-size:small"><span style=3D"font-family:&quot;times new roman&quot;=
,serif">Thanks and Regards</span></b><b><br></b></div><div style=3D"color:rg=
b(100,100,100);font-family:Arial;font-size:12px;margin-bottom:5px;margin-top=
:0px"><b>Arhum Ahmad</b><br>Ph.D. Scholar,&nbsp;Electrical Engineering Depar=
tment, IIT Ropar</div><table width=3D"470" border=3D"0" cellspacing=3D"0" ce=
llpadding=3D"0" style=3D"color:rgb(100,100,100);font-family:Arial;font-size:=
12px;width:470px;margin-top:5px"><tbody><tr><td style=3D"color:rgb(141,141,1=
41)"><p style=3D"margin:0px"><span style=3D"display:inline-block"><a href=3D=
"tel:+91-7015802356" style=3D"color:rgb(141,141,141);font-family:sans-serif"=
 target=3D"_blank">+91-</a>7974897279</span>&nbsp;<span style=3D"color:rgb(6=
9,102,142);display:inline-block">|</span>&nbsp;arhum.19eez0005<span style=3D=
"display:inline-block"><a href=3D"mailto:2016eez0009@iitrpr.ac.in" style=3D"=
color:rgb(141,141,141);font-family:sans-serif" target=3D"_blank">@iitrpr.ac.=
in</a></span></p></td></tr><tr><td style=3D"font-family:sans-serif;color:rgb=
(141,141,141)"><span style=3D"display:inline-block">Lab No. 323, Communicati=
on Research Lab, J.C.Bose Building</span></td></tr></tbody></table></div></d=
iv></div></div></div></div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALITY NOTIC=
E:&nbsp;The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></s=
pan></div></div></div></div></div></div></div></div></div></div></div></div>=
</div></div></div></div></div></div></div></div></div></div></div></div></sp=
an></span></span></font></b><span>__________________________________________=
_____</span><br><span>USRP-users mailing list -- usrp-users@lists.ettus.com<=
/span><br><span>To unsubscribe send an email to usrp-users-leave@lists.ettus=
.com</span><br></div></blockquote></body></html>=

--Apple-Mail-9BC4F2C5-1D71-4E57-ABF5-CCB95014ED5D--

--===============8462863409049025135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8462863409049025135==--
