Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D654B15B9
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 20:03:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC48E383BD5
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 14:03:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D2mQGjOn";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 85E2C384DBA
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 14:02:15 -0500 (EST)
Received: by mail-qt1-f171.google.com with SMTP id l14so6357170qtp.7
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 11:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=61juAu3u1kquJwhNhh0Q8SqEmT03Om8qBSpoymsRWZs=;
        b=D2mQGjOnTPIQHJgEgd3ytK28WwOSxLO9gXJ7oiptrJSdKq4u0yz1QZs+UtW6/hBaxe
         +0pUdYyX04U3h90XHiyiuuE10exavdB/BB1DS9AVKIOOQFliQwx3A7Dw2JDzC16hiu1g
         fhUBJT0z/V9QqDr9e3gztLnXl0K7uSkke0tWmt7i8iKHnXNCob9QMNkgYSv9iShsNwee
         2wk9RcNMNVp/Mav4KKwQBsPvDVWK7npGV0HTLMAEN/33Ggv3a3RTfiXbemewT/mWlYB8
         v/esYegN6unihudIaErNxDvaueAAgDrtJ3B9EGwcFzRrNjVTYzhRompX8hXDXpJSiNdO
         bOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=61juAu3u1kquJwhNhh0Q8SqEmT03Om8qBSpoymsRWZs=;
        b=nMsbqPsPmHYMdKaXqrSqWRoSpjpAlnDYHWGBtBCJ+7tRIYAhtiLC4B4P0wjRqhHksn
         TRPgquKfVlKJ5D9SxZSJu4bSexorjLhdHLmw0yr5tpyD+9FoDjNiPDUDBbyJ0xnLIedD
         MAeg2Bl8LJAXtmuVOkM0D8+SPR3h++nm9SXeFE+pI7N4qDOGyONwxqoP5Hwcoms7ZTtT
         JF2oIRUsIDS88+tkoQf+lP0Uyr1W4h5s1IsErWhCyfg3/97Kdwvx8WZIfz/exawoyMUR
         dBFNWf5/to74o3R/oNPCB/D8RpXfd9Vrht+tMq6j7cXVTjr46SGHwgabh9fa/uc8GXwX
         0dRA==
X-Gm-Message-State: AOAM5326ICc/8TLtyJAh/78HnqBXCBqZxHlMAq+hB+pXq1ZcjS3ROT6G
	0USe4Jwwqp2ppeyJPOpJH6h4BDCvLY6epg==
X-Google-Smtp-Source: ABdhPJzLn9fi7G2js0vyXxFV4J55gtW7sQR//PwL2jSbkVnjzvjCJrLN0XGoSDKz31JvlkM1HKMLIQ==
X-Received: by 2002:a05:622a:14d4:: with SMTP id u20mr5990246qtx.262.1644519734709;
        Thu, 10 Feb 2022 11:02:14 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v19sm10766125qkp.131.2022.02.10.11.02.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 11:02:14 -0800 (PST)
Message-ID: <126d3f8d-2fe1-8458-e625-f68e3240dfb0@gmail.com>
Date: Thu, 10 Feb 2022 14:02:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PH1P110MB16651422693C8BB28D0320E7B72F9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH1P110MB16651422693C8BB28D0320E7B72F9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: E3DD33DVFNZ7PYIIXKU2HLW65234QBDX
X-Message-ID-Hash: E3DD33DVFNZ7PYIIXKU2HLW65234QBDX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1.0.5 breaks support for DPDK on 10GbE links
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E3DD33DVFNZ7PYIIXKU2HLW65234QBDX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4098918033988014750=="

This is a multi-part message in MIME format.
--===============4098918033988014750==
Content-Type: multipart/alternative;
 boundary="------------UsabNM8rYjDjVmlSObp2NUWq"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------UsabNM8rYjDjVmlSObp2NUWq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-09 21:17, David Raeman wrote:
>
> Hi all,
>
> I just updated 4.1.0.1 --> 4.1.0.5, and unfortunately DPDK support was=20
> broken by commit a629ce3a46. Here's a quick trace of the problem:
>
> (1) The commit increased MPMD_10GE_DATA_FRAME_MAX_SIZE from 7972 to 801=
6.
>
> (2) In mpmd_link_if_ctrl_udp.cpp, this constant is passed as the max=20
> frame size to discover_mtu(), which then tries to send a 8016-byte=20
> buffer via dpdk_simple::send.
>
> (3) dpdk_simple::send asserts if provided a buffer size >8000. This is=20
> because its constructor always makes a udp_dpdk_link object with=20
> default link parameters, which hard-codes send_frame_size and=20
> recv_frame_size to be to 8000 (toward the bottom of dpdk_simple.cpp).
>
> Unfortunately, the behavior cannot be circumvented using args. A quick=20
> fix might be to increase the hard-coded link params in dpdk_simple,=20
> but I noted that a value of 8000 is also hard-coded in a couple other=20
> places (e.g. DEFAULT_FRAME_SIZE in dpdk_common.cpp).=C2=A0 In the meant=
ime,=20
> my temporary solution is to locally revert commit a629ce3a46 until it=20
> can be confirmed with DPDK with 10GbE.
>
> Cheers,
>
> --=20
>
> David Raeman
>
> Synoptic Engineering
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
David:

Thanks very much for your diligence on this.=C2=A0 I'll be passing this=20
information along to Ettus/NI developers.

I see that you've already posted an issue in the public UHD=20
bug-tracker.=C2=A0 Thanks.


--------------UsabNM8rYjDjVmlSObp2NUWq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-09 21:17, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB16651422693C8BB28D0320E7B72F9@PH1P110MB1665.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I just updated 4.1.0.1 --&gt; 4.1.0.5, and
          unfortunately DPDK support was broken by commit a629ce3a46.
          Here's a quick trace of the problem:<o:p></o:p></p>
        <p class=3D"MsoNormal">(1) The commit increased
          MPMD_10GE_DATA_FRAME_MAX_SIZE from 7972 to 8016.<o:p></o:p></p>
        <p class=3D"MsoNormal">(2) In mpmd_link_if_ctrl_udp.cpp, this
          constant is passed as the max frame size to discover_mtu(),
          which then tries to send a 8016-byte buffer via
          dpdk_simple::send.<o:p></o:p></p>
        <p class=3D"MsoNormal">(3) dpdk_simple::send asserts if provided =
a
          buffer size &gt;8000. This is because its constructor always
          makes a udp_dpdk_link object with default link parameters,
          which hard-codes send_frame_size and recv_frame_size to be to
          8000 (toward the bottom of dpdk_simple.cpp).<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Unfortunately, the behavior cannot be
          circumvented using args. A quick fix might be to increase the
          hard-coded link params in dpdk_simple, but I noted that a
          value of 8000 is also hard-coded in a couple other places
          (e.g. DEFAULT_FRAME_SIZE in dpdk_common.cpp).=C2=A0 In the
          meantime, my temporary solution is to locally revert commit
          a629ce3a46 until it can be confirmed with DPDK with 10GbE.<o:p>=
</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Cheers,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">-- <o:p></o:p></p>
        <p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
        <p class=3D"MsoNormal">Synoptic Engineering<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
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
    David:<br>
    <br>
    Thanks very much for your diligence on this.=C2=A0 I'll be passing th=
is
    information along to Ettus/NI developers.<br>
    <br>
    I see that you've already posted an issue in the public UHD
    bug-tracker.=C2=A0 Thanks.<br>
    <br>
    <br>
  </body>
</html>

--------------UsabNM8rYjDjVmlSObp2NUWq--

--===============4098918033988014750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4098918033988014750==--
