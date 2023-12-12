Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D2580ED16
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 14:17:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D625A385789
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 08:17:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702387028; bh=yfUu7lV4eazXEkeR2P8tkmf68kqSM6zifsSMsVYZd6Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MBPaBnGRpu2ntzN+K5AzVeVLB7tuHdoJ51RMNdq4O8J2OFL3SzXQqx0jVa3NhJIp+
	 MakpyJe/s5IDKLc4iE93gfGkGy7ONL+ov0D8Ak5ORfHKavEcL/IBoa/xJU5weDE433
	 3z2axArLM5F6YLf9P2yuXhnvmVjUFbRQDrXaeD2PsJuSS1KWQVSJl+lhiyOpunf50H
	 97990WdRfpWS9mJUs/JmnaVtx9Fk9+s42jsE/j2nx0lZD0WpLaPS4jfaGPlCOStRFt
	 ORRYqqLXk8H80vzoQFK+oh1Razh6LFXsesN3kTEK2HV2LgjeIo/dsz+eewuogelt/c
	 wUmSkSg56nTSg==
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 7414E384FD6
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 08:16:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LApObglV";
	dkim-atps=neutral
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1fb9a22b4a7so3366813fac.3
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 05:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702387014; x=1702991814; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nf1S7mW4Aneb0FRI3suAJK5napZUs/xC3r37SDk5n0E=;
        b=LApObglVwGhHvwIit6YxLgUh3UjlG0U5auz/dqJeGrZuRuuN0VXPC1raetL5+frRVb
         g2M8tlmvUcYnD0Z+HfdHNZXvBQlQuD2IFPAYzk/CPPVgXUoyVZNrh3TlAmixd5GGH3p+
         pgeEBn4Sm0d383msEYOGlrgEjSfXczJFpJRHLEFwkgEEyCDwGeSJQ/x4b5kPwcxSF/bK
         7qCKv5US6FnFI5JSxaGCmtDwnLkCd3foa9k/id6LHsp7vEospo0wKOACOTvm5AKmh5dC
         9rQ44vORPQR09MpDQl0XTvV2esCW/vzxx2Y5e70xREJNHgVALPXEJYFcTRGyKpgplmHa
         fxBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702387014; x=1702991814;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nf1S7mW4Aneb0FRI3suAJK5napZUs/xC3r37SDk5n0E=;
        b=hRhmx8kDCVN5qD8Atcke/uHs6hotT/nY4yWoGNYLVivcoMbdyOUkz2WoH4kffRTyyI
         90OK+TJOwz4yN3BcivFU6Tutg52SXGxDww5u2szSIKoUnpZVK9HLIoI9JgF/Pt//BC2Y
         qDFyyW9YtlAN25CYNkwrS2sGG0VWnCJGid9vIGRb3mk7ydCR+/mqV9EMcTQCrMX37Gh4
         Gkbds9AMffl/egvZ2zznEQitiT3zM/l02flnwlseRrJPGokNBqY88c/pmoZHEEY7BnUE
         OoweQtAMH5TNG/b7js1R4QJR84YG0UVhDjBZXbpAB0yMAFzYN0m219MJuqBM9I31PVT1
         ASiA==
X-Gm-Message-State: AOJu0Yx4+AXIz2MqkqcAmFo0O7e9+1lAK/bfoyxVVHXpV0w3TBkLflJ3
	vsZCzMTzqL1jUvomcwvQ6D4+bej46H0=
X-Google-Smtp-Source: AGHT+IHghgBP7HKZuiZYcrGSGdQoVZzGSPJ0ZD1oXKk3W4h8LrDoe4vTXItjC6hyntN8okxRVLU0ZA==
X-Received: by 2002:a05:6871:7990:b0:1fb:75b:999f with SMTP id pb16-20020a056871799000b001fb075b999fmr7238851oac.78.1702387014407;
        Tue, 12 Dec 2023 05:16:54 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id cd5-20020a05622a418500b004255fd32eeasm3821304qtb.7.2023.12.12.05.16.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 05:16:54 -0800 (PST)
Message-ID: <112793d5-b772-4618-8000-7a38561e3469@gmail.com>
Date: Tue, 12 Dec 2023 08:16:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <8826102900094445b99f4d3b48fc0489@tudelft.nl>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <8826102900094445b99f4d3b48fc0489@tudelft.nl>
Message-ID-Hash: EFJMBTBMF7GADUBSYPSEF7BB2XMH6F4E
X-Message-ID-Hash: EFJMBTBMF7GADUBSYPSEF7BB2XMH6F4E
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Surge protection of N210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EFJMBTBMF7GADUBSYPSEF7BB2XMH6F4E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5169178349534182698=="

This is a multi-part message in MIME format.
--===============5169178349534182698==
Content-Type: multipart/alternative;
 boundary="------------S6LDlsrgUqDBZfzmLTQERpLK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------S6LDlsrgUqDBZfzmLTQERpLK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 12/12/2023 08:05, Martin S=C3=B8ndergaard via USRP-users wrote:
>
> Hi everyone.
>
> We have an N210 which we use in the following setup:
>
> Antenna -> LNA -> Surge protector -> Bias-T -> SDR (N210)
>
> We are using Polyphaser GTH-NFF-AL protectors for the surge=20
> protection. According to the documentation these surge protectors have=20
> a throughput energy of 2.5 mJ.
>
> Are these surge protectors suitable for protecting the SDR in this setu=
p?
>
> Kind regards,
>
> Martin S=C3=B8ndergaard
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
This should be adequate, but I'll point out that there are no=20
guarantees, even with surge protection.=C2=A0=C2=A0 They just improve the
 =C2=A0 situation considerably.


--------------S6LDlsrgUqDBZfzmLTQERpLK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 12/12/2023 08:05, Martin S=C3=B8nde=
rgaard
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:8826102900094445b99f4d3b48fc0489@tudelft.nl">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi everyone.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">We have an N210 which we use in the
          following setup:<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Antenna -&gt; LNA -&gt; Surge protector
          -&gt; Bias-T -&gt; SDR (N210)<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">We are using Polyphaser GTH-NFF-AL
          protectors for the surge protection. According to the
          documentation these surge protectors have a throughput energy
          of 2.5 mJ.
          <o:p></o:p></p>
        <p class=3D"MsoNormal">Are these surge protectors suitable for
          protecting the SDR in this setup?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,sans-serif;mso-f=
areast-language:NL">Kind
            regards,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,sans-serif;mso-f=
areast-language:NL">Martin
            S=C3=B8ndergaard<o:p></o:p></span></p>
      </div>
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
    This should be adequate, but I'll point out that there are no
    guarantees, even with surge protection.=C2=A0=C2=A0 They just improve=
 the<br>
    =C2=A0 situation considerably.<br>
    <br>
    <br>
  </body>
</html>

--------------S6LDlsrgUqDBZfzmLTQERpLK--

--===============5169178349534182698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5169178349534182698==--
