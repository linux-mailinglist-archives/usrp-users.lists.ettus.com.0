Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CBF396953
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 23:36:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9ECE3840B7
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 17:36:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FupzK3PN";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id A326D384055
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 17:35:48 -0400 (EDT)
Received: by mail-qt1-f170.google.com with SMTP id m13so8767399qtk.13
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 14:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=4G/rB3ZwikvPegraUcj+yjQstyqYxmNPhY7zaBKMnFE=;
        b=FupzK3PNjo9TSyJf4hNZMeLeV4yKXQEy4xGXS9cu44djjmq8hKsse11fHECP3bnn4W
         EePiNzoPDo27q+uj6dlVRo/0EXPUcdecQ2wsMz773x9yb1T7lhQQMCSldlZ7n1ykT25I
         aMEfnhx9G+9JnJlA+CSAHA2XEhDhQKd18WWqzf0VfhstQy0FD2OryOjvdLUtcRB1lhTD
         +R5RbSl2LpFlpApkAa3+wUX+SCI6l3dbDkAXRGf3Gxy7uLk0LnLvK76RL8PeiK2ty9Kl
         x3cpqGJM3rzY/w9ySVRUrB2nnijh0/TtxUfrBT+tM+zp9S0b+u8kQtooQfLqy20czIZq
         RKaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=4G/rB3ZwikvPegraUcj+yjQstyqYxmNPhY7zaBKMnFE=;
        b=i8S9Y9zOgrKnVzJW1boLD01qn83zB9krs1Es/YjBOX+BSQDx1qEbRloVCV/yqotq+K
         Q5drJn34Ez/7gVIV8pQppUk88ITZJZ6n4L2Zqu8q0y/Lyvc3hmE8adZ+9hnffzOuV7wv
         48j2di1d9MJEF71lA1Gu0k1oh2fDFyssL109ovp/S5THKRqoz88I6GmgSguwGiID+l1/
         mSx4hj1XvSxNduJwOmLAxkIY+yG4MR1Qt1XIKousYZdlUnPdMwtQvmBP0dugoPs8eqAO
         vas3JIXlnXO0q400iCjbrGaHUc1DZ6Sw5Qylh0/eyp/evZYcCm7GiFGpEI2LaM1IKvDU
         ys4A==
X-Gm-Message-State: AOAM530ip3eJ2+rSLx5oShh6+nofbCl6PGk0wckEKblLfw7dx3XhGxtp
	IwNqvS3yh2TVkrtiWcTsgv3h50V7+AE=
X-Google-Smtp-Source: ABdhPJyxru1ji3fYb6B/Zwn9X6uzYObw+BRWC0pmicQkxwz8OIDRkXjwJCB403W9OqwrSINuzL0jjA==
X-Received: by 2002:a05:622a:242:: with SMTP id c2mr16288294qtx.219.1622496947966;
        Mon, 31 May 2021 14:35:47 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id 28sm10163216qkr.36.2021.05.31.14.35.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 14:35:47 -0700 (PDT)
Message-ID: <60B556B2.3060508@gmail.com>
Date: Mon, 31 May 2021 17:35:46 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Skyvalakis Konstantinos <kskyvalakis@isc.tuc.gr>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1622487334616.15025@isc.tuc.gr>,<3C39A314-B292-4CEF-BF8E-7212C1687F43@gmail.com> <1622488640848.60454@isc.tuc.gr>
In-Reply-To: <1622488640848.60454@isc.tuc.gr>
Message-ID-Hash: 5ASY5W7YBMZ3RYBA4ICR2WXFFMXDPQXL
X-Message-ID-Hash: 5ASY5W7YBMZ3RYBA4ICR2WXFFMXDPQXL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5ASY5W7YBMZ3RYBA4ICR2WXFFMXDPQXL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2003174425684286375=="

This is a multi-part message in MIME format.
--===============2003174425684286375==
Content-Type: multipart/alternative;
 boundary="------------030800030801030205080206"

This is a multi-part message in MIME format.
--------------030800030801030205080206
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/31/2021 03:17 PM, Skyvalakis Konstantinos wrote:
>
> Ok, I did the upgrade and all the necessary rebuilds.
>
>
> The error persists this time however with more information.
>
>
> RuntimeError: RuntimeError: fifo ctrl timed out looking for acks
> [ERROR] [UHD] Exception caught in safe-call.
>   in virtual usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl()
>   at /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:=
54
> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks=E2=
=80=8B
>
>
>
Also, when you have a TX/RX scenario like this, for some hardware, you=20
need to have as many TX channels as RX channels.

So, establish your "sink" such that it talks to both devices, and then=20
just stuff the buffer with 0s for the channel you're not using.



--------------030800030801030205080206
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 05/31/2021 03:17 PM, Skyvalakis
      Konstantinos wrote:<br>
    </div>
    <blockquote cite=3D"mid:1622488640848.60454@isc.tuc.gr" type=3D"cite"=
>
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none"><!-- p { margin-top=
: 0px; margin-bottom: 0px; }--></style>
      <p>Ok, I did the upgrade and all the necessary rebuilds.<br>
      </p>
      <p><br>
      </p>
      <p>The error persists this time however with more information.<br>
      </p>
      <p><br>
      </p>
      <div>RuntimeError: RuntimeError: fifo ctrl timed out looking for
        acks</div>
      <div>[ERROR] [UHD] Exception caught in safe-call.</div>
      <div>=C2=A0 in virtual usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl(=
)</div>
      <div>=C2=A0 at
        /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp=
:54</div>
      <div>this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed out
        looking for acks=E2=80=8B<br>
      </div>
      <p><br>
      </p>
      <br>
    </blockquote>
    Also, when you have a TX/RX scenario like this, for some hardware,
    you need to have as many TX channels as RX channels.<br>
    <br>
    So, establish your "sink" such that it talks to both devices, and
    then just stuff the buffer with 0s for the channel you're not using.<=
br>
    <br>
    <br>
  </body>
</html>

--------------030800030801030205080206--

--===============2003174425684286375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2003174425684286375==--
