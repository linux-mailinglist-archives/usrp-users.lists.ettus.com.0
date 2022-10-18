Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B386030D0
	for <lists+usrp-users@lfdr.de>; Tue, 18 Oct 2022 18:33:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0ACEE380D8F
	for <lists+usrp-users@lfdr.de>; Tue, 18 Oct 2022 12:33:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666110825; bh=1bvwGVQfh3YbQpVuHJc5Kx5jlLgI8Krh3y4pMQ95pTo=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=FLe7uf6JNb1KKmFq+bwHaIpBVuiZubVozc3am+4uQlNf712ywe1ioT7c89ItjzUBN
	 6/mZNikhjv/52XYi0BJXw5jf9kqlHwIQj/oxc2MCLqiVIqS1Q6o0cyXYCzHBIDeigu
	 4TrESu5uTx47WtElLThKtuGLHi0qtpXNNwpdAYKUQzpNNdvFBYDIs/XDpUT63BB8wr
	 W5naA8A8PBw2EVXUkx1wmJ6281ypgIc0MRbP+TDeNvkDRaOEuGORgT7HVp9AWeoTc0
	 /IgiB1YZjtNqxOYv7v7TzmhMDWz3qFBJtThfypXfrh8PNdNSESzgshUCaXzz3zS5zK
	 g7I2PhXCZQgMg==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 9DE0E380AB8
	for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 12:32:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bQS2gQzx";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id i12so9653395qvs.2
        for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 09:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WamsMjQxrqO6wNk+MfJYpaQlH2JgyGoc5vlfZWPEXdk=;
        b=bQS2gQzxc8/xv5oL9oWV//fEmodch16XH0nPcQqyYKTqrvlV6do266ERNK1xfWc/mJ
         mdUNY9pGx94Zfv4fIfvIB5z2YZh7SU0mE411/jJZ23nYRkXpSVSeU12vgsUKRyOeYyAF
         pr5SzYw02/6a7vQg8TU8eS01aqCHaUpUK9zdD1MBokNp1QKR0EUYuw+NYr0Ce5wAPioG
         0sT0F6UZxm6Zd++W1KRgxyH4NLPh45vCD3bOAGmQ3cJBY9TlDX6fTJdXFL/1MxEag9dz
         BmGN/bv9oii87u6hsfEUfYgp3OEquIUDx9GkRJNxGWsW/VE7ktZAyDDjLFi4GypEsibH
         J8+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WamsMjQxrqO6wNk+MfJYpaQlH2JgyGoc5vlfZWPEXdk=;
        b=SqQ00f81W6sS+WE6cotHx0xcTipID9cLY8aB5ssa+YKQtzhCs70fPyhGeGZ/QI/CnL
         w0r18hW5bNQYtmw4Y2vlHhrzCzjEGwlXvIpQ4CGXfmrSPqXAQER5Y8gRYG/Z1sXm+VEn
         EAfoK0jBpWYWzj90Q1xGRZ7kQEUH5w1660qgKadbpjf07taxE3wNt6AjoMGw5zYJFxi3
         jNEXINZz+GzsNXh43JwaCZstJVTF52zeiXb6La9D6YJnR8op9y6XqZFEwpweTSpkycZw
         v5Ba1xx2bB6L68yrCnkh4667+IjpvewaQtlXXp2PcNhOI2CjFfLmuoqAHpe3kd7AbGFX
         LWOA==
X-Gm-Message-State: ACrzQf1C3nEZ5w4rRsIU/PJxK6YtpWtWcM+fLuXBWDiLUZ9D80+u6lEY
	CHzEDzlmvr3+N7y10Z83ZLdW7Qpq0Uc=
X-Google-Smtp-Source: AMsMyM5+Y8XNYWfs30j0MhOGYtJ4PTDRR54aEsy6Bz6evKCDmJrs+O7Gk5JNyYfw7aoCqRfpxgBNcQ==
X-Received: by 2002:a05:6214:518c:b0:4b1:88f8:b6a4 with SMTP id kl12-20020a056214518c00b004b188f8b6a4mr2949072qvb.0.1666110756047;
        Tue, 18 Oct 2022 09:32:36 -0700 (PDT)
