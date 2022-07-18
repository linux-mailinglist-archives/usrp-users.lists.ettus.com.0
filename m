Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD595789CB
	for <lists+usrp-users@lfdr.de>; Mon, 18 Jul 2022 20:51:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 933953839D9
	for <lists+usrp-users@lfdr.de>; Mon, 18 Jul 2022 14:51:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658170287; bh=PH2poOljItHF7UkGpciKeIoQV1dgJ8JZRStKiwilFjg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0PUlwB5nQlRFrzqaReMi2yug4uKdR6u3QU7EtgsSokF8KeMy4D6Lq//XZjldiFwAb
	 IR+KnoGDVGhsgkLQjEWI82nrRP3Nb29CecUWREI0F6pB8nEUAahtVgCE+dWEUM5tKy
	 HdvKM15N84TlODHk2z4Q4rXkqk7/tUH+8Ox2hkXLDweZ3l4ZVBDMEqePRsxme6ICR/
	 /Z1ocNIgGW9Aeo4RCLEhe+Eh+e+/Jy6uu7RiGsxvKpOUlwMSXoFb8Oa+o4kdVmG1lh
	 0Z99SFR0w5ASo0QBvEvE0cZB35zTCUIunGlrQYDcA/moeI//aYWijlvlvLSMpgWngk
	 jtSwoKA4Af95Q==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A11D383745
	for <usrp-users@lists.ettus.com>; Mon, 18 Jul 2022 14:50:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hkmV90U0";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id h22so9446059qta.3
        for <usrp-users@lists.ettus.com>; Mon, 18 Jul 2022 11:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=6o6JZiQBqkrX2JbGeH9FuX0vXstpa6tfSz47S3koZd8=;
        b=hkmV90U0aPi5NE/Iynr8zv+Bgt0XUF96JsSl1hFXMqCwdchrEw1OT3nRPNl0SWufb/
         C+mMv1gzMvPY8l55yAXaHf9xaNXiS4JvC8tt7SgHpA69HQ93dTXIR0XSRMuA0ZJdgaWz
         BVmGEjpe16LfDrJaZYvxIn5SJ9iLOIPWXw5lGWjOv15D/Q/htPBW72yytNT+E7eKxi2o
         W3cQFhFBGl34ct0mv+4yBwTr28Uioa69eZgy7MUVKmgoHFjI4/doHAAd5xs6niXryy1g
         S8IB+jycSNw2hUhwSo/dtsKx+gTDI2k41EFCOXVT7ThDQJcI8Hh/P8dHjNbSW9vICYZX
         vOkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=6o6JZiQBqkrX2JbGeH9FuX0vXstpa6tfSz47S3koZd8=;
        b=HPiBho1LxA1X+jQvjQoDH+Rvl842yMQ7zgt8Roln+2diBW2A2hl6xolBbmZ946fenn
         f7tV3mWXj3dAxt+EvkqT/0KSIoIgQ3Ohp0lggWDg54pF3SZwFdTYzqGMIijgUOhNRz2a
         SWK9cFCV+I+1x6nf0P+2L0spIGGsxdDf11NhBAE39Ur8VxN06prkyYVupnz5QQehUttV
         SUVTMNuDt/pBlWye9pEuKdmCUwzBQVEKVihogqaq1xwoNRch2oNMWHR8r2qXf65VZy6I
         jcfiYSI8g6kxThFVtCUCfrp8jwA2ed6BrPcffTkke5XrDeNaR3oKzWJzZbT9KaGXAUzN
         p32w==
X-Gm-Message-State: AJIora+6k3IgimnX1YvegfjEYtOoHfCuA1gJJCMg/1UZnX77QgYL6QDv
	j97SbaPTDvC4ijTBORFBgAkl1p0XNcU=
X-Google-Smtp-Source: AGRyM1vkZxGVGayvIkSKtdqvIcAQ5K3pRiT7I/uNtQRvA5I6b0gWhifB0OBKOLGXgqSXyuwa5jP7QQ==
X-Received: by 2002:ac8:59ce:0:b0:31e:9fb6:54d9 with SMTP id f14-20020ac859ce000000b0031e9fb654d9mr22886141qtf.86.1658170216593;
        Mon, 18 Jul 2022 11:50:16 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id cp4-20020a05622a420400b0031eb393aa45sm9210131qtb.40.2022.07.18.11.50.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 11:50:16 -0700 (PDT)
Message-ID: <b0622d96-7205-c9d4-b17b-53be953cd2d9@gmail.com>
Date: Mon, 18 Jul 2022 14:50:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <trinity-c84770de-8031-4fe8-b3b0-728737351272-1658150981340@3c-app-webde-bs09>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <trinity-c84770de-8031-4fe8-b3b0-728737351272-1658150981340@3c-app-webde-bs09>
Message-ID-Hash: LV5TGMRA64K6E67XWHQAO6NNVWRBLAGI
X-Message-ID-Hash: LV5TGMRA64K6E67XWHQAO6NNVWRBLAGI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bluetooth Decoding using USRP B200mini
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LV5TGMRA64K6E67XWHQAO6NNVWRBLAGI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3630305919897469291=="

This is a multi-part message in MIME format.
--===============3630305919897469291==
Content-Type: multipart/alternative;
 boundary="------------imwhH01TWPB67HM5cAmUuUI7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------imwhH01TWPB67HM5cAmUuUI7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-07-18 09:29, Jonas Wenner wrote:
> Hi,
> I'm interested in implementing Bluetooth Decoding using USRP B200mini 
> and GNURadio 3.8.
> Ive seen there is gr_bluetooth, but documentation is very sparse.
> Could you point me to ressource to help me find a starting point or 
> maybe recommend other gnuradio module you used before?
>
> Thank you
> JW
>
You might be best to make inquiries on the discuss-gnuradio mailing 
list, or on the "General" channel on their matrix server: chat.gnuradio.org


--------------imwhH01TWPB67HM5cAmUuUI7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-18 09:29, Jonas Wenner
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:trinity-c84770de-8031-4fe8-b3b0-728737351272-1658150981340@3c=
-app-webde-bs09">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div style=3D"font-family: Verdana;font-size: 12.0px;">
        <div>Hi,</div>
        <div>=C2=A0</div>
        <div>I'm interested in implementing Bluetooth Decoding using
          USRP B200mini and GNURadio 3.8.<br>
          Ive seen there is gr_bluetooth, but documentation is very
          sparse.</div>
        <div>Could you point me to ressource to help me find a starting
          point or maybe recommend other gnuradio module you used
          before?<br>
          <br>
          Thank you<br>
          JW</div>
      </div>
      <br>
    </blockquote>
    You might be best to make inquiries on the discuss-gnuradio mailing
    list, or on the "General" channel on their matrix server:=C2=A0
    chat.gnuradio.org<br>
    <br>
    <br>
  </body>
</html>

--------------imwhH01TWPB67HM5cAmUuUI7--

--===============3630305919897469291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3630305919897469291==--
