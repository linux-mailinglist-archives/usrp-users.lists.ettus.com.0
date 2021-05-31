Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C71F3967AF
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 20:18:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAA7F3842C9
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 14:18:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VgUpHHTx";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A2F43842BA
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 14:17:48 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id t17so8423173qta.11
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 11:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=iwHV4XnoOfk5h/lUkOcz1BSOcGRp6lkn6qseUk9uri0=;
        b=VgUpHHTxV/SEK3wZrsFNQRJ0mvXJq3oHLtWEdr6Z076OswnSXYCIAWK2WLDwgtb8P4
         S1Z1xe9qiuscO5JoGOlw7qZrhoti4SPB4FZsTNmD3j+NtO0giHySg29SQ2IDiW+HUJFi
         Fap5EQ8KLjolhR1Vas09jIjz1JsmRvr5bW1K5lcrcfxKtv1gTFyO2N9IyU+Srxg7bwlC
         1u+Vr53MYdRSby497Fcp4sKFaLnPMw/gzMFLtJAjruLb8i6aFRaxkvAZ3GmzTt9rgl0N
         F8z/gvu/Z9JQ9+gihSTQhyZZuefjkXL4qB2nyoZUw3TZgDuEXE9XFWri0QFIfizraNDj
         tGFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=iwHV4XnoOfk5h/lUkOcz1BSOcGRp6lkn6qseUk9uri0=;
        b=b4RAN5E+5Iq4k3giBIUWfAvgvqx4XKX3/kj7ebU1YORME3GVnhluNkRZDa5K5gcb1A
         6JXm68LvnRabPEvDvS8Cmvc5CqAeu6qU0xwd+3FxaVrLeWoJvpB74JRFcwZ7p/Px8Vze
         Smcojgk5hXAiGXQ06raPbXvQIAevhaI3oTNjTSOrwEmlOl9hr/mxnrCWA5Ib7PxiLun5
         +CNUydHgJnRupfx7sxL0+a9ZOCBZ7zTWQ9jrlO5wbwW2BTyPLo8zYsS72CQ3mZ8+ftSH
         wLW8qLek5BkThQzYBWi4Wwda3t5I3OKYn22bcywf1l++aMfGxm4+kxBAbv0gQfKeJMmC
         rcPg==
X-Gm-Message-State: AOAM533CBluk8I15708bGfLjwp8bX4TYrQUzZj+x2peYqYwkZQMiArJk
	tWp6Gj5rn4tJysu3TNnisVFeP6/K/k8=
X-Google-Smtp-Source: ABdhPJzmEHQWLCVdOHcujnMm+gBbNfJjGUDIPupZUvHiSQdDWMRzF0fm2j2T/Fj6tZU/8tQycmNllg==
X-Received: by 2002:ac8:7d02:: with SMTP id g2mr16107366qtb.208.1622485067688;
        Mon, 31 May 2021 11:17:47 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id h19sm2674027qto.63.2021.05.31.11.17.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 11:17:47 -0700 (PDT)
Message-ID: <60B5284A.70200@gmail.com>
Date: Mon, 31 May 2021 14:17:46 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Skyvalakis Konstantinos <kskyvalakis@isc.tuc.gr>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1622468756733.49774@isc.tuc.gr>,<3C0D211F-9EF3-4185-B74B-D66559AD991E@gmail.com> <12f9d770-a055-4d78-9323-eeb6c1517c87@email.android.com>,<60B52301.6030204@gmail.com> <1622484819110.60390@isc.tuc.gr>
In-Reply-To: <1622484819110.60390@isc.tuc.gr>
Message-ID-Hash: NVRZHVYP57NMPA7OMEKT5SVGHUUAESG5
X-Message-ID-Hash: NVRZHVYP57NMPA7OMEKT5SVGHUUAESG5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NVRZHVYP57NMPA7OMEKT5SVGHUUAESG5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6771088203140624570=="

This is a multi-part message in MIME format.
--===============6771088203140624570==
Content-Type: multipart/alternative;
 boundary="------------020102010102030707050801"

This is a multi-part message in MIME format.
--------------020102010102030707050801
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/31/2021 02:13 PM, Skyvalakis Konstantinos wrote:
>
> My UHD version is  UHD_003.010.000.HEAD-0-g6e1ac3fc
>
>
> and my ethernet interface adapter is a Qualcomm Atheros Killer E2400=20
> Gigabit Ethernet Controller (rev 10)=E2=80=8B.
>
>
> Thank you so much for your effort and time with my issue. I honestly=20
> appreciate it.
>
> -----------------------------------------------------------------------=
-
>
This issue shows up quite some time ago and I found it in the Nabble=20
archive for this list:

http://ettus.80997.x6.nabble.com/Re-USRP-users-Discuss-gnuradio-RuntimeEr=
ror-fifo-ctrl-timed-out-looking-for-acks-td8198.html

You might also try upgrading to a much-more-recent UHD.



--------------020102010102030707050801
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 05/31/2021 02:13 PM, Skyvalakis
      Konstantinos wrote:<br>
    </div>
    <blockquote cite=3D"mid:1622484819110.60390@isc.tuc.gr" type=3D"cite"=
>
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <style type=3D"text/css" style=3D"display:none"><!-- p { margin-top=
: 0px; margin-bottom: 0px; }--></style>
      <p>My UHD version is=C2=A0=C2=A0UHD_003.010.000.HEAD-0-g6e1ac3fc<br=
>
      </p>
      <p><br>
      </p>
      <p>and my ethernet interface adapter is a=C2=A0Qualcomm Atheros Kil=
ler
        E2400 Gigabit Ethernet Controller (rev 10)=E2=80=8B.<br>
      </p>
      <p><br>
      </p>
      <p>Thank you so much for your effort and time with my issue. I
        honestly appreciate it.<br>
      </p>
      <div style=3D"color: rgb(33, 33, 33);">
        <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%"><br=
>
      </div>
    </blockquote>
    This issue shows up quite some time ago and I found it in the Nabble
    archive for this list:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"http://ettus.80997.x6.nabble.c=
om/Re-USRP-users-Discuss-gnuradio-RuntimeError-fifo-ctrl-timed-out-lookin=
g-for-acks-td8198.html">http://ettus.80997.x6.nabble.com/Re-USRP-users-Di=
scuss-gnuradio-RuntimeError-fifo-ctrl-timed-out-looking-for-acks-td8198.h=
tml</a><br>
    <br>
    You might also try upgrading to a much-more-recent UHD.<br>
    <br>
    <br>
  </body>
</html>

--------------020102010102030707050801--

--===============6771088203140624570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6771088203140624570==--
