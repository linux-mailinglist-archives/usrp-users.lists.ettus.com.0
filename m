Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3499E42719A
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 21:55:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C5A54384E00
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 15:55:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rk8+3KYu";
	dkim-atps=neutral
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E3A8384999
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 15:54:40 -0400 (EDT)
Received: by mail-qk1-f174.google.com with SMTP id q125so10582269qkd.12
        for <usrp-users@lists.ettus.com>; Fri, 08 Oct 2021 12:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=Hr0pURh4WV1UgUTjHBesKhNQptfLdjUQ0ZKA029TnQk=;
        b=Rk8+3KYugR7JHaz3Fnu5VR7AMLCFoBipzZOVnLoVgBz22lFyf/ZwlBPjxQqWokS0jZ
         jtmH4VfNXOj0JUWz+FI5hNSIRJDoXT5tF4ZKILnbKJSRzXHZrU2fiKjHFO2cbrm2utw0
         fuJz+fpUXcxPteAe2YRDMU32c2BSzRnood2nOEcFMBNIHi+q7wXiWZxlhO+5sJwtaXE7
         Svx2NczWJXVX+GWph8wKANppO0G1KM3OSWWMM/3ZuWpJi+Yqj7yFJYloM+HDI9o2Q7hJ
         +6AurYrw32Y3Pew1osbXzOyIAIheBgyKjFf5KfQ6yIbT6C2xkpZQE90d1wyQk/UTVRGd
         vGLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Hr0pURh4WV1UgUTjHBesKhNQptfLdjUQ0ZKA029TnQk=;
        b=XU8XbK2Dzs5yGWOTlJzriEE+eWlcolVkQhcl9UVJx2EDf6aMjODnTQ49sIMQ1h/q/I
         gaahFHU0OW8pijXsfXuCDKQGg9DUIecduau419y6fRnFYpnqAqNloTI4PnRWH57RmA+q
         06WVdSACcvF/MD+sv4GJAV157z4ffQ4KrRHdtnQCcIcq/uFDz+LhGOjNTvurrdh4V2Qd
         CvShkG5quoPxxrFYQMQB4W2tjGJftYYa0XbZrM05bWDuaWApLlMsX3ST0COciKw3Q29E
         OITWdkBsuNjLwnplxbrl6CjO8HY9p6iHXHvT/kKpeoonTCYtTKte+fm8KCO3ynNzspxd
         s4dw==
X-Gm-Message-State: AOAM531XKXN2g/SY/9LH3VnQG7qr9pNhAXJKC+TJAtN4U1moQUG5HYtG
	kZboTDwgWPSOgAZEYK0Py4T1ellphTY=
X-Google-Smtp-Source: ABdhPJwDzUSJQ0t0bbm6hQuZ3Jb43qFnE3pGmYDm7uWy6/rh8RMppFP8hq/Hu8ebjTQYtYRfCb4NfA==
X-Received: by 2002:a37:5d8:: with SMTP id 207mr4617070qkf.196.1633722879767;
        Fri, 08 Oct 2021 12:54:39 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id 33sm210536qtc.18.2021.10.08.12.54.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 12:54:39 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <4fr5AIht8XjAFbxrvxS5DICpkptu6d563z9A9XFAA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <73927ff1-13f0-f5e6-b183-fd243f66de6e@gmail.com>
Date: Fri, 8 Oct 2021 15:54:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <4fr5AIht8XjAFbxrvxS5DICpkptu6d563z9A9XFAA@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: BCUR6E4DRJTR3LW6XETHGMKY6BDVLHJ6
X-Message-ID-Hash: BCUR6E4DRJTR3LW6XETHGMKY6BDVLHJ6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Possible to change the name of an N320?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BCUR6E4DRJTR3LW6XETHGMKY6BDVLHJ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1601257599547782657=="

This is a multi-part message in MIME format.
--===============1601257599547782657==
Content-Type: multipart/alternative;
 boundary="------------0C1A3B7D759F16964F96A4DD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0C1A3B7D759F16964F96A4DD
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
There's a shell script /usr/sbin/usrp_hostname that systemd calls once=20
at startup that sets the hostname to something based on the serial number=
.



--------------0C1A3B7D759F16964F96A4DD
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
    </blockquote>
    There's a shell script /usr/sbin/usrp_hostname that systemd calls
    once at startup that sets the hostname to something based on the
    serial number.<br>
    <br>
    <br>
  </body>
</html>

--------------0C1A3B7D759F16964F96A4DD--

--===============1601257599547782657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1601257599547782657==--
