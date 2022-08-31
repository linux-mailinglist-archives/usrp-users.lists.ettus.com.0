Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C815B5A85ED
	for <lists+usrp-users@lfdr.de>; Wed, 31 Aug 2022 20:43:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B90D7385FCB
	for <lists+usrp-users@lfdr.de>; Wed, 31 Aug 2022 14:43:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661971424; bh=p7PYxAMvLrwboXnvYCQNeynipA/2Ws1m/+0qQ5jKFVY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bDNkNowxguuhYBj4sAx/mE3iw/Hir5tOXXmAt1KO75clMadTzemy6AY92Moyw8tvB
	 mk7sE6V59iEpE/+FG/NFqmrqpeFnLygl3tFyns8Y5BRnao4kv5TXkD6F5dBDyuiEww
	 TAAeg/ZbMtTd7yFYUx9BSUCn3pgVZQv6du9ETaBL4lVfYgIXjxudyr2zbbjpxyWrOF
	 TaNuS+5gCZGjqt20ljhgUnGvyeNvatXhjM5bRThOX/S3T6hf9zw3hgsHuhFapV4doK
	 1zw0aKg47ZxHEyYBL29syJsIha+Go9jCkONhD8YIltXhZ/uyof1fMr+OR4kNorSV3f
	 7AlTleYtOsfxw==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id ADB8D385FCB
	for <usrp-users@lists.ettus.com>; Wed, 31 Aug 2022 14:42:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AGIHfpgy";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id b2so11521529qkh.12
        for <usrp-users@lists.ettus.com>; Wed, 31 Aug 2022 11:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=3iqde78dECUDk0nRPfCON7W4oUdOiynDW5eNcmAabcA=;
        b=AGIHfpgyfFjj1pwQEpevVO5AndiW//kL3pGtnk4lwiVGjQ5l1EAW2Mv5flhdlhYWjA
         SQ4nx276VaFjgqMtSoxFLDXp7VOI+7HrjiB0j6LDgU4GP3UNZraedQ1OcpzLDolZhOo5
         3U66PEe5LHd5WaqDvR7a11pXmyGgBpG5W8Wiyrta/50kbeWD7zgxQmCDC1P9WUSBwLpV
         Tl1LkLg+712XjQWkF32WEbirXIYPHURqZ3VmKMyythHRrsDghcNVF8FFP2tgrS2s5i+4
         p2yE43aTRmIHN6sYHB/ym9A7VGbr0+1Lb41ka84rDq5pZlyu1vxJIi2io1sqJXfEfQ5u
         QZ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=3iqde78dECUDk0nRPfCON7W4oUdOiynDW5eNcmAabcA=;
        b=taNH7yN53W91+8a6/nCFFfNehGNR5VcU8Px5gYvtHzy7q2m44pi11fqKrZo7hpIMzr
         cOjX02z8efXy5GoAAWtCRzxXa2+mdX9Ghsaxm/d8Guv2cPRl4SiXADrKKJePtvi6iTuu
         7wCzH5L2VxcTKjqgCbFBST2lVEulLjXJQxEx8n74ryDo7R57yL42uDY22sY8AB4YUJ7A
         niaVr069CLxRiTQOye/LpYKbeNSe6VZ8q2wt0+BhSJ+dDxgcECyBmnKvSHgZY9/gjEb7
         j02bzoBJw9uqv2xW6i8jCPwKvVr2n1TNwatvHA+Pt1hslPCghsZoNA0dAYK27jlhlwlx
         piSg==
X-Gm-Message-State: ACgBeo1YWv/bxC4oyH3r4zpMhLBMiSN1XqhaCJ0ZcREuQ1czIuhsdq78
	6Du1HlP1uQwbgt4ntU4jyJBN8mT68a8=
X-Google-Smtp-Source: AA6agR51QRR4NgZb/Y2dv/Ie/CHEGGuchwYLo3KYpiEhUkfa5iP+42PYRBpTpkOb51D2YWc3yW81CQ==
X-Received: by 2002:a37:755:0:b0:6ba:fcb7:1949 with SMTP id 82-20020a370755000000b006bafcb71949mr16757793qkh.590.1661971372579;
        Wed, 31 Aug 2022 11:42:52 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id e8-20020ac84908000000b0031ef67386a5sm8923109qtq.68.2022.08.31.11.42.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 11:42:52 -0700 (PDT)
