Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5536ED579
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 21:46:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7719B383E43
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 15:46:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682365609; bh=RDCCuX+j0Mkt9/bzxA0o3tXZo66kcWEBjDe3eCVmjBU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DQdcBsawP6TMLGaBqvXQbmwYryXIzClkQYigTp7I8L5uJQx5VZCdkJSxD4sNgQOgB
	 fUWxsEUWVWBdVpvucRpLvRDDOS7qCY2Tx7swSk58txzEtte1fEUnCU0X5WHIB/JCUZ
	 hvzS6Zl9QGJjvaKPmvrpycE3Irv/cuG828/I+qsuw5YHyqbkVCPf2dQFO3eLJKfZXn
	 cPqhCVHC/YJUCgObSHAZYL6/qcuGcmYl/+YRLqo68RNopRhfiNzw+X4MqsZGrt4xFq
	 toxANsEmcIfA8d7Z/Vkxvgm1pFJFoamNYnPDf4/OJ1aNZTTxhQGn/ApaGGnfHMUxyM
	 TRaBwfIGFck8A==
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EB2B383BE5
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 15:46:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cUB4V5lq";
	dkim-atps=neutral
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-187ec6a5504so3777234fac.2
        for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 12:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682365588; x=1684957588;
        h=user-agent:references:in-reply-to:to:from:subject:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4m6CxJlF+d4Yar7dsZdWM2qzQ+lHg/SPZZtmfItveU4=;
        b=cUB4V5lqFsNFn3ifB1aHaJ2egyACK5I2Dm/pYjmv9vPvVhanikwqPelRSBBV5gQkfI
         WWud8Zw2MpenJYlCVZDKgGkMeYneyY40o9XxyqIuGwe2OlVpi4X2DC+sA9thpe1/2948
         p6o8UTWJx6fhHEbKOT72M76AXBRwL9P5gHe3ApzE7JE+5nKNHWoRpGTM2M+c/f2XEOT7
         Y5oY1BnBdgAU1+L2xN8nOWwg1Ol+15CM7hE9alTiWrZYFQtup66t6ugcjddSZ88fvRYc
         0Xhu6MhuxaoZbpc6wJrPP87r/EZBH38er9nU5NMBnu6Ndy/X7+jPJikxgmoqk+9XAQ5U
         CP2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682365588; x=1684957588;
        h=user-agent:references:in-reply-to:to:from:subject:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4m6CxJlF+d4Yar7dsZdWM2qzQ+lHg/SPZZtmfItveU4=;
        b=ID7d1fVbSZmysOcwyYyFb+exk1Q+KaCGp7redc+6UZK7hCHssfeGGmzhUe16hnaJJ5
         wTOcy97Z/qeZq4g0SaX/GBd789absUBDk+WO1d/DDHN1G8qJ18KE8Gbx859lGsd+3ey1
         8ATpMyGBupUGarqwoVQBJq6yONnN5H1QUs+7yeMXCwaep1H44jSGB3vw9auCEgFYdUS+
         Mk2KGJsAqFWFAAwpMSVu1e8bhT1OUx9H7PK4abJnKvJE9fCkUpnDod71CNZ5OQcYqx+d
         yk6DwdissGb5HnXjUNsfReXNfCaUxZxclEUVKKUNM18wg46fTHd97L5myqBbG7HOk7XN
         HvSg==
X-Gm-Message-State: AAQBX9fKXC+riM5EbE3GMjzKK4lS18p8ntedcXGLXBWs8jNkve7QHa6Y
	TbNwfZiMz4YFsozO77dUK/0N/DppS4Qz0g==
X-Google-Smtp-Source: AKy350Y2nDV3drzWnmFERcngoKLEexnUI99qW4PZBpM0qp27ybDYW0aRy9ZWwSDtTyNHSo/QTCF7Mg==
X-Received: by 2002:a05:6870:73ce:b0:17a:d06e:6be6 with SMTP id a14-20020a05687073ce00b0017ad06e6be6mr10115013oan.55.1682365588382;
        Mon, 24 Apr 2023 12:46:28 -0700 (PDT)
Received: from [192.168.4.55] ([47.186.160.129])
        by smtp.gmail.com with ESMTPSA id b35-20020a4a98e6000000b0051a6cb524b6sm5213891ooj.2.2023.04.24.12.46.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Apr 2023 12:46:23 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 24 Apr 2023 14:46:12 -0500
Message-ID: <Mailbird-ef2a1368-633c-4d4a-a1ef-d38df4cf51a8@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
 "jorge.gonzalez.o--- via USRP-users" <usrp-users@lists.ettus.com>
