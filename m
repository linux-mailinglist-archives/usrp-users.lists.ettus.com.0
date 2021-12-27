Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 411B548027B
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 17:57:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 642FB384E76
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 11:57:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FzsuO0dW";
	dkim-atps=neutral
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D43B384E4D
	for <usrp-users@lists.ettus.com>; Mon, 27 Dec 2021 11:56:15 -0500 (EST)
Received: by mail-qt1-f175.google.com with SMTP id j17so13984529qtx.2
        for <usrp-users@lists.ettus.com>; Mon, 27 Dec 2021 08:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=M9UBq/zPfY+28HRFI3UJxyrVS3HH8fibRDP1DgkQIgw=;
        b=FzsuO0dWtpAu+Br3ObfsxRhkTj1HfpGN3ZjJPIEohLg0F5CbEYqzJ682oWQFxsBp1b
         GXOM6AF7VnXh7HQE1NRFBWqSqbbnQkyz8sidT/btuBdCLnkLc3vIElRgRg6KK2CvRqZ6
         N+PJciXbS0Uy8FNOAxO/Genj7/BM43MaIYIYNl1HOw482cyQzSlYSq29f020zlBCbSz5
         n/k9XCOczD9FwmxsgcqV79tdQju/gnDv7CPB1qWQ77bsziXWjHlNKFjhsD9S2Ja8Bge1
         7eFkjSjEzGOWZNHajCillDKQ6DQHDaKlUs0rp6WqHVzuoFf6lQaqTtCGFK5ZfiDfOw2+
         hGkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=M9UBq/zPfY+28HRFI3UJxyrVS3HH8fibRDP1DgkQIgw=;
        b=BxjrxQSoT+V/S1E+yJHQlLdtyS1/vUFRvhN6DdwR0Bay74O8jfdJllzBiQFaJEeZ7t
         uB05QZ+2ryXs6028RUmk4XOUKSe8b8QkNZjvWv7a7u/CC7fuyhY+3gPymQTG5+ewY+gK
         tg+uuAfqka3rTr79wArLWJ3kuh1GudCy0KZ5hy/le4UqCwhn7SMkboVICrHrUrlT74HH
         85WjJcmpTarTgDNLIHNWwhFRJRU+X2nJa3U4F0uzdPkFPt2CllxV6GXLLvD9iip1kCXH
         2WTc3ln2bdDaG8jiJM5mIv288DqAr3w3K4yqHvVfId95ibTDupZsPLjy7kdzLFDcM89V
         8dOQ==
X-Gm-Message-State: AOAM533BTdbAxBD+5KxIE8ztMTL/0je9Tbl5tCjAbWqxsRd16dXJegwt
	IttkLUD4gbqzy3g1DV6iLzf7qVo7/KdaXA==
X-Google-Smtp-Source: ABdhPJwEgWaeDLheiElPgX+jX8NhMts/+eCoOcoJRYxNh3JsKeffRQowJY2LQb4xaK9RYoE1kSYnHg==
X-Received: by 2002:a05:622a:1054:: with SMTP id f20mr15462854qte.360.1640624175295;
        Mon, 27 Dec 2021 08:56:15 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id y6sm12887560qtn.23.2021.12.27.08.56.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Dec 2021 08:56:15 -0800 (PST)
Message-ID: <9961ca69-aaae-606d-887d-e661dfea8ed6@gmail.com>
Date: Mon, 27 Dec 2021 11:56:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3Pva1uuiy80C-F4mPmxfmjjHhMa1Hgdi6LxD+XmmAJwAiw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3Pva1uuiy80C-F4mPmxfmjjHhMa1Hgdi6LxD+XmmAJwAiw@mail.gmail.com>
Message-ID-Hash: OBMPQQ4UDKXIM62KWJIVOJOQ7C5PEY7T
X-Message-ID-Hash: OBMPQQ4UDKXIM62KWJIVOJOQ7C5PEY7T
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: what's means uhd::multi_usrp API? it is not for me clear
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OBMPQQ4UDKXIM62KWJIVOJOQ7C5PEY7T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8950512889288975167=="

This is a multi-part message in MIME format.
--===============8950512889288975167==
Content-Type: multipart/alternative;
 boundary="------------HNewsy4qGjXBXfrsPMwWmeIb"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------HNewsy4qGjXBXfrsPMwWmeIb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-27 11:50, sp h wrote:
> I am studying=C2=A0 RFNOC specifications.
> https://files.ettus.com/app_notes/RFNoC_Specification.pdf
>
> in the RFNOC software framework, it describes=C2=A0uhd::multi_usrp API.=
 but=20
> it is not clear to me? my question is which is the work=C2=A0of this AP=
I?=20
> can anyone explain more about it?
>
> uhd::multi_usrp API An RFNoC capable USRP must work out of the box=20
> using the multi_usrp API. To do so, multi_usrp will expect a default=20
> image with Radios, DDCs, DUCs and buffering to implement the native=20
> USRP API. Internally, multi_usrp will build a graph to make the=20
> appropriate connections, much like a user application.
>
>
> thanks in advance
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html


--------------HNewsy4qGjXBXfrsPMwWmeIb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-27 11:50, sp h wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3Pva1uuiy80C-F4mPmxfmjjHhMa1Hgdi6LxD+XmmAJwAiw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I am studying=C2=A0 RFNOC specifications.
        <div><a
            href=3D"https://files.ettus.com/app_notes/RFNoC_Specification=
.pdf"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/app_notes/RFNoC_Specification.pdf</a><br>
        </div>
        <div><br>
        </div>
        <div>in the RFNOC software framework, it
          describes=C2=A0uhd::multi_usrp API. but it is not clear to me? =
my
          question is which is the work=C2=A0of this API? can anyone expl=
ain
          more about it?</div>
        <div><font size=3D"1"><br>
          </font></div>
        <div><font size=3D"1">uhd::multi_usrp API
            An RFNoC capable USRP must work out of the box using the
            multi_usrp API. To do so,
            multi_usrp will expect a default image with Radios, DDCs,
            DUCs and buffering to implement the
            native USRP API. Internally, multi_usrp will build a graph
            to make the appropriate connections,
            much like a user application.</font><br>
        </div>
        <div><font size=3D"1"><br>
          </font></div>
        <div><font size=3D"1"><br>
          </font></div>
        <div><font size=3D"1">thanks in advance</font></div>
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
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/classuhd_1_1usrp_1_1multi__usrp.html">https://files.ettus.com/manual=
/classuhd_1_1usrp_1_1multi__usrp.html</a><br>
    <br>
    <br>
  </body>
</html>
--------------HNewsy4qGjXBXfrsPMwWmeIb--

--===============8950512889288975167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8950512889288975167==--
