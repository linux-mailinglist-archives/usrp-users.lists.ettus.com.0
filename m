Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 364E8414A21
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 15:06:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D89A384543
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 09:06:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XehPlaDt";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id B3C1C383C8C
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 09:05:37 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id 194so9017200qkj.11
        for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 06:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=83AgIJRr6HkKg5waglnm1WejHN8e5vFNfSV59H5MatU=;
        b=XehPlaDtEUudLDFGNwpVKaz6xFb3fZfljurAn3srSF1Gq09wT8q3u/8wsD68r+VUOz
         Et446uw2qD/jv8m124y7G4cFmP9wpVdjqTd2LOHoiS2c7TUOPDOK5NI9at8fkOzr8ea2
         1+p4eWg9Q7+/FpwkZvInmkHP3zfg6WQqAnozvt/h8t5dVCP7pfkCUtJWxkFoATFwwHNz
         AwqaikuZI6Da1zIYCw8JVKTuixmFnjPDSa61t4XN86HD+xzIF0UuhLrp+JQVBnYNqHmA
         0KDKLwYM21OFAUPYKdsUagEXTHxJl6qunVbKedLKMhv8iQlsuwtXChWvMek4/XIrAR3w
         i/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=83AgIJRr6HkKg5waglnm1WejHN8e5vFNfSV59H5MatU=;
        b=5FDvsQ77tJPSqUWioLaIbUEcH37p3TktFv8pXDUw6jvxCsFAtSaLG/5cxcK9rshKnI
         /ejEgQ4eQe7/CqVJwJyoA5Xqj2XrvabYsDngc7Fd3AQq5J8tLVQ6KzLBk52adxIjAkr8
         LLnkCxHyOKylMq70ZRNv9auL9RxCGMcr45dxJlWm1e5i/cyANaE7Qy+Qgm30iJciPQpG
         +NqTj4oxx69KYumy88YDZhsc7l7/s61ev///xlHNAJZRIuBxXQSPus/zBxRaxanZxCX+
         YwXSjxMNQ5I4kTzbAihy1JgIBWJsP7Ka98zctB6AkXd+GQj08WiSKwbERZVfMr6wXXDZ
         j32Q==
X-Gm-Message-State: AOAM531VPQ1cBpn1Uu/hSBszMxZluQs8yrQvabQxVZSFRjw42hsMcYQQ
	C04Lr6p7My5h3xDa3cVtL7kseDo2KTUpeA==
X-Google-Smtp-Source: ABdhPJx5fmZoq2m0kP/qpCEXmdO5sXJ8cO9hPQORpcbg0+PGtC27AOZPj8tffEFyb/arcEXNubnwtQ==
X-Received: by 2002:ae9:ec0f:: with SMTP id h15mr34940688qkg.224.1632315936801;
        Wed, 22 Sep 2021 06:05:36 -0700 (PDT)
Received: from [192.168.2.230] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id j14sm1335649qtv.36.2021.09.22.06.05.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 06:05:36 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <BA6RaHKUM1adFuGVrRUGqyfgi1lL7LGzMhdQXXEqBlw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <f9daa9c2-e073-77fb-d74e-3f9937ad617d@gmail.com>
Date: Wed, 22 Sep 2021 09:05:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <BA6RaHKUM1adFuGVrRUGqyfgi1lL7LGzMhdQXXEqBlw@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: QG2QGSDP3X6Y7LOCODEJNHEMFBTFLG2X
X-Message-ID-Hash: QG2QGSDP3X6Y7LOCODEJNHEMFBTFLG2X
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Create two stream with python UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QG2QGSDP3X6Y7LOCODEJNHEMFBTFLG2X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1147697323220792729=="

This is a multi-part message in MIME format.
--===============1147697323220792729==
Content-Type: multipart/alternative;
 boundary="------------D885843299A7EDC65D8FF10C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D885843299A7EDC65D8FF10C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-22 3:35 a.m., christophe.grimault@novagrid.com wrote:
>
> Thank you.
>
> Can you share the call to rx_multi_samples, with the args passed, that=20
> does the two channels streaming. I=E2=80=99ll try and see if I can go f=
urther=20
> with python version and get back to you on this matter=E2=80=A6
>
> Best regards,
>
> Chris
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
rx_multi_samples --args "type=3Dusrp2" --subdev "A:B A:B" --channels 0,1=20
--rate 1.5625e6


--------------D885843299A7EDC65D8FF10C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-22 3:35 a.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:christophe.gri=
mault@novagrid.com">christophe.grimault@novagrid.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:BA6RaHKUM1adFuGVrRUGqyfgi1lL7LGzMhdQXXEqBlw@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Thank you.</p>
      <p>Can you share the call to rx_multi_samples, with the args
        passed, that does the two channels streaming. I=E2=80=99ll try an=
d see
        if I can go further with python version and get back to you on
        this matter=E2=80=A6</p>
      <p>Best regards,</p>
      <p>Chris</p>
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
    </blockquote>
    rx_multi_samples --args "type=3Dusrp2" --subdev "A:B A:B" --channels
    0,1 --rate 1.5625e6<br>
    <br>
  </body>
</html>

--------------D885843299A7EDC65D8FF10C--

--===============1147697323220792729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1147697323220792729==--
