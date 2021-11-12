Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C5444EBF1
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 18:25:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6795384671
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 12:25:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iHhBpF/B";
	dkim-atps=neutral
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id B0A8C384678
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 12:23:09 -0500 (EST)
Received: by mail-qv1-f42.google.com with SMTP id i13so6746687qvm.1
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 09:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=o40UmlL6+Dgmo5HhhU5eDqg0zTp7lUD3e6sVo+tLGVk=;
        b=iHhBpF/By1TCb8hlTRj3saSwe7PDEIr+gUJrs7HkM7vM/zdQ6o7Nfim99ng+MLyIzD
         wnOdSKx93Q5/4cNJ1S7S3GheR/aULJ6e6ZV8bKrDBf4ER+s+Eik2CO2ulEzJdBALVp9t
         Sj+9XQAsJg2wcFdaGbqC7U5zyBvVWif4aJ4x6xTXecbS8tNLvhe0sKY7fnWFSU4HsPbX
         HRQ1c/tguMzm13/aI40Zy13bwZvtKhm5vGx0/DI83WQt9Rfx/fuQyv2kSxwBo+kWP4o+
         FLtvDeLcvw0t/sWxQseUlN+rPczwkv0p18uRRmj6yuPx0pWnyt0BDr/aSOUXDC6LIuBH
         Vrxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=o40UmlL6+Dgmo5HhhU5eDqg0zTp7lUD3e6sVo+tLGVk=;
        b=S48C3S8RkAOZnMyras6EibqqJuM6nzdHRdTx5paseuYNaLN2V3+F/ATbLAVm5DH+80
         kkkMSeVbrbob6u8334+L0Tozkgbut4sStnNedtuJLf3BiuTPsf/SwY/+qw/IfdKxhzBB
         ZNvXxMdg4kAj/hSVPBNr9+5xEemSGjZneYztYO0tKX/EMr9LHs1ZzDPHATiyVC8vdRYI
         dI5CVlAGBYiPcveqMok6rTcm4sIpIMx/6VRMwNMXOjtf3JmwYCsznWjQfav8w4kVbhlB
         nt71/RXhf2H2dQkknqSbxsgNkmCi6cLHOJZWwS57y6JA7karkkCXS8QD0u0Db0+FEQuB
         PAyA==
X-Gm-Message-State: AOAM533BoGYWvR7jzJ0sOqY1qNZU/Xf89Po94pYt+DtgdZ43ByJ+y7Zd
	bmG5EGhmPRvJaf0/JJr30NAbBnuUNUk=
X-Google-Smtp-Source: ABdhPJyf2DBxPJfKxcQQV7x5ThQlVUDWTraS6Yns7RZijeNKQWhZFxb8EIAtPvserK7yTbb4PWM3xg==
X-Received: by 2002:ad4:5f0d:: with SMTP id fo13mr16827464qvb.10.1636737789216;
        Fri, 12 Nov 2021 09:23:09 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id m68sm2940184qkb.105.2021.11.12.09.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 09:23:08 -0800 (PST)
Message-ID: <68dfeaf8-8a74-4902-a939-b9f79640b230@gmail.com>
Date: Fri, 12 Nov 2021 12:23:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
 <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com>
 <CAB__hTRnY_xhn8g3=gnrSdy2pQTbdQRCB12xTHuVrXku=tXMTw@mail.gmail.com>
 <d3ab3578-ab06-ad4b-e7e3-0bd70e278b8a@gmail.com>
 <CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=iqF2XDSq__w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=iqF2XDSq__w@mail.gmail.com>
Message-ID-Hash: JSU2CDQ6JUJVBB43FHHJHBLLE7IBH6W2
X-Message-ID-Hash: JSU2CDQ6JUJVBB43FHHJHBLLE7IBH6W2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JSU2CDQ6JUJVBB43FHHJHBLLE7IBH6W2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9060208347585546419=="

This is a multi-part message in MIME format.
--===============9060208347585546419==
Content-Type: multipart/alternative;
 boundary="------------C90a03LkFZA38ObNnhVPpPgS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C90a03LkFZA38ObNnhVPpPgS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-12 12:19, Rob Kossler wrote:
