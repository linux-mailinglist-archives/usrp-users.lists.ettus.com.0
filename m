Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B8C368698
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 20:34:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC21A384828
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 14:34:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TULjYBix";
	dkim-atps=neutral
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 7717A38473E
	for <usrp-users@lists.ettus.com>; Thu, 22 Apr 2021 14:33:25 -0400 (EDT)
Received: by mail-lj1-f173.google.com with SMTP id l22so45625599ljc.9
        for <usrp-users@lists.ettus.com>; Thu, 22 Apr 2021 11:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ORsdB6s/+fPDjccWLFR2Yi0eTw4GGvUf6PaZZMRHalI=;
        b=TULjYBixY0x4JLQgF+SieK8tlPoWL3Ih9Bsg+sMvyLHIqdo/CJ87OgusDdwyl35W+l
         hkiQ5Buo+LNu7tPm4ysGYWn4a24LrWOyAM4Ddy2Wdq5cQyzh3WZRVhrIBCBkoVjudisA
         SmnU9A6QLadwyEk3iH77WoCj5zLge3XA9q4gh59yr5fW1j7rc98TGtxxrl7B4QHowtxq
         dgCCgdw3WvgBqYrn7HM/FRMDKkMZYe9RV8E89k4F92epB05tMer9lOWid7/kScxZU+vA
         mgQ6IVsEBztMUrsMmUgNmwZRxntJFGtMHHWfFgDCSvbS0p1hC6TrkL+7ZSPYSSCMD/q1
         KoKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ORsdB6s/+fPDjccWLFR2Yi0eTw4GGvUf6PaZZMRHalI=;
        b=kjFkeQKdVjVjGp///ZCcs0aI5WtjTH51Qe1rEVmDKcjw1ROKUtbKULBiNp0SmkTFjw
         IappIEU3HgGnpFJb+IeS0L/pE5oNLIFtn7hXY27UAkQejSJcDSsz3UmwE8Rze9QT/A/+
         rB+jT7/YKjRA1SZvyY9u5IOBUWI7AUPoOk9jv9EoFtxhJPLC4Pz+Zccjb0jtm8hIuVkU
         8RglfjzX50GFQYno4aAitBTJ8onaDZJ6reA3T8nb5iVYdghuOr7JBdpeKrqfQJqIFdXg
         5w2idaHF1W4GVXltuZ6AOzapP/UIVAvE0w3o2hI3DmiQfPi+rlseJgbVMV54m7LwQkFM
         /dTA==
X-Gm-Message-State: AOAM5338jo2CBQ1bjeZNbkrbTXHX8+a2R9JNNdNh9QDTK9Yy0niSQo3p
	E8+aegXUgyxyyHk14Mx4YzzMOIVVaBcQ3AC0cqOecbad
X-Google-Smtp-Source: ABdhPJwzRNcwZmOilPIK2FvYXWgoChuMTSv044aoFolU0HhKY1L/pAHeRw1rMz/G0WU2nqH8huu9idwGCYi+XRTKeYM=
X-Received: by 2002:a2e:b4a8:: with SMTP id q8mr99621ljm.413.1619116403604;
 Thu, 22 Apr 2021 11:33:23 -0700 (PDT)
MIME-Version: 1.0
From: Glenn Hazelwood <hazelnutvt04@gmail.com>
Date: Thu, 22 Apr 2021 14:33:12 -0400
Message-ID: <CABD0DOtYe=rSkdNqgQbWymNq4eNO2+LmW35+1WkvO4zcE8+H5Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: JZHYJJHBSUC32QQ7CKOY6HY4VZP5Y2MR
X-Message-ID-Hash: JZHYJJHBSUC32QQ7CKOY6HY4VZP5Y2MR
X-MailFrom: hazelnutvt04@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Zero Samples for UHD 3.15 and B205mini with Ubuntu 18.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JZHYJJHBSUC32QQ7CKOY6HY4VZP5Y2MR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0969027467946060319=="

--===============0969027467946060319==
Content-Type: multipart/alternative; boundary="0000000000001641a905c093eae6"

--0000000000001641a905c093eae6
Content-Type: text/plain; charset="UTF-8"

I am using UHD 3.15 on a Jetson Xavier with Ubuntu 18.04.4 LTS with a n
Ettus B205mini SDR. I am developing my application in C++. My cpu_format is
'fc32' (complex 32-bit floats)  and my over-the-wire-format is sc16
(complex 16-bit ints).

My application is receiving complex samples with one channel. I tune to a
frequency, wait for the LO to settle and then recv() to get the samples
like in the UHD example, rx_multi_samples.cpp. But then I increment the
tune frequency, tune to the new frequency, wait for the LO again and then
recv() again until I have received samples from all of the tuning
frequencies of interest.

Is it normal to get zero-valued samples even after waiting for the LO to
settle?


P.S. Bonus issue:
Also when I plot the samples, I see some of the samples (real and complex
parts) go to 1.0 and -1.0, which is the max value for several samples. I
set the gain to 50.

-- 
Diftor heh smusma
-Famous Vulcan Phrase ;)

--0000000000001641a905c093eae6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am using UHD 3.15 on a Jetson Xavier with Ubuntu 18.04.4=
 LTS with a n Ettus B205mini SDR. I am developing my application in C++. My=
 cpu_format is &#39;fc32&#39; (complex 32-bit floats)=C2=A0 and my over-the=
-wire-format is sc16 (complex 16-bit ints).=C2=A0<div><br></div><div>My app=
lication is receiving=C2=A0complex samples with one channel. I tune to a fr=
equency, wait for the LO to settle and then recv() to get the samples like =
in the UHD example, rx_multi_samples.cpp. But then I increment the tune fre=
quency, tune to the new frequency, wait for the LO again and then recv() ag=
ain until I have received samples from all of the=C2=A0tuning frequencies o=
f interest.<div><br></div><div>Is it normal to get zero-valued samples even=
 after waiting for the=C2=A0LO to settle?</div><div><br></div><div><br></di=
v><div>P.S. Bonus issue:</div><div>Also when I plot the samples, I see some=
 of the samples (real and complex parts) go to 1.0 and -1.0, which is the m=
ax value for several samples. I set the gain to 50.<br clear=3D"all"><div><=
br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"=
line-height:19.046875px;background-color:rgb(255,255,255)"><font color=3D"#=
000000" face=3D"trebuchet ms, sans-serif">Diftor heh smusma<br></font></spa=
n></div><div><span style=3D"line-height:19.046875px;background-color:rgb(25=
5,255,255)"><font color=3D"#000000" face=3D"trebuchet ms, sans-serif">-Famo=
us Vulcan Phrase ;)<br></font></span></div></div></div></div></div></div></=
div>

--0000000000001641a905c093eae6--

--===============0969027467946060319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0969027467946060319==--
