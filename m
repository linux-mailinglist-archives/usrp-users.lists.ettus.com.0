Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D654A7581E7
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 18:17:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CC13C384B9C
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 12:17:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689697037; bh=Esh/jlrJsTTQkO2R7KOW1wNxBiMbI0fCylQ1UntAL1I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ocjMee6qsRZ6bOLUNpH+bTQQd3hN4uoU2IQHSrRfpd7SUhbALNthyqpFc+b1WAn0n
	 BDA0g1FqM5TW+XCkbcOr+/MmwmpaeKen/Zo+GafI+D3KzSDi5cpyrgem+DBpaK5QVj
	 LbSXqa7kgx/8ei7kyXfus+le7H9Nw6occe6qImfqm6IhCXuz6g/m81VkKJPVkEVnDV
	 ww1sekRyWGxduzXEutvV1oazxmpOni7GJdC4vi5f0VZG1hqOxrqp0kcFTStAnvi6ML
	 ISyBi3I8pgCd6Wu3dXn53vYaC8rwMvcMyn7Jcepw8PVwZ8CZr5+iyXl1jTXpX+4Gsd
	 wt6S4MPqtz7rA==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F6A8380E3E
	for <usrp-users@lists.ettus.com>; Tue, 18 Jul 2023 12:16:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JrFqU0RA";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-40388dc19ecso31467001cf.1
        for <usrp-users@lists.ettus.com>; Tue, 18 Jul 2023 09:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689696998; x=1692288998;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jcA8Z7qwyzLax9yBF0LjoidOzSK4yn6YzGzMOlznV0E=;
        b=JrFqU0RASPmhwacSblx18DJBOycZpLyVNGKM7pZlnI4sPJDr1/sIw+uZQTV/42/ged
         7VSf5L0++xnokfZWQYIb4z/Kt+RbBlkvY+ajckh7XbauUl/YZ8sIaUtTKDWWEyvIYGBX
         x9bLyBDd0qlp70A4LhhTvWOISlJQRS0XirmWjTB1lmkY+J95CURtfY/xkWD5Pzbm/Uw8
         iQlDx/pEeDUgAfat1oYj6pJPTX12sm+qVuRrwH+eArV0wmED4ujitB/yxU8AOJ45IEXT
         LUvcP0mxK6jIg3rOynENDTKHBwi+FVa1emkfbmCVTeL9ytibttvEUxo3zGZsJ6j1UIx6
         OoOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689696998; x=1692288998;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jcA8Z7qwyzLax9yBF0LjoidOzSK4yn6YzGzMOlznV0E=;
        b=S8VFhB2oG/Q1qegZacosV3dWCkWHoVuRp3XrHrpUOyJnJ728Y9GnF+vzzeN5yP8ZAk
         9pleNrlcvLUsdRCVm8UWOezmjEyGlipwIPXg6fK1wSPnnQ2y6JddLt63c4Uvn5nBjqtG
         QsD42nRw0vuEypMvTRGtOo4rAtbAmQSa7PjxGOCNItvS9VLwUF361HvGmmczTdS0AECL
         rRx7HYPU/fqYFbNmRxaNwK036pB8Sbbb5A9fqrQXqGViCgyTSil+9pm8qdBafOCB6yJw
         TBGAleAb8KeII/9GVceBvbRwmfpolZ3JxrzGyfMbUONprV1r8/zpJpLzuPqAjnGAGaF8
         x9BQ==
X-Gm-Message-State: ABy/qLaUhlI/9X1+EG/lenoq7aqe8CnplL1ihLQMvBr66Ytj+BObtlTY
	VknFGp9BfEJVIQHG86cFo9DdDW+kQc0=
X-Google-Smtp-Source: APBJJlGSKPwnwlz+j0YeN0H+OSTIHI1+fYR1Gn1+4VGqQ+D4aBcEyzM67Zy83Qu1xntEb5PM/uj5RQ==
X-Received: by 2002:a05:6214:2128:b0:637:b20d:899d with SMTP id r8-20020a056214212800b00637b20d899dmr19270356qvc.10.1689696998615;
        Tue, 18 Jul 2023 09:16:38 -0700 (PDT)
Received: from [192.168.2.175] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id x12-20020a0ce0cc000000b00635e68d3170sm836530qvk.31.2023.07.18.09.16.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jul 2023 09:16:38 -0700 (PDT)
Message-ID: <eca156f5-d124-73bd-e47c-a5abed3b5fba@gmail.com>
Date: Tue, 18 Jul 2023 12:16:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SEmnvxMEwL7PCTVzaysnK32Ei2RVS1c27JRTtR5E@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SEmnvxMEwL7PCTVzaysnK32Ei2RVS1c27JRTtR5E@lists.ettus.com>
Message-ID-Hash: EDZGUKUF4CRGPUABHBEWN4EV3E657E6S
X-Message-ID-Hash: EDZGUKUF4CRGPUABHBEWN4EV3E657E6S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: num_recv_frames
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EDZGUKUF4CRGPUABHBEWN4EV3E657E6S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2993263856474642372=="

