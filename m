Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 285556C58E3
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 22:39:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 127FA384669
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 17:39:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679521177; bh=E0GHTyBRhgpod9BQlHbQ2A0uZSDFqzOZaDRPNyzIAFk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oOXfvIipzjqaXJJMPMtPgcZW3YKZqJVx9ABsB+B9c0gtFQPru1NWDQiT7/0h/5jnf
	 btbFvU9VXSiIrAN2k64K5LLGHkkYicJ8+FolBSDF7/1uW5he/s/VnKEw6rvkYPpqCj
	 Ie00hKC3cMb1QhY3sebrLqLJdD08c15Mz16r8SWoqiH7Aq6mCUurgVVjRn8uhZ7mAd
	 h6M9UAWCvt7TCOcY+8PpI/fNGfCjXssVqs7z3qOm/hzPdpleVXlev4j5jWeymzFArY
	 ejtkGmePNZ4/Hiwtrt0/D7NmTdUOSVCD2jVUqXr6McAQgtWv8u4tQdk54nVZ7w01CC
	 droh2F+3J9m7Q==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 9905A38457E
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 17:38:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jP6IgRmc";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id t19so10427795qta.12
        for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 14:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679521120;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+B5OoXQiE1Arnk/SGOkBFsvQffdS+JryiIgYoAdu8nA=;
        b=jP6IgRmcFjqa6shemRfSPRK8WldQBWX20S9y9tnBZyhkO+RX7EwbnlleFBbzm7IZRS
         6Wia7UaMj/TrqO8QAXT4lj0pH4qzczPwzNcvo8VkGBIBMN++GwtPk3p9TXkXfLeuQ0Cx
         kp85NMEoiaL9g2Fs/Dm/I8bcMS7Y7pRspXrqVaxUMMwTfzJRzyI9WzOVOVhl6qTAQVsy
         7qfOxQ+U+rwwNu4jL5ZZGlHJxVWy0tyCvOC9dFjJJeowJXgXkp3P/vGhNcGg7wDFB5Em
         jujZ6a+lMrK9EIEONTZuvfkGkJ9cwJN+eHEEM+NTHcZmjRCKFkgQyigCQTno34s0gaYX
         OeiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679521120;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+B5OoXQiE1Arnk/SGOkBFsvQffdS+JryiIgYoAdu8nA=;
        b=8C9QgdiImzPhutNDdbDazHwvycpeSqOwWcYEYtDGihRKiIZiQGn9tiNMaRwScg+/FZ
         Wfq99dmIMRR83gw4vRcJt6JsympROPxkAOCtW1384NTwgC859dRSGbgo6lGaM39xmuIc
         sykrV0Ictd8mHqvyZzNBTCW6UUtF53aH5P/sTcbNYQ3nEoChSWyKvnPamgZf6PTtwTzF
         ryBBjLcac0Fv98SHS7WtY43ZLM9fNiV+cATsr4IV3RqBBrlazotsXhQUc6l01cBWauvA
         6xOJC8x8yQw6zyI9ikeBhrqTRPrzhq3K3LA+o9ws3S+9kivTzCudx5Ay947QN4x/vj0g
         hLBQ==
X-Gm-Message-State: AO0yUKXKmHZdFYQGjiR6H8euBk/GjlrQRMNUPvpLphhAxnmpzQWWluZb
	itNLbqD6v1+yrMETLgxRttVPHX0Ugig=
X-Google-Smtp-Source: AK7set/sz102IY6mKelIB3yp/8r/urtVDdBopXtdlQFH5Jxjds6NwHkF6Xy8swPu9DQKqQnGuBq3TQ==
X-Received: by 2002:a05:622a:651:b0:3b9:b6e3:c78e with SMTP id a17-20020a05622a065100b003b9b6e3c78emr9152354qtb.8.1679521120731;
        Wed, 22 Mar 2023 14:38:40 -0700 (PDT)
