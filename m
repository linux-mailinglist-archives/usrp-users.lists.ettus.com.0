Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E521E4ACC9B
	for <lists+usrp-users@lfdr.de>; Tue,  8 Feb 2022 00:27:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF03D384FBB
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 18:27:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Lq+95MxS";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C9C70384EF9
	for <usrp-users@lists.ettus.com>; Mon,  7 Feb 2022 18:26:15 -0500 (EST)
Received: by mail-qt1-f180.google.com with SMTP id t1so7388523qtq.13
        for <usrp-users@lists.ettus.com>; Mon, 07 Feb 2022 15:26:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=aJrHJemFmToSZ22/1vesVfn5Lg68hambetTu0PsrhZQ=;
        b=Lq+95MxStj9dclENPeQCkU3piwoTf+eVaFRx5sKMPWk/zpXVFMwkQCZBxfT3hKBQ5t
         w8qDWnkK7S4yXU4TCG6bptU5Y1otz6R6yz3uOzcrULYAzVlVbCkdUFJl8Uhr6rH3OXuM
         EQLniZyQ0qLKzXXQFDmcYnwa9DuujE+FygeEbj1ogR9uSioJv7DTruWNyVeaysrB6Y/V
         uIykoDrHcUPT28IYMwgqTZFM7ZKFn78Qjx9oliJwC9YxzgpBPull5IbHwBlR6Qz4AyiZ
         CmF9mhL5vQjXA1P6gu2OxmY7Au5DOLv0eB4r3xbGtIXfJsbBnZjQLIH4mQwGH5nCIPOh
         +IEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=aJrHJemFmToSZ22/1vesVfn5Lg68hambetTu0PsrhZQ=;
        b=ZLuDncA0V8anqZOFegDQGr+xLewzf05lOp6XhKQrTRDPNy58v/feAUufi9BNTS/oEr
         bkWeqRQL4npR/lpdPCtK1cZgar48Oy7LL/ucLNjz73xCnq+Bx0po81e1hKT6wJheaFLi
         iAi09bjTkZw7o0UYxmVWMmqVqrna31KKGNqtqOWtYp5947gfrRzVdi3ZhDbpsd/jX38o
         Q25g6wBNyh2G/3hWYyO+N2dPTmggRMqUflcuWdltVb1NGhEy2BSpEcmwZR99p8lzkW9C
         bofcUwPAed2l9e05jwqESB4/5KbcZ4yULGuF+jy/FKQMOnx2fsVSRz03zVW10QgK1xnR
         5PYg==
X-Gm-Message-State: AOAM5330C1wh13Ac70QlgvUxwwGnJUWPs5AEWw2MjosDWWG1EKRAON7U
	+UtpSf7XUj+OlfxmuA4+MJk1DRfQB6M=
X-Google-Smtp-Source: ABdhPJyHa4ExxXosqT59ND7tzY7l3vhM2ovfXH22MP5cp0J8VhgLLED5O9PM47cSJ66VBEdAalpHSw==
X-Received: by 2002:ac8:470b:: with SMTP id f11mr1385084qtp.428.1644276374973;
        Mon, 07 Feb 2022 15:26:14 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id b184sm6272850qkf.87.2022.02.07.15.26.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Feb 2022 15:26:14 -0800 (PST)
Message-ID: <2e706246-8d28-275e-cb73-70253d4d77b7@gmail.com>
Date: Mon, 7 Feb 2022 18:26:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAB__hTTWVyMaR-vum8ThYJuOUJ2Hh-b7abJZGMxvVmBmvZyV0w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTTWVyMaR-vum8ThYJuOUJ2Hh-b7abJZGMxvVmBmvZyV0w@mail.gmail.com>
Message-ID-Hash: YEMUDEZPJNH6PQZ2IWW5JWMHSQACU2C6
X-Message-ID-Hash: YEMUDEZPJNH6PQZ2IWW5JWMHSQACU2C6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 with 1Tx and 2RX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YEMUDEZPJNH6PQZ2IWW5JWMHSQACU2C6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0547368480623435917=="

This is a multi-part message in MIME format.
--===============0547368480623435917==
Content-Type: multipart/alternative;
 boundary="------------kkYvRPF8k90TkqCptvFgu16x"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------kkYvRPF8k90TkqCptvFgu16x
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-07 18:22, Rob Kossler wrote:
> Hi,
> What does the following error mean for an E320? In my application, I=20
> want 1Tx and 2Rx.
> [ERROR] [0/Radio#0] Invalid channel configuration: This device does=20
> not support 1 TX x 2 RX or 2 TX x 1 RX configurations!
> Error: RuntimeError: Invalid channel configuration: This device does=20
> not support 1 TX x 2 RX or 2 TX x 1 RX configurations!
> Does this mean that I simply need an RFNoC graph that is 2x2 to the=20
> radio - even if I don't initiate any streaming to the 2nd un-needed Tx=20
> radio? Or do I also need to actively stream samples (e.g., zeros) to=20
> the 2nd un-needed=C2=A0Tx radio.
>
> Rob
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Since the E320 is based on the AD9361, the TX/RX configs are somewhat=20
constrained, due to the way the data interface to the AD9361 works.

You'll need to stream zeros--at least that's the way it is with B2xx and=20
E310 devices, which use the same AD9361 RFFE chip.

Granted, this *could* be taken care of with the drivers and FPGA=20
cooperating to make it more "beautifully generalized", but the=20
constraints of the AD9361 chip
 =C2=A0 data interface are "exposed".


--------------kkYvRPF8k90TkqCptvFgu16x
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-07 18:22, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTWVyMaR-vum8ThYJuOUJ2Hh-b7abJZGMxvVmBmvZyV0w@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,
        <div>What does the following error mean for an E320? In my
          application, I want 1Tx and 2Rx.</div>
        <div><span style=3D"color:rgb(255,0,0)">[ERROR] [0/Radio#0]
            Invalid channel configuration: This device does not support
            1 TX x 2 RX or 2 TX x 1 RX configurations!</span><br
            style=3D"color:rgb(255,0,0)">
          <span style=3D"color:rgb(255,0,0)">Error: RuntimeError: Invalid
            channel configuration: This device does not support 1 TX x 2
            RX or 2 TX x 1 RX configurations!</span><br>
        </div>
        <div><font color=3D"#000000">Does this mean that I simply need an
            RFNoC graph that is 2x2 to the radio - even if I don't
            initiate any streaming to the 2nd un-needed Tx radio? Or do
            I also need to actively stream samples (e.g., zeros) to the
            2nd un-needed=C2=A0Tx radio.</font></div>
        <div><font color=3D"#000000"><br>
          </font></div>
        <div><font color=3D"#000000">Rob</font></div>
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
    Since the E320 is based on the AD9361, the TX/RX configs are
    somewhat constrained, due to the way the data interface to the
    AD9361 works.<br>
    <br>
    You'll need to stream zeros--at least that's the way it is with B2xx
    and E310 devices, which use the same AD9361 RFFE chip.<br>
    <br>
    Granted, this *could* be taken care of with the drivers and FPGA
    cooperating to make it more "beautifully generalized", but the
    constraints of the AD9361 chip<br>
    =C2=A0 data interface are "exposed".<br>
    <br>
    <br>
  </body>
</html>

--------------kkYvRPF8k90TkqCptvFgu16x--

--===============0547368480623435917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0547368480623435917==--
