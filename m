Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7557452378F
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 17:40:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 66326380EA7
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 11:40:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652283639; bh=RVHcWFUCSfm3dA3mV8Zqj724JsZFFPpLpaG628eL9a0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BD7dDqc++jV4K4zGxZmLJbQbrIrRLz2+vxDdHkhGKoECLCcYEcHHYJ9CfCSl1vYlW
	 4lXurqsRGP1tWFtnjvIGxqSU5wOqNVKjoCRY/8AejZavMxkUDFzwjMnfBjnBza+/ei
	 67RfOlvBzMKBhSUzt/g3TCigByMnyHMaqMAebQv3ULX6uBn6NFNoyqiFwNlzCwQCX6
	 sV5mw00v00FxOm6B3xfYtIYsMiPnWrK8FuYOIoQwMBnX5TbJ06+2K7nZu9rismmwJP
	 ZBJVbBSaesXfWIEvfXUXMT6OkD49AJa9KZr6F0RyFvI5poqdWu6MnYpB4fqqYWsLS4
	 uMDGFF9a6Pq1w==
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CF6538423E
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 11:39:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="GWOFuXER";
	dkim-atps=neutral
Received: by mail-yb1-f172.google.com with SMTP id v59so4709492ybi.12
        for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 08:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hj/MSwamLY//umkEH0cKzEyHpRF2eB77Hf2ZBDMj81E=;
        b=GWOFuXERI/hlxLf7nQkgbek5cYZguhl4XbE4Dd7fvIQHkFxTGn+pHAzuP+mFnjxQ3u
         MNGwEfHFAd7pcYZPPKHs3dcIjVeU++LKdpNQMb7jXYlIp2acbgidBzwV3SpzVZ49oQVQ
         2a7kcIZ+wpPSdme/P3gwzKLK5u1YzMMUf2SXmgqsa0Wsq9ghHLa6xXJ2f6P3tZc89fNI
         L4AOYHxXGtLTY9+pPA3j+CLHUEIqoooQZbt+mVpg7SRKT16etHHPP3nYWlqHza4FtY4/
         GDD/9NRfEAE6Sp5gsPcR2Z+A6KDiLtQd+Joo/uuprp5UrNPlvv7kb2SCLxGPbzu95zZQ
         RabA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hj/MSwamLY//umkEH0cKzEyHpRF2eB77Hf2ZBDMj81E=;
        b=eptpnAT1I1wZH5c9fcO8LGTOpY5I8SCrY5M0sXTma+2NNnnhH36zIdVPx52t/utj/n
         ipZ9W2xfzTZyU6mgufUXH8E542zl6Z4Z2spkWPztuDcdGwbL842oXSJyPZ03QMfczcay
         7i135qLQFRNzOB8X6mx23v/oF98s9HpHNivsVRFjqEreB7xlx7+/ZNUV8VOhkoO55DfA
         hq8ehAliZrj15aCI6xO02o9Umok30gDlG9xd707oCTVPPbc2cA1NJydpWeAisxeI2Fv1
         wSmzNTbyNPUrI1kesTz9ocGQS3cfnmRDXgM103/4HaXdKYT/2/xBGe8iEGnDMHZ/qk+f
         UNfA==
X-Gm-Message-State: AOAM530S2uByc3g1njUr3S8iGs5zBMYGxpITbAdY+swEfB1vL+UDZovR
	1/L7cSh5HRYOKb53QWkT2xcVXuBlpcmZLcWjmanXCIlnhmX2X2V9
X-Google-Smtp-Source: ABdhPJzvMrGyxkmLA98p1tmTzGyBaWzEZvHVoT7C0sXAS85AYD6jQXupS3mPOyoWRUO31nXKAI0S7McQ6H2pTGBy4DM=
X-Received: by 2002:a25:d50f:0:b0:64a:784b:960 with SMTP id
 r15-20020a25d50f000000b0064a784b0960mr22972741ybe.318.1652283578560; Wed, 11
 May 2022 08:39:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtnO2+d7Xb6m-3QEQ100s60xk7Vri5yp5t7tBjXmdUttQ@mail.gmail.com>
In-Reply-To: <CAA=S3PtnO2+d7Xb6m-3QEQ100s60xk7Vri5yp5t7tBjXmdUttQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 11 May 2022 10:39:23 -0500
Message-ID: <CAFche=gRAEYe1jVAuQRe4RuWu2R-Kgum16UnfSDGLM19Hii6mQ@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: O7UE3L5FIS4YCW2IEZVR4S2VYCXJWN2Q
X-Message-ID-Hash: O7UE3L5FIS4YCW2IEZVR4S2VYCXJWN2Q
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ValueError: Bad CHDR header or invalid packet length
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O7UE3L5FIS4YCW2IEZVR4S2VYCXJWN2Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3968876970244452166=="

--===============3968876970244452166==
Content-Type: multipart/alternative; boundary="000000000000c4c5fd05debe3fae"

--000000000000c4c5fd05debe3fae
Content-Type: text/plain; charset="UTF-8"

Hi sp,

The critical warning you mention means that the clock constraints created a
new clock constraint that replaces another one. I think this is expected
and is not related to your code.

The ValueError means it received a packet with a bad header or a bad length
field in the header. Most likely, the length field in the header doesn't'
match the length of the packet. This probably means your block created a
malformed packet.

Wade

On Tue, May 10, 2022 at 2:03 AM sp h <stackprogramer@gmail.com> wrote:

> I developed an RFNOC block for USRP x300, When I want to test it in
> Gnuradio, the block does not work and I am faced with the below errors ...
> How can solve my problem? I  mention that it has a critical warning in
> synthesis ...This warning is below link:
> https://lists.ettus.com/empathy/thread/7HN6JMAO2SWWRUNE2YK7URWXUVMURP3Z
>
>
> [ERROR] [STREAMER] The receive transport caught a value exception.
> ValueError: Bad CHDR header or invalid packet length.
> gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error
> ERROR_CODE_BAD_PACKET (Code: 0xf)
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c4c5fd05debe3fae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi sp,</div><div><br></div><div>The critical warning =
you mention means that the clock constraints created a new clock constraint=
 that replaces another one. I think this is expected and is not related to =
your code.</div><div><br></div><div>The ValueError means it received a pack=
et with a bad header or a bad length field in the header. Most likely, the =
length field in the header doesn&#39;t&#39; match the length of the packet.=
=20
This probably means your block created a malformed packet.=20

</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 10, 2022 at 2:03 AM sp =
h &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>I developed an RFNOC block for USRP x300, When I want =
to test it in Gnuradio, the=C2=A0block does not work and I am faced with th=
e below errors ...</div><div>How can solve my problem? I=C2=A0 mention that=
 it has a critical warning in synthesis ...This warning is below link:</div=
><div><a href=3D"https://lists.ettus.com/empathy/thread/7HN6JMAO2SWWRUNE2YK=
7URWXUVMURP3Z" target=3D"_blank">https://lists.ettus.com/empathy/thread/7HN=
6JMAO2SWWRUNE2YK7URWXUVMURP3Z</a><br></div><div><br></div><div><br></div>[E=
RROR] [STREAMER] The receive transport caught a value exception.<br>ValueEr=
ror: Bad CHDR header or invalid packet length.<br>gr::log :WARN: rfnoc_rx_s=
treamer0 - RFNoC Streamer block received error ERROR_CODE_BAD_PACKET (Code:=
 0xf)<br></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c4c5fd05debe3fae--

--===============3968876970244452166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3968876970244452166==--
