Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5CB786FC1
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 14:55:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7711E384B0C
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 08:55:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692881740; bh=W9KVOtP+Z/y4uZo3WVuBDMt8MWYoWo8xRnD0sWkfgC0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=B2K053XQa7+gMh98ie0vi6nm8girSe7L1LTTDN4cZJsZGTkV3zA1o9WczVLR0fKlp
	 99AbhMJaTnPNrTMRje3JKYzN2j5o+o+TssIvrmBFWKmAg62dMn+4m6S3kVbOFZ+CgH
	 wdi4k1UrubJOKqvMcGjGpwTNTkcv6a+3bz3N+TMBpEnFbi4awjHB+vEsn7JOwoJa1o
	 9rJpI9vjWtgngRlu/jvokyGCGo0Je8UrSbAD3pTZrszVAL+olnr1GRBnDa47pqRQFH
	 FqvMe/Xx1xEMbdqTovxY6BxzUHA9hA+H60Yz56ogo9V4VQRiusOb1WZixjXs9VLIcw
	 nAVaxIQaW89Mg==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 728DB380F81
	for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 08:55:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="deuxZ0hV";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-64cca551ae2so32026906d6.0
        for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 05:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692881707; x=1693486507;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tkQrnJ1t90XMQRVfkRA+1sTEob+Hnqr8Tl5JN0F3HN4=;
        b=deuxZ0hVd1VPDjMBnEdXXDrlldktLwF1ARVm0Mqln5o+rZKcKZ7nCQvz6MPOt9aMBh
         suZjNw53z0OVjLDMjVvH/z8efQsd8YkCFR98NHZLDwLPPWVCIjCOr2L/Zu2e/7t+D7q/
         jmUpK0mAKye9zYoOIfhbcfAkGkeCgWnJIpUUb6DW5hMfs0/wP/k5XXt0tHDmQqqzgbpS
         1m84UKAlG/ZjCSRyoM3gg75oNU0nfFqVHmVqiVTcwIKGHKcMHoZAunZjPuNphIU+A+v6
         nRR3o2wX8lfDXrAGxzos3r3TlgPu5cFmbSOpoghQE1hsvfHzU+kk1SWuRa2qdfInros5
         c4jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692881707; x=1693486507;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tkQrnJ1t90XMQRVfkRA+1sTEob+Hnqr8Tl5JN0F3HN4=;
        b=UPs8/1V22dj1dyPWz58cB/+heMx/FzyECSiwHGTLbmtM9pKR1qyjieYgTPCU6dIs1/
         Bb8s57qJAR4vtOJg5kjO/s2Y2q/jJN3mT2dwmDb39rlsvtjUpb8kjP+8MUUYdyMAO042
         AvJ9S1nEzXoA3W1yCQhtUVmF+kHjBOhJlgeZKpj655zejAGolZj6ElM+6eE3sVQwYD11
         H3fhjmW60Cn7fvckDVIAMwp7zTGAey1/Qlls35IK+RAu7gBSj3kBTNm931xLgGiLWHQS
         OYJHK+Jj4bov31tnxczmRLQ8pwmr3ttBSSETZExQmLc9cGbEih1sLNAwbKTB7BNqAVTO
         LJvQ==
X-Gm-Message-State: AOJu0YyuYtA/yqweP1ogV1vVsLNrS2C9sP7u5r+aSYSQ9+AUj1Cu0QTO
	zUPZpE7eAmK5jM/jKmlIhE9COxlDDZE=
X-Google-Smtp-Source: AGHT+IE7xB5kMfVOQaqyLyfobtWTqFK4LpUZVCq7s+/ITrGMERlygUxZeNBJCmKJhQnyOHqtyJ/NCA==
X-Received: by 2002:a0c:aad8:0:b0:649:8f20:5527 with SMTP id g24-20020a0caad8000000b006498f205527mr15344472qvb.38.1692881706662;
        Thu, 24 Aug 2023 05:55:06 -0700 (PDT)
