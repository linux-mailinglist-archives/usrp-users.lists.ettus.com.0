Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C6555269D
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jun 2022 23:39:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A944383BAF
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jun 2022 17:39:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655761166; bh=PC1uCa8kJmE1dDpH9Y54eu2zyHTT/ZNTi05XpaalMXo=;
	h=From:In-Reply-To:Date:References:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XmE5yOIVl+slqvdtTUVju96URIcxxoS3pd8m5/ApV/wOvkHq/t9a8F6E7vEyxjCz3
	 CVTA2+8WaCaSWOY4WaysAIyiXllTgdBSZHJJzDK3pZctbt5CgBG8zVbiRqRJ2VLgI9
	 Ki+KSdNwpsE4/uETK0kjVWI5Ong0MB4mheZ6QLJ6mJbG+N/ggU5+yXOGETqPrZF7Uw
	 FPBLubfKTTffpG3+KYrgNZwjGuRUkZpG/X3g8iBGL+iz9Fz0jdMRa6U2GZXw5Wjh53
	 /2ZiCRaPlAPbD67sLxVXhfE0OnLZgvDxtfzUV1IWX0zUnH7O3yWSh4cQMnAxO4t52c
	 E6kIIesaFLsPA==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id BEB3D383BB8
	for <usrp-users@lists.ettus.com>; Mon, 20 Jun 2022 17:38:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BNq8Y2f2";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id p31so17726211qvp.5
        for <usrp-users@lists.ettus.com>; Mon, 20 Jun 2022 14:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to
         :date:cc:message-id:references:to;
        bh=L5Tp5aqsk4cK8sQTkD3RINgaU5a/qOk3beB/jTgHIl8=;
        b=BNq8Y2f2PatZs6l4fTxDjYHLyry1R3XUAyuRCrSSnQYLD/zGdHiW7hwoOoVZD7OvFH
         FHOMYIcG5wVZ6FXyTGw+3f5dgBmxb+GkGxY5y/8ho8942INvdnzMsOqZ971EEnTl9HeS
         cXjKVCsq+MLiDCXu/AsH02akwsTNq3eKNpjBdP+W1QeFb7duQQRkijPS/OCDEr7S6M6R
         jP0VsOPUFmsHL3PObJK7feA8P4o0/+cw9c0w1gUGSCvmiCDKFehYU3zWMRfMtYoZFFkd
         RiKL5mzkZSwsWFStrWalwIxv+oLaw2WLwTOOwA0QZOXIbB0Lnf5ymz28g9LPAt61wtVJ
         bZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:date:cc:message-id:references:to;
        bh=L5Tp5aqsk4cK8sQTkD3RINgaU5a/qOk3beB/jTgHIl8=;
        b=UqcRwTLVm16gS8it3Xdi6GZcQnLewHUb6e7pM362OFeIx5KMbzmEMkoa0138rsYMm+
         OYWORAuydo8M2FbP3gDx/m3B00hJxFPHblEk2iknnRjwXJvO6oWfF7aOP7u/2HvxM8zu
         Ah4nvCcpsyDR7tinvD/ghcAJuOA6jtwLvsti/Jef0K2BwnMybc9TU4am5vzaQM100jDb
         K5vnshZiP6V0g2HsxihxGbHNaEBJC/9cCngrWzRnUDJ2+75UFmpaf16Po1JU1S3crkPx
         5spFBfGg/Oj1OngaLRK2qh4BcIT0TI5K0ri2a0KlSC6YvGCE46YDRonlzo5vRO70lOVp
         SNpA==
X-Gm-Message-State: AJIora9jgd+s+XBTai0Cw1NAU0amqGBoOdJhRNWVU9Gt/4wR3LlP/b9S
	J3CrDnEFTYNApGTBYtu70bbxK2v9BN4hng==
X-Google-Smtp-Source: AGRyM1uEyowZQb4/e8UHJi2o78b984JF2w9f3UOs4Fg814dDBQVBrxEWPWYoyoaA7XBVGdVyhNohiQ==
X-Received: by 2002:ad4:5d4d:0:b0:464:eed3:4e14 with SMTP id jk13-20020ad45d4d000000b00464eed34e14mr20464052qvb.112.1655761101016;
        Mon, 20 Jun 2022 14:38:21 -0700 (PDT)
