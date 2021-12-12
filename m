Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B91F0471C8A
	for <lists+usrp-users@lfdr.de>; Sun, 12 Dec 2021 20:25:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE646384D5B
	for <lists+usrp-users@lfdr.de>; Sun, 12 Dec 2021 14:25:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oi7qhohv";
	dkim-atps=neutral
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E89538469D
	for <usrp-users@lists.ettus.com>; Sun, 12 Dec 2021 14:24:36 -0500 (EST)
Received: by mail-qt1-f175.google.com with SMTP id z9so13354693qtj.9
        for <usrp-users@lists.ettus.com>; Sun, 12 Dec 2021 11:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=LK6Xby39HZL3KuHblI+PPa6yhO+QfvtLcRhTGopbBKw=;
        b=oi7qhohvssmH85XLCjfMScOYDshrIJtA7Id62/987uAG9kcXUP+X4VFCYa8pU/KYez
         06gdYcK0GVVigoFQ6GLnT+1AwZWQdT37iEY5bXjhtV4d1pBhMZDxP+uKT5sHxNW5iTIt
         cTM7hiLD692HZ6Xphiyloq4U9t2E8ob5mwrqxGBqf/F6zOzB671/sPbt6CgsYDUNIgFv
         d6lJ7lf21diLacPDKvPcmxfUKqRkNwk5ozjYail1QlEtIBLt27GtTsz2yniRVjf1JHQM
         2IK2pUkM/Dvk2ac0oOxG+KEGkAgmrpqsIc48lx9VCKuxvTAZN4HvKuuPEisUxmuH/XFe
         iPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=LK6Xby39HZL3KuHblI+PPa6yhO+QfvtLcRhTGopbBKw=;
        b=VcDK2llXbx5kxlmiTOu8zPLamrlmLqNDmlf3WjwMnfbY93lLrlIXp9EjKtzaLzqMW7
         vhRPsBTKoCLmQLrzT6ltHJNBbskXDy61LuA9MGq3XVuwRrVPGR5MEdvoA2kngXijdz6v
         yKorCcjBm9yWxqdN/4rLuMcOQAQF2qYZ7Jadq6Fm4lvZS+v8O5tlXtLmIPCKXzH0ZF1n
         OKOrPWiFfXTWKB3kNnNVHVkDyhJWfCRF1zSd81VaNQMn4W2G/NXgC4ENTqqva2CM6wgU
         jcPHwrF4K2NH/HWPV+QZaIPRG0VZndJM9iBnck29oZcSZhLwHAoSWmvKsZ5e1jYdQnGf
         VHeQ==
X-Gm-Message-State: AOAM532Bkyecw2ewH1NEtM5pRntoHkOMxukCK8QPflW7zWhlf+13z6pC
	Jg8JgFo2K96PAx6uIFLK8gBO7/dur0M=
X-Google-Smtp-Source: ABdhPJxmqDMBa9Fb14sG9OgR6LssIMPkJHn637PveNi95bzDpx7+5oSM9eaOP8y6MCPyL3NG/l0qPQ==
X-Received: by 2002:a05:622a:1984:: with SMTP id u4mr41300659qtc.10.1639337076144;
        Sun, 12 Dec 2021 11:24:36 -0800 (PST)
Received: from [192.168.2.220] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id n74sm4787358qkn.83.2021.12.12.11.24.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Dec 2021 11:24:35 -0800 (PST)
Message-ID: <32a71ff5-f1e4-0a87-7f4f-91fd25100336@gmail.com>
Date: Sun, 12 Dec 2021 14:24:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAL0m=NZY2QvKHiiokbgR=2Xgj8YL+onxWJGmyEr3sVXar=z6cw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL0m=NZY2QvKHiiokbgR=2Xgj8YL+onxWJGmyEr3sVXar=z6cw@mail.gmail.com>
Message-ID-Hash: K5G6TZ7C6FETAZAMW6FZELKJT2ULRC6X
X-Message-ID-Hash: K5G6TZ7C6FETAZAMW6FZELKJT2ULRC6X
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 - unexpected DC offset and harmonics
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K5G6TZ7C6FETAZAMW6FZELKJT2ULRC6X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1427352846064922251=="

This is a multi-part message in MIME format.
--===============1427352846064922251==
Content-Type: multipart/alternative;
 boundary="------------538KSj10m6n1BUYy8nkchqez"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------538KSj10m6n1BUYy8nkchqez
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-12 11:57, Zeng, Huacheng wrote:
> Hello,
>
> I am using N310 to observe its received signal in its four channels. I=20
> observed some unexpected DC offset and harmonics as shown in the=20
> attached figure. It happened only at channels RF0 & RF2; the signal=20
> from channels RF1 & RF3 looks normal. I disconnected the antennas but=20
> the DC and harmonics are still there. And they would not change if I=20
> change the center frequency, sampling rate, or RF gain.
>
> The GNU RADIO and UHD versions are below:
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_3.15.0.HEAD-0-gaea0e2de
>
> I also attached my python script code in case it would be useful for=20
> you to identify the problem.
>
> Any suggestions? Thank you=C2=A0 in advance!
>
> Hua
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Also, could you try explicitly specifying a subdev-spec of:

"A:0 A:1 B:0 B:1"


--------------538KSj10m6n1BUYy8nkchqez
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-12 11:57, Zeng, Huacheng
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL0m=3DNZY2QvKHiiokbgR=3D2Xgj8YL+onxWJGmyEr3sVXar=3Dz6cw@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hello,</div>
        <div><br>
        </div>
        <div>I am using N310 to observe its received signal in its four
          channels. I observed some unexpected DC offset and harmonics
          as shown in the attached figure. It happened only at channels
          RF0 &amp; RF2; the signal from channels RF1 &amp; RF3 looks
          normal. I disconnected the antennas but the DC and harmonics
          are still there. And they would not change if I change the
          center frequency, sampling rate, or RF gain. <br>
        </div>
        <div><br>
        </div>
        <div>The GNU RADIO and UHD versions are below:</div>
        <div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
          UHD_3.15.0.HEAD-0-gaea0e2de</div>
        <div><br>
        </div>
        <div>I also attached my python script code in case it would be
          useful for you to identify the problem.<br>
        </div>
        <div><br>
        </div>
        <div>Any suggestions? Thank you=C2=A0 in advance!</div>
        <div><br>
        </div>
        <div>Hua<br>
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
    Also, could you try explicitly specifying a subdev-spec of:<br>
    <br>
    "A:0 A:1 B:0 B:1"<br>
    <br>
    <br>
  </body>
</html>
--------------538KSj10m6n1BUYy8nkchqez--

--===============1427352846064922251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1427352846064922251==--
