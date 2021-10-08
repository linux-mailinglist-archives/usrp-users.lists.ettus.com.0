Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E38427109
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 20:56:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D77F2384A0B
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 14:56:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZioIS+jd";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id BEC88384897
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 14:55:18 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id k3so6983165qve.10
        for <usrp-users@lists.ettus.com>; Fri, 08 Oct 2021 11:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=ez4eWyysQzSybvqzkNPXxk+i99lgPLdNOp9qgBFsxAk=;
        b=ZioIS+jdFwaveQmK91pzvT07TTMK55ZjDepqZ8vvSkCXrItQc9qCKiOCGwyqAowqUX
         BgTKTTYg9tIlz7d3OFWCAIJtggxqdou/5tlOIllmKAAwivf8haEoVLVCB7F0/OX3kMnK
         5GtjaQmXp8Yoear9TZ4k6TdcHvhH6U/aTjmkhB6q5BeVyY/x1RUHEH014IAMt/Mo+ywd
         U1rmfcJdyOwZSyDDHAdTWiOCdnvKffQlPnZ2N5OONtr6MdqOqo54LCwOEtzYdBpYPFkF
         c1oY/3AG+6NxEGM+dsHDrcpFMTtXFeicWzs0s3KZk/6oBi9Q0oxjtUXvatbAmR0EA2yy
         cxtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=ez4eWyysQzSybvqzkNPXxk+i99lgPLdNOp9qgBFsxAk=;
        b=DXzL4MeCJ+mT2u2OTNOEJ/hF1sWf7i80lOV//ImFvI0/1WI3JxRWgHt5MIQPBwptj5
         CD9vUfLm+OEhXR47Z5xo0g8XL6fZuEn1UBXoSknOYe+yq7RZv0E/K/YYSggFZeMQPLgK
         CdwpxFcqq0wAuOf6ubM5X7VHvyzCyswStfRwnSZ7Ioqzrv7Bkm5HtpbSPdsgA/os6VwL
         W05RafXkARVaZl2eEWir0pn+z3I2mp9En9EGK7eR2yyvLJyAooCe5Qy6tyoAcwoFfO/L
         5lFNx7TplyZFkZfEkfjoOQ0alFhvYji2QbeEKR0c+aUe6UJhg6zci4sQoiZciMibpCbW
         5+Iw==
X-Gm-Message-State: AOAM531hxqFfCNt9H6Z8V0mZ/ooJAJVUNRRgPIzycQ5zPHNcqD8sGEfn
	ONYcwHPMqXJJ2QS/DZuULX0OZz80AJY=
X-Google-Smtp-Source: ABdhPJweAcrg+8FlEs1hxUUra61VhzusIsL/aG7lKtCl+V6f02sTZGMiqzGTJp0gwXQ9qCwCWC1GiA==
X-Received: by 2002:ad4:574c:: with SMTP id q12mr11764624qvx.47.1633719317941;
        Fri, 08 Oct 2021 11:55:17 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id z1sm169953qki.42.2021.10.08.11.55.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 11:55:17 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <4fr5AIht8XjAFbxrvxS5DICpkptu6d563z9A9XFAA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <06d9efd8-2f62-1199-7e7d-d4340c0ef9a1@gmail.com>
Date: Fri, 8 Oct 2021 14:55:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <4fr5AIht8XjAFbxrvxS5DICpkptu6d563z9A9XFAA@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: RVCGXZMEISOBDIDKHUGP5BMATIQC43WA
X-Message-ID-Hash: RVCGXZMEISOBDIDKHUGP5BMATIQC43WA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Possible to change the name of an N320?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RVCGXZMEISOBDIDKHUGP5BMATIQC43WA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1807026821336861485=="

This is a multi-part message in MIME format.
--===============1807026821336861485==
Content-Type: multipart/alternative;
 boundary="------------30BD2724CB13DA0B6C7E3BFA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------30BD2724CB13DA0B6C7E3BFA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-08 2:31 p.m., jason@gardettoengineering.com wrote:
>
> I am using static, so it isn=E2=80=99t a DHCP issue. I tried to use=20
> hostnamectl, and it did =E2=80=9Cwork.=E2=80=9D But after a reboot it w=
as back to the=20
> default name.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
Well, you can always insert your desired hostnamectl call into your=20
local system startup script--rc-local.service is how systemd handles that=
.





--------------30BD2724CB13DA0B6C7E3BFA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-08 2:31 p.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:jason@gardetto=
engineering.com">jason@gardettoengineering.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:4fr5AIht8XjAFbxrvxS5DICpkptu6d563z9A9XFAA@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I am using static, so it isn=E2=80=99t a DHCP issue. I tried to =
use
        hostnamectl, and it did =E2=80=9Cwork.=E2=80=9D But after a reboo=
t it was back
        to the default name.</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
      <br>
    </blockquote>
    Well, you can always insert your desired hostnamectl call into your
    local system startup script--rc-local.service is how systemd handles
    that.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------30BD2724CB13DA0B6C7E3BFA--

--===============1807026821336861485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1807026821336861485==--
