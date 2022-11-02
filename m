Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D60616F40
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 21:58:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A36B3841E9
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 16:58:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667422734; bh=D+pI5kHMKTKJJwColgUsu2UO4JpR79cmDaVHUaakJoU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TDAI72mvbU+UPOGUM+1eT3o1OKVhBnSnkJKhdmi3bdBSPDMCIzCTSr9c4TSm1YyCL
	 RWKk6jCTNGKKco24RbZ3x8lA/d4Sa6YVVFE+3j0ckCiv59dGj7lF7uMy0ZSOG0Ucto
	 bSV0/OqYCXfM4kdhNW0uA4J20AlbFcOt5k/SbLi3bBdk8WtfzAO9nKrs3bq4vq4mVJ
	 8Sm4ElfVZYUBu57GL1+SZXfKkhWZzuzF3GbFOOvYI9JvY2fG316h8XO+LpSAY4SYQg
	 ga19rbTPB7ndQanUFPNjik782NroGLB7BHa3Tn8tPtxUPLQ9lZIlVQeSZliuCTfWKY
	 vPoqYu64vJyGg==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 1C07B383FBC
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 16:57:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kuNElB7z";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id h21so116201qtu.2
        for <usrp-users@lists.ettus.com>; Wed, 02 Nov 2022 13:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=teGtX1LDvMuKQnwcYKbqkcO6NO763zBfmq31YXp9szw=;
        b=kuNElB7zwXPRt4AVsaZculp6lymTT2XdY1NJff0Ckl86yq4y/SMQnuwxTliDNVHmio
         FfusCiaYYBzJU4cwn0QSIPRhBZ5JgJsos3j4y1ApzOTCIBSVucmAMdK/i920G9U2WviP
         TtGOjvoPngApWKXmoA2l9a2VoEy6/KK6mSLk0HxcO88ZrkXkr439BsEewbxEqkIbZP+T
         N2TIGAPtbbIyR76O21Qz7XD+aDyRIUExHAJodvMcymHrzaHsuB8tbgDIjRviODtHGVnW
         /v7ApeF1N+7SbAiLt8OS2uNZhUTHtejChrdpaMy91jX1SnjsoEBz7mAuI2SMKVXeKSFW
         zRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=teGtX1LDvMuKQnwcYKbqkcO6NO763zBfmq31YXp9szw=;
        b=gFdru1hkdPxjWEdtWiNDqH7pyT/+8K2Ph4tEpr09YnUea4ddH3bnlfyy3nKVU5tI3Y
         xXWF716IKwlWlYJOH5fsJTGAGBVkvIRhMcw16B66k/cQyBZ/vUUN7AdtPh5Hzm8i1Xd4
         QBQmVeGpHdKyovbhpPOsIBqKHQfZt6wmMYyXF9Bz7SSJoFSb//du34r9KLzgHqEuJBoj
         K+kaPdW8HYQFyswIP+WCKFwMRP3ozWD0K7nXxLajM8CBrHq5Z5bU3qAAeccnPJK0yc8q
         ceEYDB5u/VbcnIs/2ubo1n0zd+IXa7C7Gekka2sJXL46SaScwjKOoFlYqZhF9VxtlNYV
         URxg==
X-Gm-Message-State: ACrzQf0Dhrz5jbPBedlVe3BGM+OI4vUJ9z09up2q6bAI7y+9ksOiXTn7
	tQlo8iVu78MqQypK4TLZn/Hs7eY07Sw=
X-Google-Smtp-Source: AMsMyM4QO9ls6zzClScAe9NEzs5iR0abIr7OVPRrB9K3Kn/wak9VjLgHpUewffbSEQ7evpV4FBeE2A==
X-Received: by 2002:ac8:708d:0:b0:3a5:28e7:cb38 with SMTP id y13-20020ac8708d000000b003a528e7cb38mr13044591qto.120.1667422627320;
        Wed, 02 Nov 2022 13:57:07 -0700 (PDT)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id c5-20020ac81105000000b003a494b61e67sm7098578qtj.46.2022.11.02.13.57.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 13:57:07 -0700 (PDT)
