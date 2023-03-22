Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE0B6C5950
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 23:13:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47C24384502
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 18:13:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679523183; bh=lX11atvXny+0Q8LvxySoUqOLHJPQIGr65rhcjIa6iAY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0HXEV6nM2p5cCPbL6ZZlmPwjZMPKVq12aupleuMeK89KjZPCQoe9zQjJoTy8DtuQ8
	 SDxZxyseTREAgvDAtUyZEorSi4Jf5O7EVl/CMrVAsUCXozKTuq/sVZRhWVKjQyK2ha
	 Nyj4VQ+VZJ4p1CKcx1EDoEBXdLytZKXxhmC5LNkLZKAglz0XCIAs9vTappIZs0M9sU
	 mDXrBg9/t6CKAwwIGoqX1HhEypmu7qf9B7/l8HJjCAnX0uBR7ZK3FjqIuBsHmSaxKW
	 knGUVQWLAbFxN1nPFmUBlRlJ7GM8ztMI5dtb7m2HBUK8qWhO1SeXbZF1Wb6ecvs3nH
	 +y78CcL2c2cfw==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 98A5E384502
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 18:12:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jZMtjqGL";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id t19so10522047qta.12
        for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 15:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679523177;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ixrBo/qJrTmpXyFkvFxYsRoQarF1CeYZAN+jo2skE2g=;
        b=jZMtjqGLp8U06T/RkoglGXybb3wlN7GE4JMczaqKOwLPPvthqwnQyM3t97qdNl6HYy
         KJ3VQUo1UZRFwmZ8Zew2TbiHRLj4xqAbnE16GhVICjLb7ca5MhFvDnbpjw/iuHZ8zVam
         8fOfd4Clt5szyVTzU6zC+DpkfWnmO7T5GHQ2qRUtPksukn4A5lUo8xI2Z5OmqNgiHNui
         bxKqLuZ7/Ntu3B/lWI1VDlDydQ+0Z6Nyge0WqIvFGs9XHJGhxOzJOlmrbY4cdIhat54y
         h4Mlo5RrKWY/gG67aPLLUsH438LfVavfyYqSjfnlfB2rionjcaJ5jpG8hPui1Nq8zAUc
         4cjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679523177;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ixrBo/qJrTmpXyFkvFxYsRoQarF1CeYZAN+jo2skE2g=;
        b=IMmHcMXEHDMHhBhcH2VLwW7RkUqvbifVLHoRVGqprg3eio2pK4X6MX+k1qD2/e7tfn
         pemhlZ9kMBlGikAgLuOx7lrU1EmsIUuA3md0yYRdN5mdh80IXoZklB4hVrIUp2saNmzR
         Wl2BLA6BTT8qbaAnhX09D3TzlWszDg4/M6iTkXL2P3gC8uWMhomQpEgNOauu9QiHMA0J
         BTLO2vXZpUFXaW082Qb+rERohvtrr+rJsK3+zMgCekmrubombXtVPOeFySl9A0tomd2R
         lWA7HrF5hBgEZkBd4dhi8BVZLOSQw4AtSK17Z8eKhIY8vaT65GhPuz/M1IO390H6JyTF
         7Fpg==
X-Gm-Message-State: AO0yUKVQWownQIzwH/AlbYI2b7UCWgSbt8NRGTiOdodP7b1UXJsxdptB
	I/7QkidWrBIWgVlePondwYsEUKTjC1c=
X-Google-Smtp-Source: AK7set/kNs+4bX/L2/vOeYhtg+uG4qu4jGHyOIzujcll9gfD0xe6puTr0HQ5RHoOTbAcnR8Zaod5Zg==
X-Received: by 2002:a05:622a:284:b0:3bf:d238:6ca with SMTP id z4-20020a05622a028400b003bfd23806camr7121602qtw.68.1679523176699;
        Wed, 22 Mar 2023 15:12:56 -0700 (PDT)
Received: from [192.168.2.161] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id o188-20020a375ac5000000b007460093cccdsm12131378qkb.25.2023.03.22.15.12.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 15:12:56 -0700 (PDT)
Message-ID: <a8c9f29e-13e3-dd43-221a-cd27382fdf36@gmail.com>
Date: Wed, 22 Mar 2023 18:12:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY@lists.ettus.com>
Message-ID-Hash: KHC34O4FKU2MPGAK7UCE5LMKQS2MZVL4
X-Message-ID-Hash: KHC34O4FKU2MPGAK7UCE5LMKQS2MZVL4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recovering signal from IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KHC34O4FKU2MPGAK7UCE5LMKQS2MZVL4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1478625974530859379=="

This is a multi-part message in MIME format.
--===============1478625974530859379==
Content-Type: multipart/alternative;
 boundary="------------4CCW82XNGZrZcZozWBm0iJ2r"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4CCW82XNGZrZcZozWBm0iJ2r
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 22/03/2023 18:06, jmaloyan@umass.edu wrote:
>
> When the frequency is called back, it gives back that it is set to 100=20
> Khz. The lowest it goes is 5 hz.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Your command-line is here:

|./rx_samples_to_file --nsamps 3000000 --channel 0 --ant "RX2" --subdev=20
"A:0" --gain 50 --rate 3e6 --freq 100000

Which means you're asking the hardware to tune to a center frequency of=20
100kHz.=C2=A0=C2=A0 That isn't possible with this hardware.

I refer you to the datasheet here:

https://www.ettus.com/wp-content/uploads/2019/04/USRP-N320-Datasheet-2.pd=
f


|
--------------4CCW82XNGZrZcZozWBm0iJ2r
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/03/2023 18:06, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>When the frequency is called back, it gives back that it is set
        to 100 Khz. The lowest it goes is 5 hz.</p>
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
    Your command-line is here:<br>
    <br>
    <code>./rx_samples_to_file --nsamps 3000000 --channel 0 --ant "RX2"
      --subdev "A:0" --gain 50 --rate 3e6 --freq 100000<br>
      <br>
      Which means you're asking the hardware to tune to a center
      frequency of 100kHz.=C2=A0=C2=A0 That isn't possible with this hard=
ware.<br>
      <br>
      I refer you to the datasheet here:<br>
      <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.ettus.com/wp-conte=
nt/uploads/2019/04/USRP-N320-Datasheet-2.pdf">https://www.ettus.com/wp-co=
ntent/uploads/2019/04/USRP-N320-Datasheet-2.pdf</a><br>
      <br>
      <br>
    </code>
  </body>
</html>

--------------4CCW82XNGZrZcZozWBm0iJ2r--

--===============1478625974530859379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1478625974530859379==--
