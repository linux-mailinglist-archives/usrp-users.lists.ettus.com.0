Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E773897FA
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 22:35:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 099683864E9
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 16:35:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X8dPDIka";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 165913860D0
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 16:35:06 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id x8so14112959qkl.2
        for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 13:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=y+3aMLcSovBlcnxHZWj8im0isClMlH0zqt3UnabFd2M=;
        b=X8dPDIkaB6jSRfKLJNwbEwItfuJwkJHCIDnK2IYoGqowUiaQigWcrJF5JAeP9+Vbm5
         zzxDiODnlKbfmOdHaeoVq2g1OYX3Lc6lNWdGGy1LnyWYWb4YI9kxoLpt8X/83ZkvRXff
         sVf0T9qHwoTZuM5d4xLO1Ry1EAI7muZ4kNPoUycoJSLz5Ac5xDls5KkO5dvPudhaPmzL
         6wtd/9lHX1l94q0v4McoQ347poHMZGhU7n6ukl5YqXhxuXl9Jh/6493WTrE17t/ccwA1
         xRpx8OgIrSmtq3rpr4YLPyCXsVE+MJH9VPQfRnQE7tqu+Ac0W7Nv/Paat3Ck4A88Ttnu
         JvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=y+3aMLcSovBlcnxHZWj8im0isClMlH0zqt3UnabFd2M=;
        b=BLHUwdk3dF0OdhiEhE8aNubuEy2GliHJM7dJoi8kGeXS8mhDdbPH/TAcRNOiuoCyMF
         DJCcQRG0ZSMpCy847pCsjGhOeShrkJOlJmEsBevg/Ru1Ux6n/XxRtXxnUGiP3oshGJ+n
         /3pCU9prqRibKd2/7nbF6iyEYFW9xuQEr6sBLMAfTtLtz+LAYgSHQqbbaqDOr+jlYmKq
         9H2qgCt0SGflyytzXwIyyAq3plWgHMcKKLnNV3+7Cp5mjwbjTsnJuOA4x7YHInwbilLe
         wag+PZSazcfyhZWKom7VMjyG1IZuFNXPU0pGtRcpw8ugAsajyxkH0XJlurjRUu/e6NT0
         o83g==
X-Gm-Message-State: AOAM530dCfgnVh85/q0ZBW+htmgdZ53JE6pzrL51wMY/sH8dEwz/5jjB
	fWsILQ/jD2rX+WLylcHIO1ivybjfC98=
X-Google-Smtp-Source: ABdhPJzURG9nTo8z0f3m0pgodj73xKfU61mhBLXNMLTeDDlOAt27T6WZyMffio74ttO0UwvqCQ/rwQ==
X-Received: by 2002:a05:620a:21de:: with SMTP id h30mr1353232qka.397.1621456506124;
        Wed, 19 May 2021 13:35:06 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x194sm631227qkb.79.2021.05.19.13.35.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 May 2021 13:35:05 -0700 (PDT)
Message-ID: <60A57678.1040401@gmail.com>
Date: Wed, 19 May 2021 16:35:04 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <mD9dgYeu5Fq8eYmqKpRsiCcw3lYPJI5Cibpzm8HdoA@lists.ettus.com>
In-Reply-To: <mD9dgYeu5Fq8eYmqKpRsiCcw3lYPJI5Cibpzm8HdoA@lists.ettus.com>
Message-ID-Hash: 2RQESXH7VHONAGC7XR4B32LJGKTH7KZE
X-Message-ID-Hash: 2RQESXH7VHONAGC7XR4B32LJGKTH7KZE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting network configuration (MTU) on the N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2RQESXH7VHONAGC7XR4B32LJGKTH7KZE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3031065148588214921=="

This is a multi-part message in MIME format.
--===============3031065148588214921==
Content-Type: multipart/alternative;
 boundary="------------020708010702090702020600"

This is a multi-part message in MIME format.
--------------020708010702090702020600
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/19/2021 04:02 PM, thebouleoffools@gmail.com wrote:
>
> Did you ever get a solution to this? I ran into this issue today, and=20
> the solutions I found after a search were somewhat convoluted. As a=20
> quick workaround, I connected to the radio over a serial connection,=20
> brought down the network iface, then brought it back up with my=20
> desired MTU. This isn=92t ideal in any way, but I can=92t get the MTU=20
> settings to stick either in the systemd config.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Make certain that you're running with the HG rather than XG image if you=20
want to use SFP0 at 1GBit.

The only thing I can think of off the top of my head for why=20
/etc/systemd/network/sfp0.network isn't being "respected" is a typo
   in the file--like editing it on a Windows machine and downloading it=20
to the device without stripping the trailing '\r'.



--------------020708010702090702020600
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 05/19/2021 04:02 PM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:thebouleoffool=
s@gmail.com">thebouleoffools@gmail.com</a> wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:mD9dgYeu5Fq8eYmqKpRsiCcw3lYPJI5Cibpzm8HdoA@lists.ettus.=
com"
      type=3D"cite">
      <p>Did you ever get a solution to this? I ran into this issue
        today, and the solutions I found after a search were somewhat
        convoluted. As a quick workaround, I connected to the radio over
        a serial connection, brought down the network iface, then
        brought it back up with my desired MTU. This isn=92t ideal in any
        way, but I can=92t get the MTU settings to stick either in the
        systemd config.</p>
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
    Make certain that you're running with the HG rather than XG image if
    you want to use SFP0 at 1GBit.<br>
    <br>
    The only thing I can think of off the top of my head for why
    /etc/systemd/network/sfp0.network isn't being "respected" is a typo<b=
r>
    =A0 in the file--like editing it on a Windows machine and downloading
    it to the device without stripping the trailing '\r'.<br>
    <br>
    <br>
  </body>
</html>

--------------020708010702090702020600--

--===============3031065148588214921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3031065148588214921==--
