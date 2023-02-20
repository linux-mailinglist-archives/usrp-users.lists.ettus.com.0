Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC9769D218
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 18:25:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D362380AC9
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 12:25:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676913931; bh=6KIfGwLbfG1VZxgUjwtafD0J58WDkbSDTLXEx4ykIqo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=faKVn0KtNQT3kcB0xYvL0AptTKPj0F+ZzrhfRX/LUR8PAGreKgAtcxw4vniBgsqBT
	 dt0OXRGzSiNSP8fx/qu0/XlnBs2T7SuAeDUMC/YmPuKDSJgGhhTWEnaYeum76F4VHr
	 LO8jVbjM1DYppnrskg/3xFxDfN4EZOsM1fXxcGxn1Pr1XKCl7i+4L9WP+UDc3kunEw
	 ChMaPQp7gTbUQIilKS8/U5AYf1eiIdKXuZGS6VF8pCU1DSbb3ny0rMvT1tMswWrVGK
	 FgAnlr5N7k3FbRpkKDST0//mecYxA/fH/2XnEsw5pFxymse1kx8VM4yKfpzTyhSNsL
	 aT1ylO80QEM+w==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 1184F38095D
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 12:24:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cS872sWY";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id fp16so1362405qtb.10
        for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 09:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mPBA4Q1G+Mk+KQYezZTTIxdAdAXW883UEk3mV3SH+nQ=;
        b=cS872sWY0PODJQKXz3JLkEUDMA+uTRES9jGk1f7vxMNvpsUCavzLcOtKlYqgRaMoi7
         +WoMRp9AyFHqew4gt+wrjQndltruKpI+QYscDquc0ikzeJKuI32387L3/2S3ohFuolJi
         0q5JY7DYL6nbEKW7P04d5M70GqI9nI1WnLg27TJBt3NK+3TyyHj/WZ+SwmijK4NYylZP
         YMTzNeqv5z3GTI9MxqtOgVtwMSy4WXgOywRRbXgomCT0PoSGOjgCsSf7/AYVn/7Jj5V6
         SdPBMSQ9dLmg6R8hx1DnMVe7x71H82d6ocuIi3JodX4XzbcN6PO3ngzGbzuEeuez9xpd
         r3Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mPBA4Q1G+Mk+KQYezZTTIxdAdAXW883UEk3mV3SH+nQ=;
        b=RXv5ReWbNT2XvGvNSRfQ57Rj96zoPjuyYCSOQ957eEFBG1GaOLG/vti/mS83s3m6a0
         pwxytpd5iy9D8tu26WdElEr/xp5z+FIj5/vYK8BqOfqd8eqaZ8HnL8bHkkOFvXPAcg2O
         gNnK2XQn6l8r9B6UPZE68MKp4srr4jYaZN53E/c1+BFbnV9JbcNEMihNCAgK4qOF7nRh
         0I1z8bYKM4HDk8U585MPmFClHE38pjwd/DvcYOZt6Z3G+UqID/hNnSUBwNWdrjDXqTIT
         CzRw0RSiqYS1ATHPYdCGvjpLR4HN+SCu4ysxLkUy/4GQZqATI8dsPHpP1DpBqOReviS8
         MXlQ==
X-Gm-Message-State: AO0yUKW/VhBO9qbbIQy3zF5hQE3r5nXgQWc1CNmPrDDxumbfIC9LOQHw
	9BgZtA+zQaAnAXfZBO09+tXhaK0UnVQ=
X-Google-Smtp-Source: AK7set88HbbuhM2ACdk/3FjZa27QSEv46fY9xa+BwgYphZcBlSQJ7PAtm5bZ4k+p3SonUUl2UD5njg==
X-Received: by 2002:ac8:5807:0:b0:3bd:1a8a:800b with SMTP id g7-20020ac85807000000b003bd1a8a800bmr1716168qtg.62.1676913879276;
        Mon, 20 Feb 2023 09:24:39 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id o14-20020ac8554e000000b003b9e1d3a502sm8660987qtr.54.2023.02.20.09.24.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 09:24:39 -0800 (PST)
