Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5902C95F3D0
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 16:26:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2ECA03853A4
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 10:26:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724682395; bh=XfpIRjPb8Bp0475zmHzDNr1JsiW4hkQ70hJ23WaDm0E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=lk1k/hKKF5tpdZ1HfnOMywO8jUNyZkYbXT/jWmQSa1Qo2/XttqdQ95QC5S1SdHG6B
	 jy5hoCpQo1C7Srn4sem+kJx8aiHNtVK9ez1m/UjrMRhZoUXZfS7EiwG5mqIfPGs4VU
	 5NJ/8INt9nFFt4iMg2/fFIye4YaTa/VwgYSKUit+02pAx0QJ7EUq+HM27yaEA3WT2b
	 1VLqNDiYUlH2OjSSR0fnjZHXLY1CBNrgUWj6vFuPOCt3spXccyzAepmkYm9tfpOvTZ
	 589u4nYqxLZkRSp9frpWDIlxzjP21eU6aeM66Yqwan1cp/o8bqin3cmr7nChDNeUjS
	 FxHlOtdPykqZQ==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id EF15D383CEB
	for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 10:25:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OaqFWx99";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6bf9db9740aso19726926d6.2
        for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 07:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724682347; x=1725287147; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pnLNiCjHFSXjAu207Y6r2tC3oRvVih4lTTHranOeQ6I=;
        b=OaqFWx99OGQwPifYqjh74RXKmyc4sYw/9yyGkvAghnRiwmVY84m5l1POJgB/YPJ/+0
         RGucXS568dtkgG7Yq9go/mDDAGQ47PAWoxfhYG3j2qpDgIzcj4rMI6Zn8K/BUZuHFZsp
         mjBTWMC1mrUVfwHKtAP7gLtSVDVXUN9Z12q1FElIKS6TiwLe0NhCUiD2xo2pEbqHgaN6
         9x6EsjSf/3MsW0uS1KJmS46t2ZqTfik7aTBcyRP1Ei43lKAJ7h6xZPmsyRY7SLrsj06l
         goYqEDGYykoFtCwH6LOrJjO/e2De5dJOJfG1b5ccJIvkQQ6Or4NVrvIO9KIibxUqNNw/
         9EWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724682347; x=1725287147;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pnLNiCjHFSXjAu207Y6r2tC3oRvVih4lTTHranOeQ6I=;
        b=Fi+V6oAuXC6Qrh6ZQsC6ri71Y6per3Q7mZHxgq/enSQu6+ThUDSFQaiGpUoU+Rus5E
         LWoX+OB8CtTQ/hXm4sRpScnXrVXwlDQ7kzHiXcHlpQS138NdGoYYxcJ4KNbcI8xl8JHO
         02gf5YmGWkdGOJivOBZyzyI2PsklgBq44NY68UmXZ/84iObv5IBaBViQzusfB5/S5w9v
         D4Sc9TrE7AOwcXypgpBxa1thJIgcllrjKR7L0SgWzSaVHXVaYNMZ2JBFYE7/7g/TD+m5
         HomD2LNKnRlJB4tl2SaujiagsU+8c46nFSepWCQq6Jjf7XrdzaVhFTZ3Zxqt4xjQIYiM
         OSig==
X-Gm-Message-State: AOJu0Yy57yEINN0HEp8f8BE3ahRUq2YzyMVpqyVFa795QVux6wreY+AV
	TtsSgYFNGAUG/F2RRtZdaVpj7dv3bVDOQNtcMqv9P0r4wiIuZSuo+ZVAqw==
X-Google-Smtp-Source: AGHT+IGFQP0S2ehdSQm4ymcJR53Lvy3wkM6AmNtQLKm/CU9YqPu8nAIef9RtHmUZGsNn0HA76k/eZg==
X-Received: by 2002:a05:6214:5544:b0:6c1:54f3:8a9c with SMTP id 6a1803df08f44-6c16dc92650mr136544176d6.34.1724682346901;
        Mon, 26 Aug 2024 07:25:46 -0700 (PDT)
Received: from [192.168.2.170] (bas1-toronto12-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6c162db0964sm46410076d6.79.2024.08.26.07.25.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 07:25:46 -0700 (PDT)
Message-ID: <f76157b9-f0a5-4633-9476-7558b3fd9a46@gmail.com>
Date: Mon, 26 Aug 2024 10:25:46 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
Message-ID-Hash: CLLFE3TGKEAW3YRVJMA6NOZ5WUHPK3JA
X-Message-ID-Hash: CLLFE3TGKEAW3YRVJMA6NOZ5WUHPK3JA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC and TwinRX Configuration in Custom FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CLLFE3TGKEAW3YRVJMA6NOZ5WUHPK3JA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1952018169389795856=="

This is a multi-part message in MIME format.
--===============1952018169389795856==
Content-Type: multipart/alternative;
 boundary="------------VKk803bJKo1i70ZM6RXIpI4I"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------VKk803bJKo1i70ZM6RXIpI4I
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/08/2024 07:40, Olo via USRP-users wrote:
>
>  1. *TwinRX Channel Configuration:* Is it feasible to use the second
>     channel on the second TwinRX to receive on a static frequency
>     while the first channel sweeps, and vice versa, can the second
>     channel on the first TwinRX sweep a portion of the spectrum while
>     the first channel remains on a static frequency?
>
>
The TwinRX cards have independent LOs on each channel, so, in principle,=20
each channel can be doing something different,
 =C2=A0 on different frequencies.


--------------VKk803bJKo1i70ZM6RXIpI4I
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/08/2024 07:40, Olo via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCT=
B3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div
style=3D"font-family: Arial, sans-serif; font-size: 14px; color: rgb(0, 0=
, 0); background-color: rgb(255, 255, 255);"><br>
        <ol>
          <li><strong>TwinRX Channel Configuration:</strong> Is it
            feasible to use the second channel on the second TwinRX to
            receive on a static frequency while the first channel
            sweeps, and vice versa, can the second channel on the first
            TwinRX sweep a portion of the spectrum while the first
            channel remains on a static frequency?</li>
        </ol>
        <br>
      </div>
    </blockquote>
    The TwinRX cards have independent LOs on each channel, so, in
    principle, each channel can be doing something different,<br>
    =C2=A0 on different frequencies.<br>
    <br>
    <br>
  </body>
</html>

--------------VKk803bJKo1i70ZM6RXIpI4I--

--===============1952018169389795856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1952018169389795856==--
