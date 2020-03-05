Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D7217A8D7
	for <lists+usrp-users@lfdr.de>; Thu,  5 Mar 2020 16:29:22 +0100 (CET)
Received: from [::1] (port=44666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9sR4-0006g5-Eh; Thu, 05 Mar 2020 10:29:18 -0500
Received: from mail-lf1-f48.google.com ([209.85.167.48]:34496)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <100283180@alumnos.uc3m.es>)
 id 1j9sR0-0006ZI-6V
 for USRP-users@lists.ettus.com; Thu, 05 Mar 2020 10:29:14 -0500
Received: by mail-lf1-f48.google.com with SMTP id w27so4985244lfc.1
 for <USRP-users@lists.ettus.com>; Thu, 05 Mar 2020 07:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=alumnos.uc3m.es; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=kMWGq+4KsFvwVpJFbJAf8AW6MMfrZCL0kJLArjwpCzU=;
 b=N1oEogeTvbKz0A2nvKNoZMY5EMSho3XKa+rqGoMpTE2S5Q/bpyI7IUwAUrY6bsgplj
 HBbuE0YJM7N7g9YqsOOPYWmWfxYf6B/iaTb4vJhdfSU1Hf4s8V7A028SUrE/gw8a5fPh
 nsuGSbI5SZ3IPfXl3mY3PlYv5ofyb+4quSkPzYuET4HoQxsRU7Qyt08AZeXMA0DYHOC8
 6FLKp9a2Cv3v8NtAu3jsHgO46msTUbD/A/FStwsqjQSEiBEc5oQysN/uVnPyd6/I64dj
 7frw0uz9G7YdHUwUkTfWAPLp7yUx8ewq3R1f+zWH9JHqevQO9KchNHgF5acn2P4w4tFJ
 KlmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=kMWGq+4KsFvwVpJFbJAf8AW6MMfrZCL0kJLArjwpCzU=;
 b=IZisxCaYgwdoM7bD22N5Qp8wCTi4jyWNz1aM3qrekzyU+moHpqFLku3JE0Ldgr1x0j
 6JeLq7FSZ7Hm6SI9jVj9c0OG73TfLN1X+1pbHKhqvIgQmw8ftHjV4XLhfxGDicIC5e2N
 GyvXRFC117VG2ZrTV6L70bAPsgcWFo7B8ggckZiId7UcYE3cJRyTt8Q+PUjlZcCr9Fup
 e0+fVvXH/DE3j4Pdq6WhjrLUpU7G43WQsE9UQJVrmpj7fqqY1TJtjkipB6HwMBhdmgmb
 5qdAQivjyQVlnDcDDnIC/jFCry/2omkXRM4eg/linD0gczieSQuQ+sMz19bsp6zYv00v
 FX7A==
X-Gm-Message-State: ANhLgQ3DRKOZopjlCFYt4ThYFQpo0ktnDT+4Q5iQLPmSLzPRoJHLuAz9
 mZOhsRJEnkiNMNr1xTFVVJ8Ivo9ObJWsJiXSan3LzgAv
X-Google-Smtp-Source: ADFU+vs30TrYS5CIyO3qtvCweGteHJcHiSbzsr7Sl+M6i52FhTOdG8LzLwvgnpKun2LxueA3/L77ZXf7j2ZlZcwhK+k=
X-Received: by 2002:a19:5e06:: with SMTP id s6mr6175824lfb.154.1583422111856; 
 Thu, 05 Mar 2020 07:28:31 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 5 Mar 2020 16:28:20 +0100
Message-ID: <CABN-bdvmvYTF6+c8G5cppUQ-fFnVTLAi6pLECviJJSJF10rZqQ@mail.gmail.com>
To: USRP-users@lists.ettus.com
Subject: [USRP-users] Synchronization and coherence channels x310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: ALEJANDRO BLANCO PIZARRO via USRP-users <usrp-users@lists.ettus.com>
Reply-To: ALEJANDRO BLANCO PIZARRO <100283180@alumnos.uc3m.es>
Cc: alejandro.blanco@imdea.org
Content-Type: multipart/mixed; boundary="===============6083455914094311357=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6083455914094311357==
Content-Type: multipart/alternative; boundary="00000000000081d6ce05a01d300c"

--00000000000081d6ce05a01d300c
Content-Type: text/plain; charset="UTF-8"

Dear USRP community,

I am trying to send 160MHz WiFI signal by a x310. Unfortunately, I do not
have the UBX which allows bandwidth of 160MHz, so I am using two CBX of
120MHz each one.

We properly split the 160MHz wifi signal into two 80MHz signals. Our aim is
to send each 80MHz signal by one of the CBX so that we can transmit the
whole bandwidth. We transmit each signal in two 80MHz WiFi channels
(contiguous channels).

The issue is that we are using a commercial router as a receiver and it
cannot detect the 160MHz signal (80 + 80). I am wondering if the two CBX of
the x310 are completely synchronized or not. From my point of view, the
clock and the PLL should be the same for the two CBX but, is there
something that I am missing? Because the central frequencies are not the
same for the transmission, so I do not know if this creates synchronization
or carrier frequency offset issues.

I do really appreciate any information you can provide about time,
frequency and phase synchronization of the two daughterboards using
different central frequencies.

Best,
Alejandro

--00000000000081d6ce05a01d300c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear USRP community,</div><div><br></div><div>I am tr=
ying to send 160MHz WiFI signal by a x310. Unfortunately, I do not have the=
 UBX which allows bandwidth of 160MHz, so I am using two CBX of 120MHz each=
 one.</div><div><br></div><div>We properly split the 160MHz wifi signal int=
o two 80MHz signals. Our aim is to send each 80MHz signal by one of the CBX=
 so that we can transmit the whole bandwidth. We transmit each signal in tw=
o 80MHz WiFi channels (contiguous channels).<br></div><div></div><div><br><=
/div><div> The issue is that we are using a commercial router as a receiver=
 and it cannot detect the 160MHz signal (80 + 80). I am wondering if the tw=
o CBX of the x310 are completely synchronized or not. From my point of view=
, the clock and the PLL should be the same for the two CBX but, is there so=
mething that I am missing? Because the central frequencies are not the same=
 for the transmission, so I do not know if this creates synchronization or =
carrier frequency offset issues.</div><div><br></div><div>I do really appre=
ciate any information you can provide about time, frequency and phase synch=
ronization of the two daughterboards using different central frequencies.</=
div><div><br></div><div>Best,</div><div>Alejandro<br></div></div>

--00000000000081d6ce05a01d300c--


--===============6083455914094311357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6083455914094311357==--