Received: from [192.168.2.160] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id t184-20020ae9dfc1000000b007424239e4casm11975921qkf.117.2023.03.22.14.38.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 14:38:40 -0700 (PDT)
Message-ID: <6c269307-bf72-6c84-593f-d447d77e00c5@gmail.com>
Date: Wed, 22 Mar 2023 17:38:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <gq9aPKD1ebdvEkfvpAwKJd7UlVDMWQzC7NAKLuUy4L4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <gq9aPKD1ebdvEkfvpAwKJd7UlVDMWQzC7NAKLuUy4L4@lists.ettus.com>
Message-ID-Hash: VMYHCXIL3MY7UCMXTTDNV64MMNURXHG3
X-Message-ID-Hash: VMYHCXIL3MY7UCMXTTDNV64MMNURXHG3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recovering signal from IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VMYHCXIL3MY7UCMXTTDNV64MMNURXHG3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5823545042161510582=="

This is a multi-part message in MIME format.
--===============5823545042161510582==
Content-Type: multipart/alternative;
 boundary="------------2j98DcT9ha0ctU28Y2aiLNBG"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2j98DcT9ha0ctU28Y2aiLNBG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 22/03/2023 17:28, jmaloyan@umass.edu wrote:
>
> Hello,
>
> I am currently trying to recover a signal(sine wave) that goes into my=20
> RX2 path on the Ettus N321/N320. However, I am having trouble=20
> recovering the signal.
>
>
> My current set up is using a separate signal generator that is fed=20
> into the RX port of the Ettus. I run the example rx_samples_to_file=20
> with the following parameters=E2=80=A6
>
> |./rx_samples_to_file --nsamps 3000000 --channel 0 --ant "RX2"=20
> --subdev "A:0" --gain 50 --rate 3e6 --freq 100000|
>
> And my signal generator(asynchronously) is sending a sine wave at 100=20
> Khz. However, I am having some trouble recovering the original signal.
>
> I have also tried collecting samples while the signal generator output=20
> was off, but the samples I recover from IQ appear to be the signal=20
> generated by the internal RX LO, which is strange, since if there is=20
> no input on the RX, the IQ should just a be a string of zeros(plus=20
> some noise). Any feedback is greatly appreciated.
>
> Thanks
>
> Joe
>
>
The device doesn't tune below 3MHz.


--------------2j98DcT9ha0ctU28Y2aiLNBG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/03/2023 17:28, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:gq9aPKD1ebdvEkfvpAwKJd7UlVDMWQzC7NAKLuUy4L4@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>I am currently trying to recover a signal(sine wave) that goes
        into my RX2 path on the Ettus N321/N320. However, I am having
        trouble recovering the signal.</p>
      <p><br>
      </p>
      <p>My current set up is using a separate signal generator that is
        fed into the RX port of the Ettus. I run the example
        rx_samples_to_file with the following parameters=E2=80=A6</p>
      <p><code>./rx_samples_to_file --nsamps 3000000 --channel 0 --ant
          "RX2" --subdev "A:0" --gain 50 --rate 3e6 --freq 100000</code><=
/p>
      <p>And my signal generator(asynchronously) is sending a sine wave
        at 100 Khz. However, I am having some trouble recovering the
        original signal. </p>
      <p>I have also tried collecting samples while the signal generator
        output was off, but the samples I recover from IQ appear to be
        the signal generated by the internal RX LO, which is strange,
        since if there is no input on the RX, the IQ should just a be a
        string of zeros(plus some noise). Any feedback is greatly
        appreciated.</p>
      <p>Thanks</p>
      <p>Joe</p>
      <br>
    </blockquote>
    The device doesn't tune below 3MHz.<br>
    <br>
    <br>
  </body>
</html>

--------------2j98DcT9ha0ctU28Y2aiLNBG--

--===============5823545042161510582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5823545042161510582==--
