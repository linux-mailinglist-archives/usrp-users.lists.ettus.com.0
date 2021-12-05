Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E31A468CD9
	for <lists+usrp-users@lfdr.de>; Sun,  5 Dec 2021 19:41:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7887D384688
	for <lists+usrp-users@lfdr.de>; Sun,  5 Dec 2021 13:41:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h5DoStw8";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id A08943844C4
	for <usrp-users@lists.ettus.com>; Sun,  5 Dec 2021 13:40:04 -0500 (EST)
Received: by mail-qt1-f174.google.com with SMTP id o17so8870687qtk.1
        for <usrp-users@lists.ettus.com>; Sun, 05 Dec 2021 10:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=A0pmo0m+6Xjd5/iVNiwHx3NCxrf56sOEqRJux9aGK8s=;
        b=h5DoStw8rNjIEBy0hFlF0W7ycR/DsrWUT8XDXBc70a/QwzxYZCdpaWsD815qQUIO1C
         aV482lU0crTINlMyYSI1hPxF3gORSS8c8h8gKmkUTtfhKzIY8bXkWTsi31DkIUFPwmBK
         kKKpiyEEmY20ekeJA+4y5tj1qz/zjQG43/CNHaHzwuTL0PdcHrDtF4+6ma2Bqsti0IBU
         5FkeNod5vA5OikT4GErS8haS4CTYkSR+zUe37YTQAW8fHyLpWnSZsA9sDGbsvE80urys
         lcyzBeo3RGuTh7IRcysiDRHQikfd5yog8WZZ6HLuYKGZuT6bzHH+fH1TKW3hZ1ckWHi1
         3New==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=A0pmo0m+6Xjd5/iVNiwHx3NCxrf56sOEqRJux9aGK8s=;
        b=mT+R31bIYtsa2sWL1nsdTCCjNh3WhwUsxiuoeF+51ub8Y2i6HBsHsI8d0BKxNi4VTV
         h+GJd6Re23hV/aYIA/hXB3z3aNJIz9yWs7Fnw/93q40avyJQRSkKDpvsIgHWiCa2y9kW
         UmEpmspAKQu4p8YbRxhQhfqYLVHfIBJhYAKoJfqCnqhP0ZDCe6t5TfkVdD5PXjNv/fiw
         Zh/GmG1lZc3/fPTPhtEKuiyfaOaRH/aQ+u1ejRHBcBqvOsIZc3FfmuvKoYWV2bio4xKN
         faMUuKJAJj5Ox6bpMWzNNkBcokvh3HCTGjjHZTDUPl1lgnajLkOvvCVTM1KThwHg8aAV
         S2WA==
X-Gm-Message-State: AOAM532FPfVZTvKeDjAlOPU8gkaJxGBDB+OrpCFo4/FXva834IoUZZRN
	MqB0Je88+RkDmnHvES7Z3GryaZRQ70E=
X-Google-Smtp-Source: ABdhPJwGhTy/EUmDAjmvJbNV/0iE5TLYMqNMgI2X0JokNw7rkwWq/QBA+oIigD99dFGwINM4dxUs9Q==
X-Received: by 2002:ac8:7fd6:: with SMTP id b22mr34029547qtk.26.1638729603855;
        Sun, 05 Dec 2021 10:40:03 -0800 (PST)
Received: from [192.168.2.224] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v2sm6065986qkp.72.2021.12.05.10.40.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Dec 2021 10:40:03 -0800 (PST)
Message-ID: <879e905d-a222-9f87-c544-e34e0990352a@gmail.com>
Date: Sun, 5 Dec 2021 13:40:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <o1tijwPn7dJXJ6Jbf1NiqHxTMEJBWK5m43gIsVdZI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <o1tijwPn7dJXJ6Jbf1NiqHxTMEJBWK5m43gIsVdZI@lists.ettus.com>
Message-ID-Hash: 4Y3GV3DX26M54O2AYMYLPY3VNUKLPQ2F
X-Message-ID-Hash: 4Y3GV3DX26M54O2AYMYLPY3VNUKLPQ2F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 AD9361 Fastlock Mode
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4Y3GV3DX26M54O2AYMYLPY3VNUKLPQ2F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2212614880508549530=="

This is a multi-part message in MIME format.
--===============2212614880508549530==
Content-Type: multipart/alternative;
 boundary="------------L0gnVCKetnwRmylcY9eUCBXV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------L0gnVCKetnwRmylcY9eUCBXV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-05 05:23, ahmetyilmaz@logdots.com wrote:
>
> Hi all,
>
> How can I implement AD9361=E2=80=99s Fastlock mode on E310 for fast fre=
quency=20
> sweeping ?
>
> Thank you so much.
>
>
||My understanding is that Ettus/NI did not implement Fast Lock mode=20
because there would be too many performance compromises in the
 =C2=A0 general case.

What you have to consider is that not only do you need a fast-locking=20
PLL configuration, but you pretty-much have to bypass I/Q calibration=20
processes on the
 =C2=A0 AD9361 in order to achieve fast frequency hopping.=C2=A0 The AD93=
61 was=20
never really designed for frequency-hopping.

Having said THAT, the driver code is open source and freely available,=20
so you're free to implement that yourself.


--------------L0gnVCKetnwRmylcY9eUCBXV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-05 05:23,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:ahmetyilmaz@lo=
gdots.com">ahmetyilmaz@logdots.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:o1tijwPn7dJXJ6Jbf1NiqHxTMEJBWK5m43gIsVdZI@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi all,</p>
      <p>How can I implement AD9361=E2=80=99s Fastlock mode on E310 for f=
ast
        frequency sweeping ?</p>
      <p>Thank you so much.</p>
      <br>
    </blockquote>
    <code></code>My understanding is that Ettus/NI did not implement
    Fast Lock mode because there would be too many performance
    compromises in the<br>
    =C2=A0 general case.<br>
    <br>
    What you have to consider is that not only do you need a
    fast-locking PLL configuration, but you pretty-much have to bypass
    I/Q calibration processes on the<br>
    =C2=A0 AD9361 in order to achieve fast frequency hopping.=C2=A0 The A=
D9361 was
    never really designed for frequency-hopping.<br>
    <br>
    Having said THAT, the driver code is open source and freely
    available, so you're free to implement that yourself.<br>
    <br>
    <br>
  </body>
</html>
--------------L0gnVCKetnwRmylcY9eUCBXV--

--===============2212614880508549530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2212614880508549530==--
