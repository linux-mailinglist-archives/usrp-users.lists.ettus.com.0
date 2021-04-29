Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE2136EAB2
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 14:42:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D693384127
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 08:42:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="iQ3IbZk/";
	dkim-atps=neutral
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	by mm2.emwd.com (Postfix) with ESMTPS id CD881383C9B
	for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 08:41:37 -0400 (EDT)
Received: by mail-oo1-f54.google.com with SMTP id s1-20020a4ac1010000b02901cfd9170ce2so14624362oop.12
        for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 05:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xGlhHWY8I14WO5DPr0YfzCp9XqNADyCpPrde9l6X0Ik=;
        b=iQ3IbZk/SwQfCTq8cOo/ki/DjcWV/PLV0c436r13u5SuulyrPyN4YHpkWAmvD20bwQ
         GwPXyeoiWcabTk4yrcCum8oAu9YNrbjJv0CI8Imp2eQCJKAoDIxlFdgzIdyR+CCNFHMM
         EbZoyBW00F08aVKxTlGcqMidcuUPDS9KVyPzmCuaes/b0fcQMwTC6kxZV0SC/Cy2PcXA
         dpI2/vIHrMzS8Gp6coEGWvkbwqt9EOCCjJM5vIJXNMeN5yX8afTERa36k6/EeuIByTwM
         MzSDQKMKHcARmBnczg9kBksKorM1xZlL840bOm+zNmm9wNCj6OV8jsZGus8GMI6EUT3B
         VPGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xGlhHWY8I14WO5DPr0YfzCp9XqNADyCpPrde9l6X0Ik=;
        b=Z1pYI5FpqF+EKkdRCYgSkwkUvOfEfcqtQESTZZXhbA1AZgqmljmPBl9amrXTMdAoKW
         PZpQlQ8bPYUIHMpIdIei1uXOR3P2NAVlyaqu6DY3V4jIRH7qGwGoS9izzUtWNB2s3cfV
         VbYPuAN2QlFBr9P9ks5O+RH928ekXPDj9D+nPnSOZFED1UXVPKndGGQnOKZ5sj6o5pdS
         ekPXpdo9Oltfb7XrENbq+ak95V/Mr0FqRNE1dsHrMtwqfYEecCaARuRXKe29SEwPcX+G
         tybCs9KuONacGv4R1LzxCX7LcDw+Jeb8tXhVGRmJ1ZraWRY1O8euoJod6cytDno1f1Tm
         UGxQ==
X-Gm-Message-State: AOAM531aOIbh3+HQOcz4TQV8rnENBvoI6Nfl+bjKl+Th9KkM1vq3GLcj
	AKWEmRLFgFHnt3K6S4RELlVl6bm7VUAMo/ztvT7SQQ==
X-Google-Smtp-Source: ABdhPJyNqKdfSBw+Ke+iEC0Fvt5nsfjvKZLGUVMDtXE4NbJv/6Ksnq3j5lxGC1wSOHmeR1Ymk61Tio4Un3mWbj7iCto=
X-Received: by 2002:a4a:a6ca:: with SMTP id i10mr26993376oom.62.1619700096884;
 Thu, 29 Apr 2021 05:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <bRGyJ3E0RBahjeyHmFTmjGV41ju25Z5lmODt6saAFk@lists.ettus.com>
In-Reply-To: <bRGyJ3E0RBahjeyHmFTmjGV41ju25Z5lmODt6saAFk@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 29 Apr 2021 08:41:26 -0400
Message-ID: <CAB__hTTFcB=sOD-rm5x+nxD+YUHBax27GuWzLvQ0Hc-8JMPPFg@mail.gmail.com>
To: arjan.feta@unifi.it
Message-ID-Hash: PWOJCUPYFFI4RXD3DXXI6K5JZ2YZ5L6W
X-Message-ID-Hash: PWOJCUPYFFI4RXD3DXXI6K5JZ2YZ5L6W
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to receive two signals in parallel with one TwinRX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PWOJCUPYFFI4RXD3DXXI6K5JZ2YZ5L6W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0339025082876254099=="

--===============0339025082876254099==
Content-Type: multipart/alternative; boundary="000000000000eb249105c11bd055"

--000000000000eb249105c11bd055
Content-Type: text/plain; charset="UTF-8"

Hi Arjan,
I noticed two mistakes in the graph. First, you have 2 radios each with 1
channel. In your case with only 1 daughterboard populated, I think it
should be 1 radio block with 2 channels.  (A radio block is roughly
comparable to a daughterboard).  Second, you have the RX antenna set to
"Rx1". This is not valid.  It should be "Rx2".
Rob

On Thu, Apr 29, 2021 at 5:49 AM <arjan.feta@unifi.it> wrote:

> Hi Marcus and thank you,
>
> here is the gnuradio flow-graph and a diagram with the physical setup.
>
> cheers,
>
> Arjan
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000eb249105c11bd055
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Arjan,<div>I noticed two mistakes in t=
he graph. First, you have 2 radios each with 1 channel. In your case with o=
nly 1 daughterboard populated, I think it should be 1 radio block with 2 ch=
annels.=C2=A0 (A radio block is roughly comparable to a daughterboard).=C2=
=A0 Second, you have the RX antenna set to &quot;Rx1&quot;. This is not val=
id.=C2=A0 It should be &quot;Rx2&quot;.</div><div>Rob</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 29, =
2021 at 5:49 AM &lt;<a href=3D"mailto:arjan.feta@unifi.it">arjan.feta@unifi=
.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><p>Hi Marcus and thank you,</p><p>here is the gnuradio flow-graph and a =
diagram with the physical setup.</p><p>cheers,</p><p>Arjan </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000eb249105c11bd055--

--===============0339025082876254099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0339025082876254099==--
