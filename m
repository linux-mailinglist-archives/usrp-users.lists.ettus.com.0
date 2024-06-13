Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78471907E2C
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 23:29:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA64F385695
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 17:29:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718314168; bh=mLfv3wqI8st/M+X+GMkTfXRV0s6Ux1GCcTs7l4FMSB0=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=TgJWBjzeHe4pAb2VwNOLW4WTyxozTEwhkMQTWqBly3ciMUscrr6rBLzsVotpSXS8W
	 XglrqmnDgzKyx5J8Vp4PyZCGvfNqXB/6502Pi74PIY2vhNEevcX7cLa2xIIZheIKw0
	 XvY7ywuP0Eij10f/hK5s1UcMUp05Orcikx4pjLwu671ERtw9OSNhJCwBHjLXFJfisZ
	 Lb2DIFAg3IXiVlmqw12ev6rgkHRow0H4AdZTnVzLvXcpbgPfuRv18AzPPWne5M9mB5
	 qAbW92SuJ5VpzMQUhnJilwVCfOtfBZXybMrs3fYF7mjlPiFBDVmVQ5FW4FLRDD9hFX
	 tg6WozX388XSw==
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id DC79238549A
	for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 17:29:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B9MMbqcW";
	dkim-atps=neutral
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3d226aff122so790219b6e.2
        for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 14:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718314144; x=1718918944; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2TJfvw0f6Pp+42Iyv4c1/L7ZeLJbweX3IMuTTSdVQdo=;
        b=B9MMbqcWa3iszdnMIToaz4zTLyglDGz7n+O/MMwWypGkYHIFzxNaWSupE5f5U7GGOi
         w7NtGTY1FFUM5got7hUDz9XaFkl6Mtl1gl36wfLVFMqWS+fN/va1sB90MqiIBKdNPOcR
         kH64CNDy8xELFncuKMNJtlD6Qt9Fxe+LvUCaTu6djvA0PxMcMy5ewAgp9f3N+6SMGz/w
         NB4NaQSMbv3k40JObJywNW2Hs4qzdos3ds6+gVFLBI6XPYdnnBFTAaXL5g2FV491KYf/
         bUVZHPdrrHgAhNM7dXfO52UsbzwHcZPd8fFptGtHVk9htyuMFr6+yrp/0JP0x+V3f0WZ
         1lsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718314144; x=1718918944;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2TJfvw0f6Pp+42Iyv4c1/L7ZeLJbweX3IMuTTSdVQdo=;
        b=c5uvBNbvuwKV6L6TxiQjmRUtXkXjiYqBt2/8R7WKXu0FpZyKfEEybhCkY15eEexmZ8
         9uQRhr7mUet8t/La3AOAPZ6hASHyHvcMMtS+ibuJpM8DkgbRfMixb6gyYcDHAX0MGiZL
         wu4AaLLxmWd4lR13oIf2qukdQ41th9OJr54OIL9HANzEo5vX9FMjdbfjVe2DvQzjH/8p
         3E1cmLOhXgLtWhHQYZNsOfnTbcZ60YugRiK1Yc9gCdFn26PPbLuPB1Oni6RnYozmRukq
         7mD45xzlU4OXs2s0KTW22Qk/N4osAM0vv3nt7GRpK5JQ8jN7H0Ex+S01KYhESHvWUhMJ
         TRQQ==
X-Gm-Message-State: AOJu0YyeP80jXFdr9vqGe780kG+b79WQLy41XuhYPGFGZyKdgJIhfNQE
	Bux8waFrL+09m1nGIw7eTLTckhknpJk3vT10zvn1iwOWhaqAKheh1dw81A==
X-Google-Smtp-Source: AGHT+IF+OCyfy102RjnkK1WVs89xbbuQ1LbwQ4L/JMB6GK1jOP+pk5xMfEJiu7uY6TGXJy3ps+wzLA==
X-Received: by 2002:a05:6808:1795:b0:3d2:24d0:eddc with SMTP id 5614622812f47-3d24e98706dmr919783b6e.36.1718314144115;
        Thu, 13 Jun 2024 14:29:04 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-441f017b43esm9871141cf.40.2024.06.13.14.29.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 14:29:03 -0700 (PDT)
Message-ID: <f464a082-d0cb-4bbd-8a8f-96a0b7fa837c@gmail.com>
Date: Thu, 13 Jun 2024 17:28:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Anabel Almodovar <anabel.almodovar@gmail.com>
References: <CAFPzw1=hsoXJe7hH_0C5OweSZJGf-Ht3VZGuzqT_wqdh1cUVpg@mail.gmail.com>
 <4d6afc01-37e3-437c-895c-9b8e07010b20@gmail.com>
 <CAFPzw1=1ZBBRimj_UfM-HyFOXqMQJMmwaQQPHr0e9mBx21d57A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFPzw1=1ZBBRimj_UfM-HyFOXqMQJMmwaQQPHr0e9mBx21d57A@mail.gmail.com>
