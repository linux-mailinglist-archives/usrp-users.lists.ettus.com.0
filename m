Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D22F472FFC
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 16:03:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88AFA385300
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 10:03:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jWL5FBeh";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id B7053383E14
	for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 09:54:10 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id x32so38844688ybi.12
        for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 06:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9q583UBN2LMBF9tr89JAVoErigNHOwcJG9ZgdNCD9M4=;
        b=jWL5FBehmmlcu9Vao/aJCeV2i0gCFUNpPRnt+n4KgJ+F0LHQjlS5fMyVppZ2qD+oF0
         0p073GllT/Ru7PVpvi+XYGWIRSkDOTB96BVLk555QoLAEy/Kw3IaJiPyw+u3zNG7VArR
         S7cU9fJDYWNJi1SI6pgRlAScuMVo5pnng5Lfa+OjkNpl8G7IwApQrjuhZMo5iYCsRb/7
         JxILj6jMbTOAZzVFXlC9tL5tf6eARvcoIDgMTxcvELd4f70Ih/t/PIcZFaBxQZ3Tfrge
         Gv7rIoxA5f00lecwaZA2XT5KrjoWcpURhv0O8Bgcnjfh/tSiEWi70frrK7EQZUykuMnp
         wrwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9q583UBN2LMBF9tr89JAVoErigNHOwcJG9ZgdNCD9M4=;
        b=IkubzBNAN9oBZFHnlMAfSVmlSSa8Y+FwtS9q26uIGQ65EyXfkpRebiqdyrF/nis2Rk
         hz++IMkqCiFLWHCMCS0dp05dUZKzO8e3d3kx4CINdsV828aIkHVKRRn6TDm3Vfwh7vip
         Dm2j8/s9lkJlC2U/WmB/s3M9YSX/C4crH2N63/nqQCL7FqhJNJM8gmSU6PisdcH73PMA
         0oCupuB+71dw+i+M1UdF4buSTjxfw+gpMBRIdN8K7K4Tc4uQwposdyKEidY9Sczns+7p
         D1mWw1LJjhc+i/A43GK4d9VAPfDP45AU96eztBvBp7fY0McH2Va4CyuY8yDb3+LSv2ti
         XpFg==
X-Gm-Message-State: AOAM531fL0xKlaFcgM1E/14M2BOhasyhJYBXTXa0ff5GbDu3Sfe7TF/y
	XId6bzZZZT15ZptmJ08I/nswsfxRhnqCZ6LXbhE=
X-Google-Smtp-Source: ABdhPJw5CmfyTHJyIikVxHUTYBOEYt7pSgVLdEpnkle7DqJtajjIzKreNFYhB26pOARc0qUW7R+FAALiU9c6Xh8mOWU=
X-Received: by 2002:a25:7791:: with SMTP id s139mr33392149ybc.699.1639407249951;
 Mon, 13 Dec 2021 06:54:09 -0800 (PST)
MIME-Version: 1.0
References: <CAL0m=NZY2QvKHiiokbgR=2Xgj8YL+onxWJGmyEr3sVXar=z6cw@mail.gmail.com>
 <32a71ff5-f1e4-0a87-7f4f-91fd25100336@gmail.com>
In-Reply-To: <32a71ff5-f1e4-0a87-7f4f-91fd25100336@gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Mon, 13 Dec 2021 09:53:59 -0500
Message-ID: <CAL0m=Navs8QQfb==EvoqCYcRcvFC43Vv2VTDW3iZask0K=sT3Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: LEDROYC5KAPXLIU6NIKCIA24RMKUKIQX
X-Message-ID-Hash: LEDROYC5KAPXLIU6NIKCIA24RMKUKIQX
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 - unexpected DC offset and harmonics
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LEDROYC5KAPXLIU6NIKCIA24RMKUKIQX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7138544271659034941=="

--===============7138544271659034941==
Content-Type: multipart/alternative; boundary="000000000000c68ce205d3083e9e"

--000000000000c68ce205d3083e9e
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

I constantly observed the DC offset and harmonic peaks yesterday. But they
simply disappeared today. I am pretty sure I did not make any changes on
hardware or software. One possibility is that they were caused by a long
time use or the temperature change (room temperature < 25C).

I will report here if I can reproduce the problem. Thanks anyway!

Huacheng



On Sun, Dec 12, 2021 at 2:24 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-12-12 11:57, Zeng, Huacheng wrote:
>
> Hello,
>
> I am using N310 to observe its received signal in its four channels. I
> observed some unexpected DC offset and harmonics as shown in the attached
> figure. It happened only at channels RF0 & RF2; the signal from channels
> RF1 & RF3 looks normal. I disconnected the antennas but the DC and
> harmonics are still there. And they would not change if I change the center
> frequency, sampling rate, or RF gain.
>
> The GNU RADIO and UHD versions are below:
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_3.15.0.HEAD-0-gaea0e2de
>
> I also attached my python script code in case it would be useful for you
> to identify the problem.
>
> Any suggestions? Thank you  in advance!
>
> Hua
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Also, could you try explicitly specifying a subdev-spec of:
>
> "A:0 A:1 B:0 B:1"
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c68ce205d3083e9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>I constantly observed the DC=
 offset and harmonic peaks yesterday. But they simply disappeared today. I =
am pretty sure I did not make any changes on hardware or software. One poss=
ibility is that they were caused by a long time use or the temperature chan=
ge (room temperature &lt; 25C).=C2=A0</div><div><br></div><div>I will repor=
t here if I can reproduce the problem. Thanks anyway!</div><div><br></div><=
div>Huacheng</div><div><br></div><div><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Dec 12, 2021 at 2:2=
4 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvo=
nbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-12-12 11:57, Zeng, Huacheng
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hello,</div>
        <div><br>
        </div>
        <div>I am using N310 to observe its received signal in its four
          channels. I observed some unexpected DC offset and harmonics
          as shown in the attached figure. It happened only at channels
          RF0 &amp; RF2; the signal from channels RF1 &amp; RF3 looks
          normal. I disconnected the antennas but the DC and harmonics
          are still there. And they would not change if I change the
          center frequency, sampling rate, or RF gain. <br>
        </div>
        <div><br>
        </div>
        <div>The GNU RADIO and UHD versions are below:</div>
        <div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
          UHD_3.15.0.HEAD-0-gaea0e2de</div>
        <div><br>
        </div>
        <div>I also attached my python script code in case it would be
          useful for you to identify the problem.<br>
        </div>
        <div><br>
        </div>
        <div>Any suggestions? Thank you=C2=A0 in advance!</div>
        <div><br>
        </div>
        <div>Hua<br>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Also, could you try explicitly specifying a subdev-spec of:<br>
    <br>
    &quot;A:0 A:1 B:0 B:1&quot;<br>
    <br>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c68ce205d3083e9e--

--===============7138544271659034941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7138544271659034941==--
