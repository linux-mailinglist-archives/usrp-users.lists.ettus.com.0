Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF6F70FECC
	for <lists+usrp-users@lfdr.de>; Wed, 24 May 2023 21:55:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08518384922
	for <lists+usrp-users@lfdr.de>; Wed, 24 May 2023 15:55:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684958121; bh=tekgaGMMfzna09OVUMjNLXzqkYfGmt4IbhZF6G6PF24=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tKjfXhon8qETarmNBY0GIz3Fu+S+lxAwbF3+HevIIVOorgURN7sXBzwbFvzXpYGHL
	 71ezLOVmC+rK7U93/69hkjJ9QCuEwuPbF1z+eSBjsMxh3ChM8tG/W6ValiAGLYLQbI
	 rWDaNe6wQXbkPqqFfL8j2RFKXbhb2Fd13SUqQgnjZRAh1L3uRlDUgqKU2mDS0f8MnY
	 0AgQweWDR1ow/JDSQcIlsAz1nurcMqYIZezlcQL27GGMouG69i6GsWIYGM2P2jw1cJ
	 0ipHQhMaAyRWlwfjjkLizvKgSJ8aaghrAzYjKdg2cXoEwOMU62QzIHj54W6/6xllNM
	 PrH8ji9KUhc1w==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id ED414384864
	for <usrp-users@lists.ettus.com>; Wed, 24 May 2023 15:54:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EuQO4nB0";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-623839d5c19so1284326d6.1
        for <usrp-users@lists.ettus.com>; Wed, 24 May 2023 12:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684958095; x=1687550095;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HiTu5NYsdxwazF2zNO9gt9C61HIKGYv7icE9NhJJI8Y=;
        b=EuQO4nB0y+4AAhOe5d63Yvp1F5tiVt46omKQ73oSgOTbVx7jVFtAkgc7p0PxhCBf3P
         FMwDsPaR6DRFbGmSoyzJNs6348n5wYQA3ZU8OlLlNIDRwCJhJAPqV+ozZXtadnkrv2+5
         jarjgg9ic8F9P2XCHWdqrz0a/s1ADsuXVV2iMUc39pxHRUD7INBW++y2e247JDu/VSNu
         XEDIgfcPFqnqEzDzjW+ORxZhdmMUpZbZjclPogZ7qYYh1kd2yl2Vcs1GiLvjwyp+jWim
         p4DtHcET5dm740stpvoIH5FQuauyR4+kgbwVBGaKGOlN6S3mt1Ofi+R18oqqToO4V8t0
         HHQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684958095; x=1687550095;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HiTu5NYsdxwazF2zNO9gt9C61HIKGYv7icE9NhJJI8Y=;
        b=i5VlGRaBIXZnmG0u5FzBFc2H5iIoD4Xt8hhYMqLhZCtMkZ+sM0Ul9RW+d75gpE+IWj
         EmlbD3GEeAvRvPC11sBbfuMfyqmBnQCxU3GdpXfi39Wigw7PW8F57SB2qmte8e6F60yg
         3y1frXhnUcBuTxmbIN1M4uen4tMXFH8kv9xfTZM5bOgmhhUd7GN10ZL7vzVwM9meUS4t
         8AiOSx6uGjeBfk5JT/76og0sl5R92CWXL+r9Dz9tpiyGoIXwZLcO8RzatI3HUkccQjDP
         ckseELE7sK3TFBuDo8FuQvm1lulu9oOHRq3rDio3J+jHS2QKsYKvC6r2ORJEp+1GqNMc
         bmyQ==
X-Gm-Message-State: AC+VfDyUE4tetjZ6rlgQDjRAMF0aQCz6VGKIgKnjqlRQxZF3kj7IbHj8
	0VbwOHHlmLcEQz1i6fBFUYQnbLvAkU0s+A==
X-Google-Smtp-Source: ACHHUZ4Kd4zHoHXLi/eBgxzAUiZ0+DA83hAq5awYK3YWy+G830Dn+SF3IYWAWIZ/ylwPPaGnLlUF8g==
X-Received: by 2002:a05:6214:20ec:b0:621:331b:f55d with SMTP id 12-20020a05621420ec00b00621331bf55dmr25616545qvk.19.1684958095058;
        Wed, 24 May 2023 12:54:55 -0700 (PDT)
Received: from [192.168.2.133] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id bz16-20020ad44c10000000b00621253d19f9sm3781922qvb.98.2023.05.24.12.54.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 May 2023 12:54:54 -0700 (PDT)
Message-ID: <0419d828-801c-1582-29bc-ec4d28e1667e@gmail.com>
Date: Wed, 24 May 2023 15:54:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CANq7nXcDHgTZJpjP2q4ZOVtkD=FMUThntS6QJRRRjgW8_t-ACw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANq7nXcDHgTZJpjP2q4ZOVtkD=FMUThntS6QJRRRjgW8_t-ACw@mail.gmail.com>
Message-ID-Hash: KH7D22J2BMYVDB2DGLY2PY6P34J4OAAC
X-Message-ID-Hash: KH7D22J2BMYVDB2DGLY2PY6P34J4OAAC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KH7D22J2BMYVDB2DGLY2PY6P34J4OAAC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7008350953407566752=="

This is a multi-part message in MIME format.
--===============7008350953407566752==
Content-Type: multipart/alternative;
 boundary="------------eiYxM5050jzpRW5bk0X9bRmE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------eiYxM5050jzpRW5bk0X9bRmE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/05/2023 14:47, Mena Ghebranious wrote:
> Hi,
>
> On the N320, I've set up a GPIO to track the ATR_TX and ATR_XX modes.=C2=
=A0=20
> We want to use this GPIO to control an external T/R switch.
>
> On a scope, I can see that the GPIO is high during transmission and=20
> low otherwise.=C2=A0 However, when I attach the TX RF output to the sco=
pe,=20
> the start of transmission is lagging the GPIO low-to-high transition=20
> by roughly ~30 samples, or 1.5us at 20Msps (see attached screenshot -=20
> GPIO_high_to_TX_attach1.png).
>
> I was expecting to see the start of transmission occur closer to the=20
> GPIO transition.=C2=A0 What could be the cause of this delay?
>
> Additionally, at the end of transmission, the TX RF output continues=20
> past the GPIO high to low transition by roughly=C2=A0~2 samples, or 100=
ns=20
> at 20Msps (see attached screenshot=C2=A0 - GPIO_low_to_TX_attach2.png).=
=C2=A0=20
> =C2=A0This is a bit confusing to me as well, since if there was a true=20
> delay in the TX RF output path I would have expected to see the same=20
> ~1.5us delay between the GPIO going low and the transmission end.
>
> I'm looking to see how I can better line up the GPIO transition to the=20
> actual TX output, or at least explain the cause of the delay so I can=20
> work around it.=C2=A0 Thanks.
>
You're probably seeing the group-delay in the DUC implementation, which=20
is a series of cascaded filters, the magnitude of
 =C2=A0 this delay depends on your particular sample-rate parameters.=C2=A0=
 The=20
ATR logic isn't really "aware" (that I know of)
 =C2=A0 of the group delay implied by the DUC filters--it likely turns on=
 the=20
GPIO as samples are clocked into the DUC.


>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------eiYxM5050jzpRW5bk0X9bRmE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/05/2023 14:47, Mena Ghebranious
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANq7nXcDHgTZJpjP2q4ZOVtkD=3DFMUThntS6QJRRRjgW8_t-ACw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div id=3D"gmail-:1gc" class=3D"gmail-ii gmail-gt"
          style=3D"direction:ltr;margin:8px 0px
          0px;padding:0px;font-size:0.875rem">
          <div id=3D"gmail-:so" class=3D"gmail-a3s gmail-aiL"
style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font-=
variant-alternates:normal;font-kerning:auto;font-feature-settings:normal;=
font-stretch:normal;font-size:small;line-height:1.5;overflow:hidden">
            <div dir=3D"ltr">Hi,
              <div><br>
              </div>
              <div>On the N320, I've set up a GPIO to track the ATR_TX
                and ATR_XX modes.=C2=A0 We want to use this GPIO to contr=
ol
                an external T/R switch.</div>
              <div><br>
              </div>
              <div>On a scope, I can see that the GPIO is high during
                transmission and low otherwise.=C2=A0 However, when I att=
ach
                the TX RF output to the scope, the start of transmission
                is lagging the GPIO low-to-high transition by roughly
                ~30 samples, or 1.5us at 20Msps (see attached screenshot
                - GPIO_high_to_TX_attach1.png).=C2=A0=C2=A0</div>
              <div>
                <div><br>
                </div>
              </div>
              <div>I was expecting to see the start of transmission
                occur closer to the GPIO transition.=C2=A0 What could be =
the
                cause of this delay?</div>
              <div><br>
              </div>
              <div>Additionally, at the end of transmission, the TX RF
                output continues past the GPIO high to low transition by
                roughly=C2=A0~2 samples, or 100ns at 20Msps (see attached
                screenshot=C2=A0 - GPIO_low_to_TX_attach2.png).=C2=A0 =C2=
=A0This is a
                bit confusing to me as well, since if there was a true
                delay in the TX RF output path I would have expected to
                see the same ~1.5us delay between the GPIO going low and
                the transmission end.</div>
              <div><br>
              </div>
              <div>I'm looking to see how I can better line up the GPIO
                transition to the actual TX output, or at least explain
                the cause of the delay so I can work around it.=C2=A0 Tha=
nks.</div>
              <div><br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    You're probably seeing the group-delay in the DUC implementation,
    which is a series of cascaded filters, the magnitude of<br>
    =C2=A0 this delay depends on your particular sample-rate parameters.=C2=
=A0 The
    ATR logic isn't really "aware" (that I know of)<br>
    =C2=A0 of the group delay implied by the DUC filters--it likely turns=
 on
    the GPIO as samples are clocked into the DUC.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANq7nXcDHgTZJpjP2q4ZOVtkD=3DFMUThntS6QJRRRjgW8_t-ACw@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div id=3D"gmail-:1gc" class=3D"gmail-ii gmail-gt"
          style=3D"direction:ltr;margin:8px 0px
          0px;padding:0px;font-size:0.875rem">
          <div id=3D"gmail-:so" class=3D"gmail-a3s gmail-aiL"
style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font-=
variant-alternates:normal;font-kerning:auto;font-feature-settings:normal;=
font-stretch:normal;font-size:small;line-height:1.5;overflow:hidden">
            <div dir=3D"ltr">
              <div><br>
              </div>
            </div>
          </div>
        </div>
        <div class=3D"gmail-hq gmail-gt" id=3D"gmail-:1hj"
          style=3D"font-size:0.875rem;margin:15px 0px;clear:both">
          <div class=3D"gmail-ho" id=3D"gmail-:1hk" style=3D"margin:12px
            0px;font-family:&quot;Google
            Sans&quot;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif"><sp=
an class=3D"gmail-aVW gmail-a5T" style=3D"font-weight:bold;height:20px;li=
ne-height:20px;font-size:0.875rem;display:flex;white-space:pre-wrap">
</span></div>
        </div>
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
    <br>
  </body>
</html>

--------------eiYxM5050jzpRW5bk0X9bRmE--

--===============7008350953407566752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7008350953407566752==--