Message-ID-Hash: IYNY3QALH5ZL24JYCZQAJHHL2TQ5OUMA
X-Message-ID-Hash: IYNY3QALH5ZL24JYCZQAJHHL2TQ5OUMA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: IOError: x300 fw poke32 persist with large adquisition times
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IYNY3QALH5ZL24JYCZQAJHHL2TQ5OUMA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0343946789127336247=="

This is a multi-part message in MIME format.
--===============0343946789127336247==
Content-Type: multipart/alternative;
 boundary="------------YhiqDjebfjvM9cJwed4scXMn"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------YhiqDjebfjvM9cJwed4scXMn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/06/2024 17:16, Anabel Almodovar wrote:
> Dear Marcus,
>
>
>     /Is this happening on BOTH USRPs?/
>
>
> =C2=A0Yes, it happens with both USRP randomly.
>
>
>     /Have you followed this guide here for performance tuning?/
>
>     https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>
>
> Yes, I have followed your advice. The only thing I haven't dared to=20
> touch is the grub.
>
>
>     /I have an X310 with two TwinRX, on Ubuntu 22.04, UHD 4.1, and I
>     can stream literally for *days* without any issue
>     =C2=A0 at all./
>
>
> Well, That is my goal but I don=C2=B4t know how.
>
>
>     /How are you connected to your X310s?=C2=A0=C2=A0 If you only run o=
ne at a
>     time, do you see this failure?/
>
> They are connected via dual 10GB ethernet ports and each port is=20
> connected to a different network card to ensure there are no=20
> limitations.=C2=A0I get the same behavior with a single USRP.
>
> I have tried to apply the configuration indicated in this example:
>
> https://github.com/EttusResearch/refarch-multich/blob/dev/config/sysctr=
l_config.sh
>
> But the same thing keeps happening.
>
> Regards,
> Anabel
What about the ring buffer settings?

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

The ring buffer settings aren't persistent across a reboot, so you=20
either need to have an "rc.local" file that sets them
 =C2=A0 or you need to do this manually every time you reboot the system.


I admit that I'm only using a single 10GigE card for my application --=20
streaming up to 4 channels at up to 25Msps
 =C2=A0 per channel.

But I can literally just let it run for days at a time without issue on=20
my particular computer.


>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------YhiqDjebfjvM9cJwed4scXMn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/06/2024 17:16, Anabel Almodovar
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFPzw1=3D1ZBBRimj_UfM-HyFOXqMQJMmwaQQPHr0e9mBx21d57A@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">Dear Marcus,</div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div><br>
              <blockquote type=3D"cite"> </blockquote>
              <i> Is this happening on BOTH USRPs?</i><br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>=C2=A0Yes, it happens with both USRP randomly.</div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div> <br>
              <i> Have you followed this guide here for performance
                tuning?</i><br>
              <br>
              <a
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">https://kb.ettus.com/USRP=
_Host_Performance_Tuning_Tips_and_Tricks</a></div>
          </blockquote>
          <div><br>
          </div>
          <div>Yes, I have followed your advice. The only thing I
            haven't dared to touch is the grub. =C2=A0</div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div><br>
              <i> I have an X310 with two TwinRX, on Ubuntu 22.04, UHD
                4.1, and I can stream literally for *days* without any
                issue<br>
                =C2=A0 at all.</i><br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>Well, That is my goal but I don=C2=B4t know how.=C2=A0</di=
v>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div> <br>
              <i> How are you connected to your X310s?=C2=A0=C2=A0 If you=
 only run
                one at a time, do you see this failure?</i><br>
              <br>
            </div>
          </blockquote>
          <div>They are connected via dual 10GB ethernet ports and each
            port is connected to a different network card to ensure
            there are no limitations.=C2=A0I get the same behavior with a
            single USRP.=C2=A0</div>
          <div><br>
          </div>
          <div>I have tried to apply the configuration indicated in this
            example: <br>
            <br>
            <a
href=3D"https://github.com/EttusResearch/refarch-multich/blob/dev/config/=
sysctrl_config.sh"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://github.com/EttusResearch/refarch-multich/blob/dev/config/sysctrl_co=
nfig.sh</a><br>
            <br>
            But the same thing keeps happening.<br>
          </div>
          <div><br>
          </div>
          <div>Regards,</div>
          <div>Anabel</div>
        </div>
      </div>
    </blockquote>
    What about the ring buffer settings?<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_=
Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_P=
erformance_Tuning_Tips_and_Tricks</a><br>
    <br>
    The ring buffer settings aren't persistent across a reboot, so you
    either need to have an "rc.local" file that sets them<br>
    =C2=A0 or you need to do this manually every time you reboot the syst=
em.<br>
    <br>
    <br>
    I admit that I'm only using a single 10GigE card for my application
    -- streaming up to 4 channels at up to 25Msps<br>
    =C2=A0 per channel.<br>
    <br>
    But I can literally just let it run for days at a time without issue
    on my particular computer.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFPzw1=3D1ZBBRimj_UfM-HyFOXqMQJMmwaQQPHr0e9mBx21d57A@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div> </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------YhiqDjebfjvM9cJwed4scXMn--

--===============0343946789127336247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0343946789127336247==--