> Yes, I had included the "hwclock" output in the original email of this=20
> chain.=C2=A0 It can't find a hw clock.
Ah, sorry.=C2=A0=C2=A0 I missed that.

So, for whatever reason, the DS-1307 driver has been excluded from the=20
kernel image, OR there's a hardware problem--check dmesg to see if it
 =C2=A0 makes any comments about the ds-1307 driver being loaded, etc.

But as I indicated, I don't think the DS-1339 RTC chip has a back-up=20
battery of any kind.=C2=A0 So, there may have been a conscious decision t=
o remove
 =C2=A0 the driver for it.=C2=A0 I'm still waiting to hear from R&D.


>
> On Fri, Nov 12, 2021 at 12:17 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2021-11-12 11:54, Rob Kossler wrote:
>>
>>
>>         So, there's a DS1139 RTC chip, which is an garden-variety RTC
>>         chip used in designs all over the place.=C2=A0 The linux rtc-1=
307
>>         kernel driver knows about this chip.
>>
>>         HOWEVER, it requires a battery to maintain time, and near as
>>         I can tell, the only battery in the E310 universe is with the
>>         E312 "UPS" battery.=C2=A0 I don't see any evidence
>>         =C2=A0 that there's a separate, small, back-up battery for the=
 RTC
>>         in the plain E310.
>>
>>
>>     I wonder how my system comes up Aug 6, 2021? Could this be the
>>     date of the file system image? Perhaps I can modify this.
>     It was certainly the case in the "days of yore" that the timestamp
>     on the root filesystem, in lieu of other inputs, was used as the
>     initial time-of-day clock setting.
>
>     Also, look at the "hwclock" utility, if there IS a hardware clock
>     in your system config, it will allow you to manipulate it.
>
>

--------------C90a03LkFZA38ObNnhVPpPgS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-12 12:19, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=3DiqF2XDSq__w@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Yes, I had included the "hwclock" output in the
        original email of this chain.=C2=A0 It can't find a hw clock.</di=
v>
    </blockquote>
    Ah, sorry.=C2=A0=C2=A0 I missed that.<br>
    <br>
    So, for whatever reason, the DS-1307 driver has been excluded from
    the kernel image, OR there's a hardware problem--check dmesg to see
    if it<br>
    =C2=A0 makes any comments about the ds-1307 driver being loaded, etc.=
<br>
    <br>
    But as I indicated, I don't think the DS-1339 RTC chip has a back-up
    battery of any kind.=C2=A0 So, there may have been a conscious decisi=
on
    to remove<br>
    =C2=A0 the driver for it.=C2=A0 I'm still waiting to hear from R&amp;=
D.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=3DiqF2XDSq__w@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 12, 2021 at 12:=
17
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-11-12 11:54, Rob Kossler wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_quote">
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div><br>
                      So, there's a DS1139 RTC chip, which is an
                      garden-variety RTC chip used in designs all over
                      the place.=C2=A0 The linux rtc-1307 kernel driver k=
nows
                      about this chip.<br>
                      <br>
                      HOWEVER, it requires a battery to maintain time,
                      and near as I can tell, the only battery in the
                      E310 universe is with the E312 "UPS" battery.=C2=A0=
 I
                      don't see any evidence<br>
                      =C2=A0 that there's a separate, small, back-up batt=
ery
                      for the RTC in the plain E310.<br>
                    </div>
                  </blockquote>
                  <div><br>
                  </div>
                  <div>I wonder how my system comes up Aug 6, 2021?=C2=A0
                    Could this be the date of the file system image?=C2=A0
                    Perhaps I can modify this.=C2=A0</div>
                </div>
              </div>
            </blockquote>
            It was certainly the case in the "days of yore" that the
            timestamp on the root filesystem, in lieu of other inputs,
            was used as the initial time-of-day clock setting.<br>
            <br>
            Also, look at the "hwclock" utility, if there IS a hardware
            clock in your system config, it will allow you to manipulate
            it.=C2=A0 <br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------C90a03LkFZA38ObNnhVPpPgS--

--===============9060208347585546419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9060208347585546419==--