Received: from smtpclient.apple ([69.85.98.46])
        by smtp.gmail.com with ESMTPSA id u12-20020a05620a0c4c00b006a760640118sm12670268qki.27.2022.06.20.14.38.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 14:38:19 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Larry Dodd <101science@gmail.com>
In-Reply-To: <15A05459-116A-4297-98E0-0E95D6DF3FAF@gmail.com>
Date: Mon, 20 Jun 2022 17:38:18 -0400
Message-Id: <5CAA83FB-0214-42CD-99B9-7F59D94F30CA@gmail.com>
References: <15A05459-116A-4297-98E0-0E95D6DF3FAF@gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: MB6NGOUVAGKMATZHHHBH6SIBHM3CWIDK
X-Message-ID-Hash: MB6NGOUVAGKMATZHHHBH6SIBHM3CWIDK
X-MailFrom: 101science@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: BasicRF Daughter Card
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MB6NGOUVAGKMATZHHHBH6SIBHM3CWIDK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2397589638279983555=="


--===============2397589638279983555==
Content-Type: multipart/alternative; boundary=Apple-Mail-1D22606A-379E-46F8-AFFF-7CE6832D0896
Content-Transfer-Encoding: 7bit


--Apple-Mail-1D22606A-379E-46F8-AFFF-7CE6832D0896
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Marcus ,
Great. Thanks.=20
Larry K4LED=20

_______________________
Click for K4LED Reference Links:

> On Jun 20, 2022, at 4:37 PM, Marcus D Leech <patchvonbraun@gmail.com> wrot=
e:
>=20
> =EF=BB=BFYes.=20
>=20
> Sent from my iPhone
>=20
>>> On Jun 20, 2022, at 3:24 PM, Larry Dodd <101science@gmail.com> wrote:
>>>=20
>> =EF=BB=BFCan a BasicRF daughter card be used with an Ettus N210?
>> Thanks,
>> Larry K4LED=20
>>=20
>> _______________________
>> Click for K4LED Reference Links:
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-1D22606A-379E-46F8-AFFF-7CE6832D0896
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Marcus ,<div>Great. Thanks.&nbsp;</div><div=
>Larry K4LED&nbsp;<br><br><div dir=3D"ltr"><div><span style=3D"background-co=
lor: rgba(255, 255, 255, 0);">_______________________</span></div><div><a hr=
ef=3D"https://101science.com/Reference%20Links.pdf" style=3D"caret-color: rg=
b(0, 0, 0); background-color: rgba(255, 255, 255, 0);"><font color=3D"#00000=
0">Click for K4LED Reference Links:</font></a></div></div><div dir=3D"ltr"><=
br><blockquote type=3D"cite">On Jun 20, 2022, at 4:37 PM, Marcus D Leech &lt=
;patchvonbraun@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote ty=
pe=3D"cite"><div dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"content-type" cont=
ent=3D"text/html; charset=3Dutf-8">Yes.&nbsp;<br><br><div dir=3D"ltr">Sent f=
rom my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 20,=
 2022, at 3:24 PM, Larry Dodd &lt;101science@gmail.com&gt; wrote:<br><br></b=
lockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<meta ht=
tp-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">Can a Basic=
RF daughter card be used with an Ettus N210?<div>Thanks,</div><div>Larry K4L=
ED&nbsp;<br><br><div dir=3D"ltr"><div><span style=3D"background-color: rgba(=
255, 255, 255, 0);">_______________________</span></div><div><a href=3D"http=
s://101science.com/Reference%20Links.pdf" style=3D"caret-color: rgb(0, 0, 0)=
; background-color: rgba(255, 255, 255, 0);"><font color=3D"#000000">Click f=
or K4LED Reference Links:</font></a></div></div></div><span>________________=
_______________________________</span><br><span>USRP-users mailing list -- u=
srp-users@lists.ettus.com</span><br><span>To unsubscribe send an email to us=
rp-users-leave@lists.ettus.com</span><br></div></blockquote></div></blockquo=
te></div></body></html>=

--Apple-Mail-1D22606A-379E-46F8-AFFF-7CE6832D0896--

--===============2397589638279983555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2397589638279983555==--