Message-ID: <a1b6339b-d333-56a5-178e-f9d99ace7c84@gmail.com>
Date: Wed, 31 Aug 2022 14:42:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PygxlO9i17TMF7QnT6tZymXwuAwd0vxdCQNZ1Q0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PygxlO9i17TMF7QnT6tZymXwuAwd0vxdCQNZ1Q0@lists.ettus.com>
Message-ID-Hash: YUXFKUYYD66GJVWCZZLEBP4SF5EBDPH3
X-Message-ID-Hash: YUXFKUYYD66GJVWCZZLEBP4SF5EBDPH3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: set_command_time() question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YUXFKUYYD66GJVWCZZLEBP4SF5EBDPH3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4737492003057721543=="

This is a multi-part message in MIME format.
--===============4737492003057721543==
Content-Type: multipart/alternative;
 boundary="------------RlNf03NtcIHhchjtv0vmvUYL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RlNf03NtcIHhchjtv0vmvUYL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-08-31 14:34, ri28856@mit.edu wrote:
>
> I found the following lines in the Synchronizing USRP Events app note=20
> <https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in=
_UHD>:
>
>     When commands enter the command queue, their timestamp is compared
>     against the command queue's sense of time and the commands are
>     executed when Queue Time >=3D Command Time. Commands without
>     timestamps are executed immediately when they're at the front of
>     the queue. Command queues in the USRP do not support on-the-fly
>     reordering, meaning a command at the front of the queue will block
>     subsequent commands from executing even if their timestamp has pass=
ed.
>
> How does it work if a command arrives =E2=80=9Clate=E2=80=9D to the USR=
P? For=20
> instance, I set_command_time(t1), then issue a tx_set_freq(), but the=20
> USRP doesn=E2=80=99t get the command until t1 + X, does the tx_set_freq=
=20
> immediately issue, or is it dropped? The language implies it would=20
> immediately issue, which is opposite the behavior of a timed tx/rx=20
> command.
>
> I=E2=80=99ve attached an image of a spectrogram. The x axis is time, y=20
> frequency. I have some code that repeatedly issues tx_set_freq()=20
> between two frequencies on a fixed time interval. In the image, the=20
> fourth slot does not alternate frequency, while the fifth and sixth=20
> slots appear to be a time shifted glimpse of how the fourth and fifth=20
> slots should appear.
>
> Is this likely an instance of the USRP not receiving the scheduled=20
> command fast enough, and immediately issuing several commands upon=20
> getting them?
>
>
I don't think any of the USRPs drop commands that are late, but rather,=20
they get executed immediately.

What is the hardware we're talking about, and what is your cadence?


--------------RlNf03NtcIHhchjtv0vmvUYL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-08-31 14:34, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:PygxlO9i17TMF7QnT6tZymXwuAwd0vxdCQNZ1Q0@lists.ettus.com=
">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I found the following lines in the <a
href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comman=
ds_in_UHD"
          title=3D"" moz-do-not-send=3D"true">Synchronizing USRP Events a=
pp
          note</a>:</p>
      <blockquote>
        <p>When commands enter the command queue, their timestamp is
          compared against the command queue's sense of time and the
          commands are executed when Queue Time &gt;=3D Command Time.
          Commands without timestamps are executed immediately when
          they're at the front of the queue. Command queues in the USRP
          do not support on-the-fly reordering, meaning a command at the
          front of the queue will block subsequent commands from
          executing even if their timestamp has passed.</p>
      </blockquote>
      <p>How does it work if a command arrives =E2=80=9Clate=E2=80=9D to =
the USRP? For
        instance, I set_command_time(t1), then issue a tx_set_freq(),
        but the USRP doesn=E2=80=99t get the command until t1 + X, does t=
he
        tx_set_freq immediately issue, or is it dropped? The language
        implies it would immediately issue, which is opposite the
        behavior of a timed tx/rx command.</p>
      <p>I=E2=80=99ve attached an image of a spectrogram. The x axis is t=
ime, y
        frequency. I have some code that repeatedly issues tx_set_freq()
        between two frequencies on a fixed time interval. In the image,
        the fourth slot does not alternate frequency, while the fifth
        and sixth slots appear to be a time shifted glimpse of how the
        fourth and fifth slots should appear.</p>
      <p>Is this likely an instance of the USRP not receiving the
        scheduled command fast enough, and immediately issuing several
        commands upon getting them?</p>
      <br>
    </blockquote>
    I don't think any of the USRPs drop commands that are late, but
    rather, they get executed immediately.<br>
    <br>
    What is the hardware we're talking about, and what is your cadence?<b=
r>
    <br>
    <br>
  </body>
</html>

--------------RlNf03NtcIHhchjtv0vmvUYL--

--===============4737492003057721543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4737492003057721543==--
