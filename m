Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 725CB436DC6
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 00:51:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD430383F20
	for <lists+usrp-users@lfdr.de>; Thu, 21 Oct 2021 18:51:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CzyVeyLc";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 11751383D75
	for <usrp-users@lists.ettus.com>; Thu, 21 Oct 2021 18:50:46 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id w8so2014285qts.4
        for <usrp-users@lists.ettus.com>; Thu, 21 Oct 2021 15:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=iDI21hCzzCHNrFmoEz1ydxJKa4DNsMfhFCdsW9B7ie8=;
        b=CzyVeyLcJnz/eApx61z6Utb5iTq66HvuEabKDmKFRlJsMUNIi5qmfSFoRM+kIIa4p5
         oTvrP8qmDQSuC2ZXHouem1Bq4TyhFYR85IxcbFdXtQ0gdpA2R7cGoZ3afdXEvJq/Adly
         Cn8gGetGJ5GwHvaSnN6kLcazdiAybOvbLcKptvMKUUHNniDfQAqZCMJoRCzw8hnkN+wx
         FaaJoHGgDU5B8sipEX39Qpo2xxgQa3Hv+++yD3baiOxpSHo37DhNWniMoKPgyAWNX36d
         29fJbZ9oGIGBCylGZNTctsJSIDPnZB3uePYPxI6K73JBmV/RbmofUjpLIynCP7Z4OLW+
         JnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=iDI21hCzzCHNrFmoEz1ydxJKa4DNsMfhFCdsW9B7ie8=;
        b=Ma7lVB6VDWpr2AydEcGqU258p26s+IrUfwIGXquCHMX95Rytse32v9JhUZ9NhjjG+b
         iapZb4hQE8+TBtxZVBnqJf2UTk4N3ROYjP4BtlJw/P8kuZmDc46ip0it/RDQ7YcxuCGl
         K5dIk5wt67DbZSUM/AnBsiuZ168xpIe8bzhr3yM5T9yNxdC8Wau3Kh00dtKYxZy5tc/A
         OJQr73FrRq+1zCR5D8kTsileZevIb4OM1cVv/zFtekn4vxF4m4b2Xdy6Lpc0TZEVD2ke
         7JXwJFM21yn5WxyzadX8PQuaDvH3ilde4P1wGE2yRinfyn+e5QSreidT+Q1MM/lE9BIG
         3b1A==
X-Gm-Message-State: AOAM532Tr+szfabSRHU2dR3QBJGzha/yEoEYyQNMEteL2Vki9dL/Dkg8
	fg3LCM2sUUrLShGuSe8OuBixQyIaz2E=
X-Google-Smtp-Source: ABdhPJz10GRyrvxlIG5dlhxH7oPQwL8PZHI8YydsXxT3BFu78nOo6SFoDUElmbePtj+KhgL52TW1Fg==
X-Received: by 2002:ac8:7f8c:: with SMTP id z12mr9352309qtj.292.1634856645717;
        Thu, 21 Oct 2021 15:50:45 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id f6sm3088341qka.129.2021.10.21.15.50.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 15:50:45 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
 <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <6d3d9adb-fd20-e86e-fe12-9daf26315df7@gmail.com>
Date: Thu, 21 Oct 2021 18:50:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: U3OV3J4HBXHOLQD33QEO2MHYSVMTO6TS
X-Message-ID-Hash: U3OV3J4HBXHOLQD33QEO2MHYSVMTO6TS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U3OV3J4HBXHOLQD33QEO2MHYSVMTO6TS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1985698669164284164=="

This is a multi-part message in MIME format.
--===============1985698669164284164==
Content-Type: multipart/alternative;
 boundary="------------629AD6A3BE9C279B572325BB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------629AD6A3BE9C279B572325BB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:
>
> Hello, I have a problem that when receiving samples from the USRP E310=20
> board, after the FFT block at low gain, zero values are received.=20
> After that I log them and get infinity. I wanted to figure out what=20
> the problem is, but I have no idea, maybe the Window block will fix=20
> the situation. But when building my yaml file, I get the error: [ERR]=20
> 2 Unresolved connection(s) [ERR] =C2=A0 =C2=A0 (window0-out_0 -> fft0-i=
n0) [ERR]=20
> =C2=A0 =C2=A0 (fft0-out_0 -> ep1-in_0) [INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 (('radio0', 'ctrl_port',=20
> 'master'),) [INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'time_keeper'=
, 'listener'),)=20
> [INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'x300_radio', 'slave'),) =
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0=20
> (('_device_', 'ctrlport_radio', 'slave'),) [INF] =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (('_device_',=20
> 'time_keeper', 'broadcaster'),) [INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('_d=
evice_',=20
> 'x300_radio', 'master'),) Please tell me what could be the problem and=20
> how can I add the Window block to my image?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Do you have your FFT configured for log output?=C2=A0 Because the logarit=
hm=20
of zero is undefined.



--------------629AD6A3BE9C279B572325BB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-21 6:40 p.m., Ivan
      Zahartchuk wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxsDhTm=3Dm_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
          <div dir=3D"ltr">
            <pre id=3D"m_2664631585752873320gmail-tw-target-text" style=3D=
"text-align:left" dir=3D"ltr"><span lang=3D"en">Hello, I have a problem t=
hat when receiving samples from the USRP E310 board, after the FFT block =
at low gain, zero values are received. After that I log them and get infi=
nity. I wanted to figure out what the problem is, but I have no idea, may=
be the Window block will fix the situation. But when building my yaml fil=
e, I get the error:
[ERR] 2 Unresolved connection(s)
[ERR] =C2=A0 =C2=A0 (window0-out_0 -&gt; fft0-in0)
[ERR] =C2=A0 =C2=A0 (fft0-out_0 -&gt; ep1-in_0)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'ctrl_port', 'master'),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'time_keeper', 'listener'),=
)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'x300_radio', 'slave'),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('_device_', 'ctrlport_radio', 'slave'=
),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('_device_', 'time_keeper', 'broadcast=
er'),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('_device_', 'x300_radio', 'master'),)
<span lang=3D"en">Please tell me what could be the problem and how can I =
add the Window block to my image?

</span></span></pre>
          </div>
        </div>
      </div>
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
    Do you have your FFT configured for log output?=C2=A0 Because the
    logarithm of zero is undefined.<br>
    <br>
    <br>
  </body>
</html>

--------------629AD6A3BE9C279B572325BB--

--===============1985698669164284164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1985698669164284164==--