Received: from [192.168.2.163] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id w9-20020a0cb549000000b0064f70a860d8sm446935qvd.41.2023.08.24.05.55.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 05:55:06 -0700 (PDT)
Message-ID: <9ca9e1ff-fee5-5824-1586-91df5e5549a3@gmail.com>
Date: Thu, 24 Aug 2023 08:54:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKHaR3nHfHGK+ix+q2A61tbs8PtvwKQQ3vYowGCadcwfWgOzKg@mail.gmail.com>
 <da1aecdd-efb2-9921-5689-03b716ccdb08@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <da1aecdd-efb2-9921-5689-03b716ccdb08@ettus.com>
Message-ID-Hash: 4QHTND4SH7XA4E3TTVAYMYTCXUHBOJQO
X-Message-ID-Hash: 4QHTND4SH7XA4E3TTVAYMYTCXUHBOJQO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gnuradio 3.10 and rfnoc
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4QHTND4SH7XA4E3TTVAYMYTCXUHBOJQO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5052462804116128892=="

This is a multi-part message in MIME format.
--===============5052462804116128892==
Content-Type: multipart/alternative;
 boundary="------------5NFpYcba2wvTYzh4dVmCwj21"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5NFpYcba2wvTYzh4dVmCwj21
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/08/2023 06:50, Marcus M=C3=BCller wrote:
>
> Hi Dario,
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0 would be my=20
> go-to here.
>
>
> Best regards,
> Marcus
>
Beat me to it :)

> On 24.08.23 11:10, Dario Pennisi wrote:
>> Hi,
>> i'm experimenting migration to GNURadio 3.10 and UHD4.4 but i noticed=20
>> that in GNURadio 3.10 gr-ettus is not needed anymore as everything is=20
>> in gr-uhd, which is great however there's no sign of rfnocmodtool and=20
>> since a few things have changed i wonder what is the recommended way=20
>> to get started on an OOT block with these latest versions.
>> thanks,
>>
>> Dario Pennisi
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------5NFpYcba2wvTYzh4dVmCwj21
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/08/2023 06:50, Marcus M=C3=BClle=
r
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:da1aecdd-efb2-9921-5689-03b716ccdb08@ettus.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Dario,</p>
      <p><a class=3D"moz-txt-link-freetext"
          href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_=
4.0"
          moz-do-not-send=3D"true">https://kb.ettus.com/Getting_Started_w=
ith_RFNoC_in_UHD_4.0</a>
        would be my go-to here. <br>
      </p>
      <p><br>
      </p>
      <p>Best regards,<br>
        Marcus<br>
      </p>
    </blockquote>
    Beat me to it :)<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:da1aecdd-efb2-9921-5689-03b716ccdb08@ettus.com">
      <p> </p>
      <div class=3D"moz-cite-prefix">On 24.08.23 11:10, Dario Pennisi
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:CAKHaR3nHfHGK+ix+q2A61tbs8PtvwKQQ3vYowGCadcwfWgOzKg@mail.gmai=
l.com">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <div dir=3D"ltr">Hi,
          <div>i'm experimenting migration to GNURadio 3.10 and UHD4.4
            but i noticed that in GNURadio 3.10 gr-ettus is not needed
            anymore as everything is in gr-uhd, which is great however
            there's no sign of rfnocmodtool and since a few things have
            changed i wonder what is the recommended way to get started
            on an OOT block with these latest versions.</div>
          <div>thanks,</div>
          <div><br clear=3D"all">
            <div>
              <div dir=3D"ltr" class=3D"gmail_signature"
                data-smartmail=3D"gmail_signature">
                <div dir=3D"ltr"><span
style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.333=
3px">Dario
                    Pennisi</span><br
style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.333=
3px">
                  <br>
                </div>
              </div>
            </div>
          </div>
        </div>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated moz-txt-l=
ink-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D=
"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated moz-=
txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-d=
o-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------5NFpYcba2wvTYzh4dVmCwj21--

--===============5052462804116128892==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5052462804116128892==--
