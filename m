Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BE236EC7B
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 16:36:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C82F1383F13
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 10:36:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TPEkG4dx";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id A5035383CEE
	for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 10:35:52 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id z2so30361681qkb.9
        for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 07:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=GK8185gg2hpwUnp/I2ud78M9Ko2biWTsDe9LlsHeWOY=;
        b=TPEkG4dxfGuJghFITvZxpici/UaVUkKX4xfSRNLnA8SVYWluq6syoIBrwqTvQpz/9x
         jvSOHkarrgTxpI7L5sNcDcu3JcAnm1IncyHXG2dwCiZsmbQm7u466/ovi3aIRr0iTy+F
         CooUtOMR8fddS7XvelY9AHMQGZ4UM7v9J5javD0YHkwbOq7wzWzPNA+qoFDR3BD8YZ3C
         nbVlcUF72+2hWAwOoYMgrcMX0af6Y/Fl7Z59q5CId2+hYl6rKn54yTwGakcpZ/lBDbbH
         ajAoecVUVACMmmfnBKo6nSuPGYyduC0nN+MFAZ9YiS6g+r00Ve/ezJVQ/fm+TtL4J8rS
         aQTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=GK8185gg2hpwUnp/I2ud78M9Ko2biWTsDe9LlsHeWOY=;
        b=NuDX6uXJvPerIdvwRIqQspemWvt7lcCtcql52ejzQNDRzmYmnwcy+FrSzyuj5Up1fy
         0Lzdf/2UYewXvNlBsrcL/UhKBjqsxdw0N7Eec6bEzJiNvgEupVrsG0sQEAG98aE8lXV9
         6pGVCwO+YuZi+Je3XXHUqVj2Rxzq+bVzc8yCYm3Ix7+LXvCjSGl+h3iawUhBcsKsu4yN
         NrHvUoXYO6TQjSaWqEzxFN4WEpOpH6b2052NZoHw4ytnxlg+zG7+1HuZw1Hb4syIVzlF
         DymrbhTRh1kYmh4FEUSngyl5I2ZYSIC1B9WO/VVme25lxs1iSp7C0D7VXIkWgEIuqpR6
         woxA==
X-Gm-Message-State: AOAM531lumqPXlQ0dblGqodsOtH8FMNshTO2/0hxuVzI4nTjudVeG8Ey
	q3JDZ4glq7ZDygtEWHx4k9Ch8vDDtnzgzw==
X-Google-Smtp-Source: ABdhPJwPUhFX8KjqKKsLgZ5ezSTiXEwDt/jk5GXOei31exxzOG9c38PYWR/AwrcoxduiCyoxq24G/w==
X-Received: by 2002:a37:bc42:: with SMTP id m63mr18612864qkf.241.1619706951699;
        Thu, 29 Apr 2021 07:35:51 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c2sm2301833qkk.2.2021.04.29.07.35.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 07:35:51 -0700 (PDT)
Message-ID: <608AC446.4080404@gmail.com>
Date: Thu, 29 Apr 2021 10:35:50 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <bRGyJ3E0RBahjeyHmFTmjGV41ju25Z5lmODt6saAFk@lists.ettus.com> <CAB__hTTFcB=sOD-rm5x+nxD+YUHBax27GuWzLvQ0Hc-8JMPPFg@mail.gmail.com>
In-Reply-To: <CAB__hTTFcB=sOD-rm5x+nxD+YUHBax27GuWzLvQ0Hc-8JMPPFg@mail.gmail.com>
Message-ID-Hash: DWZTH6QMFXGI7EB3FWOQQ2LMULDXIFQS
X-Message-ID-Hash: DWZTH6QMFXGI7EB3FWOQQ2LMULDXIFQS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to receive two signals in parallel with one TwinRX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DWZTH6QMFXGI7EB3FWOQQ2LMULDXIFQS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1251996777641060432=="

This is a multi-part message in MIME format.
--===============1251996777641060432==
Content-Type: multipart/alternative;
 boundary="------------050500020503090107070407"

This is a multi-part message in MIME format.
--------------050500020503090107070407
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/29/2021 08:41 AM, Rob Kossler wrote:
> Hi Arjan,
> I noticed two mistakes in the graph. First, you have 2 radios each 
> with 1 channel. In your case with only 1 daughterboard populated, I 
> think it should be 1 radio block with 2 channels.  (A radio block is 
> roughly comparable to a daughterboard).  Second, you have the RX 
> antenna set to "Rx1". This is not valid.  It should be "Rx2".
> Rob
>
Actually, the default configuration for TwinRX has RX1 on the first 
channel and RX2 on the 2nd channel.  If you just leave it at the
   default, everything should be fine.

But the point about having a single, two-channel, radio block is the 
main issue here.


> On Thu, Apr 29, 2021 at 5:49 AM <arjan.feta@unifi.it 
> <mailto:arjan.feta@unifi.it>> wrote:
>
>     Hi Marcus and thank you,
>
>     here is the gnuradio flow-graph and a diagram with the physical setup.
>
>     cheers,
>
>     Arjan
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------050500020503090107070407
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/29/2021 08:41 AM, Rob Kossler
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAB__hTTFcB=3DsOD-rm5x+nxD+YUHBax27GuWzLvQ0Hc-8JMPPFg@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">Hi Arjan,
          <div>I noticed two mistakes in the graph. First, you have 2
            radios each with 1 channel. In your case with only 1
            daughterboard populated, I think it should be 1 radio block
            with 2 channels.=A0 (A radio block is roughly comparable to a
            daughterboard).=A0 Second, you have the RX antenna set to
            "Rx1". This is not valid.=A0 It should be "Rx2".</div>
          <div>Rob</div>
        </div>
        <br>
      </div>
    </blockquote>
    Actually, the default configuration for TwinRX has RX1 on the first
    channel and RX2 on the 2nd channel.=A0 If you just leave it at the<br=
>
    =A0 default, everything should be fine.<br>
    <br>
    But the point about having a single, two-channel, radio block is the
    main issue here.<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CAB__hTTFcB=3DsOD-rm5x+nxD+YUHBax27GuWzLvQ0Hc-8JMPPFg@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 29, 2021 at 5=
:49
            AM &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:arjan.feta@unifi.it">arjan.feta@unifi.it</a>=
&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <p>Hi Marcus and thank you,</p>
            <p>here is the gnuradio flow-graph and a diagram with the
              physical setup.</p>
            <p>cheers,</p>
            <p>Arjan </p>
            _______________________________________________<br>
            USRP-users mailing list -- <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
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

--------------050500020503090107070407--

--===============1251996777641060432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1251996777641060432==--