Received: from [192.168.2.193] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id i15-20020a05620a404f00b006ee91ab3538sm2971172qko.36.2022.10.18.09.32.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 09:32:35 -0700 (PDT)
Message-ID: <5a3db562-8b52-dab7-313c-cd0739dbfa87@gmail.com>
Date: Tue, 18 Oct 2022 12:32:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Mikio Fukushima <mikio@dolphinsystem.jp>
References: <CABfZwcdmTTvRjhnPn-qrEy57B8CdnbTfA1x3rw44=0s4VuqfvA@mail.gmail.com>
 <522294f8-ad68-c2b0-c6a0-dcc683ffd730@gmail.com>
 <CABfZwccidD5CdvTD5AgHNrsG-Xwmu2y452w1iQK-kSky60yOMw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CABfZwccidD5CdvTD5AgHNrsG-Xwmu2y452w1iQK-kSky60yOMw@mail.gmail.com>
Message-ID-Hash: YOOGFL2QCEHQJLNUEULFZQ5MIWIIQCFK
X-Message-ID-Hash: YOOGFL2QCEHQJLNUEULFZQ5MIWIIQCFK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fifo ctrl timed out error (LFRX on a N210)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YOOGFL2QCEHQJLNUEULFZQ5MIWIIQCFK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6766109458855468122=="

This is a multi-part message in MIME format.
--===============6766109458855468122==
Content-Type: multipart/alternative;
 boundary="------------9R7P2yCC2D8J9njZAVoG0e8F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9R7P2yCC2D8J9njZAVoG0e8F
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-18 00:23, Mikio Fukushima wrote:
> Hi, Marcus
> Thank you for your reply.
>
> I tried a UHD 3.15(x64 VS2009).
> There is no "Error: LookupError: IndexError: multi_usrp: RX channel 12=20
> out of range for configured RX frontends".
> But when press "Ctrl + C" to stop rx_samples_to_file.exe then fifo=20
> timed out error occured.
>
> Setting RX Freq: 1.000000 MHz...
> Setting RX LO Offset: 0.000000 MHz...
> Actual RX Freq: 1.000000 MHz...
>
> Press Ctrl + C to stop streaming...
>
> Done!
>
> [ERROR] [UHD] Exception caught in safe-call.
> =C2=A0in __cdecl usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl(void)
> =C2=A0at=20
> C:\Users\buildbot\worker\Builder_uhdPackage_Windows_x64_vs2019\work\uhd=
\host\lib\usrp\usrp2\usrp2_fifo_ctrl.cpp:54
> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks
>
> Thanks.
>
>
That's probably just due to the way Windows deals with interrupted=20
system calls, and doesn't mean anything is broken.


--------------9R7P2yCC2D8J9njZAVoG0e8F
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-18 00:23, Mikio Fukushima
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CABfZwccidD5CdvTD5AgHNrsG-Xwmu2y452w1iQK-kSky60yOMw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi, Marcus
        <div><font face=3D"Arial, Helvetica, sans-serif">Thank you for
            your reply.</font></div>
        <div><br>
        </div>
        <div>I tried a UHD 3.15(x64 VS2009).=C2=A0</div>
        <div>There is no "Error: LookupError: IndexError: multi_usrp: RX
          channel 12 out of range for configured RX frontends".=C2=A0=C2=A0=
</div>
        <div>But when press "Ctrl + C" to stop rx_samples_to_file.exe
          then fifo timed out error occured.<br>
        </div>
        <div><font face=3D"Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div>
          <div>Setting RX Freq: 1.000000 MHz...<br>
            Setting RX LO Offset: 0.000000 MHz...<br>
            Actual RX Freq: 1.000000 MHz...<br>
            <br>
            Press Ctrl + C to stop streaming...<br>
            <br>
            Done!<br>
            <br>
            [ERROR] [UHD] Exception caught in safe-call.<br>
            =C2=A0in __cdecl
            usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl(void)<br>
            =C2=A0at
C:\Users\buildbot\worker\Builder_uhdPackage_Windows_x64_vs2019\work\uhd\h=
ost\lib\usrp\usrp2\usrp2_fifo_ctrl.cpp:54<br>
            this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed out
            looking for acks<br>
          </div>
          <div><br>
          </div>
          <div>Thanks.</div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    That's probably just due to the way Windows deals with interrupted
    system calls, and doesn't mean anything is broken.<br>
    <br>
    <br>
  </body>
</html>

--------------9R7P2yCC2D8J9njZAVoG0e8F--

--===============6766109458855468122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6766109458855468122==--
