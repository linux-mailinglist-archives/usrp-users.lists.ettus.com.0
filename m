Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20691421279
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 17:17:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0823383FA2
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 11:17:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IrSzMTtT";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C2A1383B9C
	for <usrp-users@lists.ettus.com>; Mon,  4 Oct 2021 11:16:28 -0400 (EDT)
Received: by mail-qk1-f180.google.com with SMTP id m7so16749275qke.8
        for <usrp-users@lists.ettus.com>; Mon, 04 Oct 2021 08:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=3nhf4P6RmTIRf4izFVhvu66t/3sFDyvWmosBQUACQnA=;
        b=IrSzMTtTYiC3g8WQmPrtB8M99pqK+wWPvEvofqaSS4o6NIk3udIvhZbKSTpkYDyOnM
         DIqwhm/JX+VBLtjCrsQ2VxN95A0EC4KoffzA7FH/tp0XFLWZbovuILQxPf9oHaVXamK2
         l1vw1+6UFF7U5g5CjWwgkrnVZ8ZLSgQC/0bSH8y6weQebHrHiNbSyeqwuL97EGObVO+p
         J8Fv/A04qr77wj65eHKzXJVMASW8kEk3eqqOrE7LrDPho6tt9/Qw4EWT1iCfyrXDi6aE
         W+wLF3zyCx76JeFCsjz59leJyIJCzngawDczg6By+xZGkAf96YdSyt1r6YbW0HsH8aeO
         OavQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=3nhf4P6RmTIRf4izFVhvu66t/3sFDyvWmosBQUACQnA=;
        b=bEbGVYD8VLrIunbNDaXQbPTKWyOhIAf7Yr1WkXS2/xG9DG/A264OCp5IFxLb9j8uNf
         BTJA20E8KstI7Gj0GiO6T6Rij1XBmGHfJvoRwDgnp96MEgl1BXf048vnD0U5HDXsilM+
         TCybketr4jeL3nSVrfaI60f5InX0zP7hFfvrx3mKAFyxTHsVjGXQsMxBKED94Jos0ht6
         chJSiTxo1FOBPcIqpFuxf17vtPXmREiMpvOsrfbuWFYJjdbwP4WFH/UTQWF49sdqfQz6
         eA/e/Xsq5Zf2oIlvkIJpkUrbpnrVZV6wnMLCMOwSHmpetJukiLQsHi3dO8AyCJzoQK3R
         00dw==
X-Gm-Message-State: AOAM53139DLQivm98YSwjIGxqPrUyBJp1tplXOzI5HKHSFK5dXNLjUNz
	x312ieyHeQrC/iRlGVLL2Wxm0L92wSE=
X-Google-Smtp-Source: ABdhPJyutRitB2HZViOLpsYvonLxk04dnIAcJFQ4V1z4XclhBK7OyMjBUh+EdEOs8z3UYXBToujqFg==
X-Received: by 2002:ae9:de83:: with SMTP id s125mr10737377qkf.248.1633360587001;
        Mon, 04 Oct 2021 08:16:27 -0700 (PDT)
Received: from [192.168.2.250] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id x125sm7925977qkd.8.2021.10.04.08.16.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Oct 2021 08:16:26 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAHqKquxikMusGTodb+hEMtUwpdxAu=QXSvgFtSNWU4DsUkZiRg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <9b016ef8-2417-c5b5-05d2-9ff57f859651@gmail.com>
Date: Mon, 4 Oct 2021 11:16:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAHqKquxikMusGTodb+hEMtUwpdxAu=QXSvgFtSNWU4DsUkZiRg@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: T6LUJKDWJRKKVMRGB5UCCAJQ4DTLMLGS
X-Message-ID-Hash: T6LUJKDWJRKKVMRGB5UCCAJQ4DTLMLGS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T6LUJKDWJRKKVMRGB5UCCAJQ4DTLMLGS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4936567564909962010=="

This is a multi-part message in MIME format.
--===============4936567564909962010==
Content-Type: multipart/alternative;
 boundary="------------9782172264366D4141002BD6"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9782172264366D4141002BD6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-04 6:13 a.m., rouba zeitoun wrote:
> Dear USRP users
>
> I have been working on USRP B210. However, every time I try to put the=20
> following comment "uhd_usrp_probe" I face this message "fx3 is in=20
> state 5".
>
> Even when I try to use gnuradio for transmitting files to another SDR=20
> device I faceD the same problem.
>
> I would really appreciate your advice on a solution or the reason for=20
> such a problem.
>
> Thank you.
>
Are you running the B210 with an external power supply, or powered from=20
the USB bus?=C2=A0 Is it plugged in to a USB2.0 port or a USB3.0 port?

Are you using the standard firmware or custom firmware?

Are you using the supplied USB cable or a different one?

How old is this device?



--------------9782172264366D4141002BD6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-04 6:13 a.m., rouba zeitoun
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHqKquxikMusGTodb+hEMtUwpdxAu=3DQXSvgFtSNWU4DsUkZiRg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">
        <div dir=3D"ltr" style=3D"">
          <div dir=3D"ltr" style=3D""><font face=3D"sans-serif"><span
                style=3D"font-size:12.8px">Dear USRP users=C2=A0</span></=
font></div>
          <div dir=3D"ltr" style=3D""><font face=3D"sans-serif"><span
                style=3D"font-size:12.8px"><br>
              </span></font></div>
          <div dir=3D"ltr" style=3D""><font face=3D"sans-serif"><span
                style=3D"font-size:12.8px">I have been working on USRP
                B210. However, every time I try to put the following
                comment "uhd_usrp_probe" I face this message "fx3 is in
                state 5".</span></font></div>
          <div dir=3D"ltr" style=3D""><font face=3D"sans-serif"><span
                style=3D"font-size:12.8px"><br>
              </span></font></div>
          <div dir=3D"ltr" style=3D""><font face=3D"sans-serif"><span
                style=3D"font-size:12.8px">Even when I try to use gnuradi=
o
                for transmitting files to another SDR device I faceD the
                same problem.=C2=A0</span></font></div>
          <div dir=3D"ltr" style=3D""><font face=3D"sans-serif"><span
                style=3D"font-size:12.8px"><br>
              </span></font></div>
          <div dir=3D"ltr" style=3D""><font face=3D"sans-serif"><span
                style=3D"font-size:12.8px">I would really appreciate your
                advice on a solution or the reason for such a problem.</s=
pan></font></div>
          <div dir=3D"ltr" style=3D""><font face=3D"sans-serif"><span
                style=3D"font-size:12.8px"><br>
              </span></font></div>
          <div dir=3D"ltr" style=3D""><font face=3D"sans-serif"><span
                style=3D"font-size:12.8px">Thank you.</span></font></div>
        </div>
      </div>
      <br>
    </blockquote>
    Are you running the B210 with an external power supply, or powered
    from the USB bus?=C2=A0 Is it plugged in to a USB2.0 port or a USB3.0
    port?<br>
    <br>
    Are you using the standard firmware or custom firmware?<br>
    <br>
    Are you using the supplied USB cable or a different one?<br>
    <br>
    How old is this device?<br>
    <br>
    <br>
  </body>
</html>

--------------9782172264366D4141002BD6--

--===============4936567564909962010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4936567564909962010==--