This is a multi-part message in MIME format.
--===============2993263856474642372==
Content-Type: multipart/alternative;
 boundary="------------P6S4KmFpACqQIfYeem3Ro50k"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------P6S4KmFpACqQIfYeem3Ro50k
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/07/2023 12:02, david.fernandes@viveris.fr wrote:
>
> Hi everyone,
>
> I am trying to understand how the system performs the samples=20
> buffering, especially in the Rx side. When you say =E2=80=9Call the buf=
fering=20
> is done by the socket buffers=E2=80=9D you are talking about he *host=E2=
=80=99s* UDP=20
> socket, right ? The =E2=80=9Csocket I/O=E2=80=9D that you are talking a=
bout is in the=20
> USRP side ? When you say =E2=80=9Cthe socket I/O is synchronous=E2=80=9D=
, does it mean=20
> that there is no buffering at all in the FPGA and all the samples of=20
> the USRP are constantly being pushed to the host even when I am not=20
> calling the =E2=80=9Crecv=E2=80=9D function ?
>
> I=E2=80=99m sorry of those are questions with obvious answers. I=E2=80=99=
m asking this=20
> because I performed some tests similar to those performed by Rob : I=20
> call recv(), I sleep some time and call recv() again. I saw that even=20
> when I sleep several minutes with a sample rate of 4Msps i still have=20
> no buffer overflow.
>
> Thank you very much for your support.
>
> David Fernandes
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I can't help with design *detail*.=C2=A0 But, yes there's *some* bufferin=
g in=20
the radio, and sample flow is completely asynchronous to
 =C2=A0=C2=A0 your recv() calls.=C2=A0 The library sets up a streamer, an=
d the radio=20
streams samples, that your host environment is hopefully fast
 =C2=A0=C2=A0 enough to "keep up" with.=C2=A0 There is also a flow-contro=
l scheme (at=20
least on network-based radios), and samples may get dropped
 =C2=A0=C2=A0 within the radio when the flow-control decides that things =
are=20
filling up.


--------------P6S4KmFpACqQIfYeem3Ro50k
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/07/2023 12:02,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:david.fernande=
s@viveris.fr">david.fernandes@viveris.fr</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:SEmnvxMEwL7PCTVzaysnK32Ei2RVS1c27JRTtR5E@lists.ettus.co=
m">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi everyone,</p>
      <p>I am trying to understand how the system performs the samples
        buffering, especially in the Rx side. When you say =E2=80=9Call t=
he
        buffering is done by the socket buffers=E2=80=9D you are talking =
about
        he <strong>host=E2=80=99s</strong> UDP socket, right ? The =E2=80=
=9Csocket I/O=E2=80=9D
        that you are talking about is in the USRP side ? When you say
        =E2=80=9Cthe socket I/O is synchronous=E2=80=9D, does it mean tha=
t there is no
        buffering at all in the FPGA and all the samples of the USRP are
        constantly being pushed to the host even when I am not calling
        the =E2=80=9Crecv=E2=80=9D function ? </p>
      <p>I=E2=80=99m sorry of those are questions with obvious answers. I=
=E2=80=99m
        asking this because I performed some tests similar to those
        performed by Rob : I call recv(), I sleep some time and call
        recv() again. I saw that even when I sleep several minutes with
        a sample rate of 4Msps i still have no buffer overflow.</p>
      <p>Thank you very much for your support.</p>
      <p>David Fernandes</p>
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
    I can't help with design *detail*.=C2=A0 But, yes there's *some*
    buffering in the radio, and sample flow is completely asynchronous
    to<br>
    =C2=A0=C2=A0 your recv() calls.=C2=A0 The library sets up a streamer,=
 and the radio
    streams samples, that your host environment is hopefully fast<br>
    =C2=A0=C2=A0 enough to "keep up" with.=C2=A0 There is also a flow-con=
trol scheme
    (at least on network-based radios), and samples may get dropped<br>
    =C2=A0=C2=A0 within the radio when the flow-control decides that thin=
gs are
    filling up.<br>
    <br>
    <br>
  </body>
</html>

--------------P6S4KmFpACqQIfYeem3Ro50k--

--===============2993263856474642372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2993263856474642372==--