Message-ID: <4f147460-c14d-94ce-c0e9-62f3e2b6c465@gmail.com>
Date: Wed, 2 Nov 2022 16:57:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CANsNear2pq3y6SP31Z=Y0Qk=aLhS-4qRqBg1g8W6Lk+0nwM_sw@mail.gmail.com>
 <CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmail.com>
Message-ID-Hash: QGHJJ6LYUILWGUIWTIQYJVISQ4JXP2DB
X-Message-ID-Hash: QGHJJ6LYUILWGUIWTIQYJVISQ4JXP2DB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 GnuRadio upgrade?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QGHJJ6LYUILWGUIWTIQYJVISQ4JXP2DB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2217894231389263062=="

This is a multi-part message in MIME format.
--===============2217894231389263062==
Content-Type: multipart/alternative;
 boundary="------------U9805yIjVhOgVhyCHc0RyTiG"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------U9805yIjVhOgVhyCHc0RyTiG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/11/2022 16:39, Rich Gopstein wrote:
> I tried following the instructions in here:=20
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_R=
FNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source=20
>
> to cross compile GnuRadio on my Ubuntu box, but the cmake failed=20
> because=C2=A0the OE environment was from 2016 and had old library versi=
ons.
>
> I could really use some suggestions on how to get a more modern=20
> GnuRadio (3.9+) on the E310.
>
> Thanks.
> Rich
Something you might try is, with a "modern" UHD on your *HOST*, use:

sudo uhd_images_downloader -t sdimg -t e310

Which will download a matching SD card image to your host that you can=20
then program onto your E310 SD card.

This will definitely be more 'modern' than 2016, but it's unlikely to=20
include a GR that is any newer than GR 3.8 from
 =C2=A0 what I recall...



>
> On Tue, Oct 25, 2022 at 2:32 PM Rich Gopstein <rich@ourowndomain.com>=20
> wrote:
>
>     I'd like to run GR 3.9 or later on the E310.=C2=A0 Is there a
>     documented process to upgrade GR on the E310?
>
>     Thanks.
>     Rich
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------U9805yIjVhOgVhyCHc0RyTiG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/11/2022 16:39, Rich Gopstein
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I tried following the instructions in here:=C2=A0<=
a
href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Buil=
ding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source"
          moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https:=
//kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD=
_/_GNU_Radio_/_gr-ettus_from_Source</a>
        <div>to cross compile GnuRadio on my Ubuntu box, but the cmake
          failed because=C2=A0the OE environment was from 2016 and had ol=
d
          library versions.</div>
        <div><br>
        </div>
        <div>I could really use some suggestions on how to get a more
          modern GnuRadio (3.9+) on the E310.</div>
        <div><br>
          Thanks.</div>
        <div>Rich</div>
      </div>
    </blockquote>
    Something you might try is, with a "modern" UHD on your *HOST*, use:<=
br>
    <br>
    sudo uhd_images_downloader -t sdimg -t e310<br>
    <br>
    Which will download a matching SD card image to your host that you
    can then program onto your E310 SD card.<br>
    <br>
    This will definitely be more 'modern' than 2016, but it's unlikely
    to include a GR that is any newer than GR 3.8 from<br>
    =C2=A0 what I recall...<br>
    <br>
    <br>
    =C2=A0 <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 25, 2022 at 2:3=
2
          PM Rich Gopstein &lt;<a href=3D"mailto:rich@ourowndomain.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">rich=
@ourowndomain.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div>I'd like to run GR 3.9 or later on the E310.=C2=A0 Is th=
ere
              a documented process to upgrade GR on the E310?</div>
            <div><br>
            </div>
            <div>Thanks.</div>
            <div>Rich</div>
            <div><br>
            </div>
          </div>
        </blockquote>
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

--------------U9805yIjVhOgVhyCHc0RyTiG--

--===============2217894231389263062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2217894231389263062==--