In-Reply-To: <e2f7ed59-b306-40c0-1046-8efeb3f7e026@gmail.com>
References: <Mailbird-291a700c-0363-465a-9bb0-fe8256352b8e@gmail.com>
 <BN2P110MB174782806660DAEDBDC54B72B7679@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <4670b23b-3cef-24e2-bf7f-2d3b7fdabf6e@gmail.com>
 <Mailbird-f5dead59-e2e1-402b-ae12-931a28d42a16@gmail.com>
 <e2f7ed59-b306-40c0-1046-8efeb3f7e026@gmail.com>
User-Agent: Mailbird/2.9.74.0
X-Mailbird-ID: Mailbird-ef2a1368-633c-4d4a-a1ef-d38df4cf51a8@gmail.com
Message-ID-Hash: 2D2XIRSQQ5ATEEU46FW5UK25EPOTX5L4
X-Message-ID-Hash: 2D2XIRSQQ5ATEEU46FW5UK25EPOTX5L4
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B-210 mounting holes
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2D2XIRSQQ5ATEEU46FW5UK25EPOTX5L4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4243872189922519620=="

--===============4243872189922519620==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_26466561.751556428226"

------=_NextPart_26466561.751556428226
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you, Marcus. -p
On 4/24/2023 2:29:47 PM, Marcus D. Leech <patchvonbraun@gmail.com> wrote:
On 24/04/2023 15:03, page heller wrote:

Does anyone know the part number? -page
I believe they are made by Lumex:

https://www.mouser.ca/ProductDetail/Lumex/LPF-C011304S?qs=3D3ZOqpMxxriqLNJa=
coNbLgw%3D%3D&mgh=3D1&gclid=3DCjwKCAjw0ZiiBhBKEiwA4PT9z2rQFYxmNAYskRM_v-HUH=
Z_46Fde-elA1iAWD_FkVU662_hS-vgC3hoCyFUQAvD_BwE [https://www.mouser.ca/Produ=
ctDetail/Lumex/LPF-C011304S?qs=3D3ZOqpMxxriqLNJacoNbLgw%3D%3D&amp;mgh=3D1&a=
mp;gclid=3DCjwKCAjw0ZiiBhBKEiwA4PT9z2rQFYxmNAYskRM_v-HUHZ_46Fde-elA1iAWD_Fk=
VU662_hS-vgC3hoCyFUQAvD_BwE]



------=_NextPart_26466561.751556428226
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<body><div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-fami=
ly: Arial;color: #000000;text-align: left" dir=3D"ltr">
                                        Thank you, Marcus. -p<div class=3D"=
mb_sig"></div><blockquote class=3D'history_container' type=3D'cite' style=
=3D'border-left-style:solid;border-width:1px; margin-top:20px; margin-left:=
0px;padding-left:10px;'>
                        <p style=3D'color: #AAAAAA; margin-top: 10px;'>On 4=
/24/2023 2:29:47 PM, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:=
</p><div style=3D'font-family:Arial,Helvetica,sans-serif'>
    <div class=3D"moz-cite-prefix">On 24/04/2023 15:03, page heller wrote:<=
br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:Mailbird-f5dead59-e2e1-402b-ae12-=
931a28d42a16@gmail.com">
      
      <div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-fami=
ly: Arial;color: #000000;text-align: left" dir=3D"ltr"> Does anyone know th=
e part number? -page</div>
    </blockquote>
    I believe they are made by Lumex:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.mouser.ca/ProductDet=
ail/Lumex/LPF-C011304S?qs=3D3ZOqpMxxriqLNJacoNbLgw%3D%3D&amp;mgh=3D1&amp;gc=
lid=3DCjwKCAjw0ZiiBhBKEiwA4PT9z2rQFYxmNAYskRM_v-HUHZ_46Fde-elA1iAWD_FkVU662=
_hS-vgC3hoCyFUQAvD_BwE">https://www.mouser.ca/ProductDetail/Lumex/LPF-C0113=
04S?qs=3D3ZOqpMxxriqLNJacoNbLgw%3D%3D&amp;mgh=3D1&amp;gclid=3DCjwKCAjw0ZiiB=
hBKEiwA4PT9z2rQFYxmNAYskRM_v-HUHZ_46Fde-elA1iAWD_FkVU662_hS-vgC3hoCyFUQAvD_=
BwE</a><br>
    <br>
    <br>
  </div></blockquote>
                                        </div></body>
------=_NextPart_26466561.751556428226--

--===============4243872189922519620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4243872189922519620==--