Message-ID: <cc7bcf15-5a8d-289c-9c75-5070e92552af@gmail.com>
Date: Mon, 20 Feb 2023 12:24:38 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Spy7SIbLhdw2EocmklWA2SIv0wikcO8zWp5fYRWGAE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Spy7SIbLhdw2EocmklWA2SIv0wikcO8zWp5fYRWGAE@lists.ettus.com>
Message-ID-Hash: FPLNWQLYGPVWJDA3C47V2YUX3V75B3QF
X-Message-ID-Hash: FPLNWQLYGPVWJDA3C47V2YUX3V75B3QF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: benchmark_rate throws error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FPLNWQLYGPVWJDA3C47V2YUX3V75B3QF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1098957030795622745=="

This is a multi-part message in MIME format.
--===============1098957030795622745==
Content-Type: multipart/alternative;
 boundary="------------ZO1flguTCx1jniESZ1tgA5ci"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ZO1flguTCx1jniESZ1tgA5ci
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20/02/2023 12:21, jmaloyan@umass.edu wrote:
>
> I believe so. When I use uhd_usrp_probe, I get
>
> |[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
> UHD_4.3.0.HEAD-0-g1f8fd345|
>
> |[INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.1.151,type=3Dn3xx,product=3Dn320,serial=3D3255102,n=
ame=3Dni-n3xx-3255102,fpga=3DXG,claimed=3DFalse,addr=3D192.168.1.151|
>
> I am currently using the default XG image, and not my own. I can=20
> recieve samples, however, it seems to be at a limited rate. When I use=20
> rx_samples_to_file with a high rate, i will get an overflow with a=20
> seemingly lower rate than what the board should be capable of.
>
> |Press Ctrl + C to stop streaming...|
>
> |OGot an overflow indication. Please consider the following:|
>
> |Your write medium must sustain a rate of 39.321600MB/s.|
>
> |Dropped samples will not be written to the file.|
>
> |Please modify this example for your purposes.|
>
> |This message will not appear again.|
>
> |OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO^C|
>
> |Done!|
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
What the board is capable of, and what your=20
computer/kernel/filesystem-code/disk-drives can sustain are two very=20
different
 =C2=A0 things.

I like to use a (weak, I know) metaphor.=C2=A0 "Niagara Falls cares littl=
e=20
about what size of bucket you're trying to catch it in."


--------------ZO1flguTCx1jniESZ1tgA5ci
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20/02/2023 12:21, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:Spy7SIbLhdw2EocmklWA2SIv0wikcO8zWp5fYRWGAE@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I believe so. When I use uhd_usrp_probe, I get</p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          UHD_4.3.0.HEAD-0-g1f8fd345</code></p>
      <p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with
          args:
mgmt_addr=3D192.168.1.151,type=3Dn3xx,product=3Dn320,serial=3D3255102,nam=
e=3Dni-n3xx-3255102,fpga=3DXG,claimed=3DFalse,addr=3D192.168.1.151</code>=
</p>
      <p>I am currently using the default XG image, and not my own. I
        can recieve samples, however, it seems to be at a limited rate.
        When I use rx_samples_to_file with a high rate, i will get an
        overflow with a seemingly lower rate than what the board should
        be capable of.</p>
      <p><code>Press Ctrl + C to stop streaming...</code></p>
      <p><code>OGot an overflow indication. Please consider the
          following:</code></p>
      <p><code> Your write medium must sustain a rate of 39.321600MB/s.</=
code></p>
      <p><code> Dropped samples will not be written to the file.</code></=
p>
      <p><code> Please modify this example for your purposes.</code></p>
      <p><code> This message will not appear again.</code></p>
      <p><code>OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO^C</code></p>
      <p><code>Done!</code></p>
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
    What the board is capable of, and what your
    computer/kernel/filesystem-code/disk-drives can sustain are two very
    different<br>
    =C2=A0 things.<br>
    <br>
    I like to use a (weak, I know) metaphor.=C2=A0 "Niagara Falls cares
    little about what size of bucket you're trying to catch it in."<br>
    <br>
    <br>
  </body>
</html>

--------------ZO1flguTCx1jniESZ1tgA5ci--

--===============1098957030795622745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1098957030795622745==--
