Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E59892E01A
	for <lists+usrp-users@lfdr.de>; Wed, 29 May 2019 16:49:35 +0200 (CEST)
Received: from [::1] (port=42486 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hVztO-0006GN-4M; Wed, 29 May 2019 10:49:26 -0400
Received: from mail-lj1-f175.google.com ([209.85.208.175]:39257)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ferondylan@gmail.com>)
 id 1hVztK-0006CO-PH
 for usrp-users@lists.ettus.com; Wed, 29 May 2019 10:49:22 -0400
Received: by mail-lj1-f175.google.com with SMTP id a10so2752220ljf.6
 for <usrp-users@lists.ettus.com>; Wed, 29 May 2019 07:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=e5pB2XMpQJBn1AQUw0sUDMa/kSAp+q60oj71ESTldEw=;
 b=oOuvIhPLByBXTqVZ0bEG+wwtAFtHDqU4diBhfbaVox1NLiTY5C+hPAyjMNnUPVFBzc
 gp53egzQxCIzgNEr+r7OsHJ9p7ERfgRw43sBGsmxwFVVWKAioNLjORxAQky9DelxtCzN
 oDiajXr39+b0TvGk40H0Gj0ohsQ4Fd/6WNfSJMFd0antOU/IUsxheFtp7p4ylIsYHH//
 2HvuF9T60RCgmXdcdAkJVP3qqxPIGO+WbQurWr+HBTO7q7TYsi9jr6b5E/tEZh+A6kD9
 +YQJKqyJzklIGVUN7vKCj44aT1R6vs2WuFAHCobgJywSWSCrabrzwr6je1fVQX6Bg1wV
 AwPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=e5pB2XMpQJBn1AQUw0sUDMa/kSAp+q60oj71ESTldEw=;
 b=ZXFJ+3vAsqfI4KjR50hLjAgREKFb+BKKBH876wGJe8C/NXUEJ+kDocp2CWcqn7tVBr
 I7JIfFDufUaXVGJZ5TONqis1SP7tqLuIatbXxIZwIFe+WCBifNhXXbgKisO1wwQx+od3
 KXtt1e/kNkz1U97YZJ7K6yEgWUE7wu/tTiHAST9Hr/OpnI3Wxlj8d7mqwH0BPl4KTc6f
 S1uvQjzThzcYIh/gKs0mYM3Nm/E2uhpSgknoaB/osaj1hFQphaVPmHpKoiDloVxfxiST
 dahDb2F8h9ne39ZRs/Niu/MB3fBn9HfkcmkwoYy7frt+HIoSp7JOFkLlQQxzzbqzT5Ir
 MhAQ==
X-Gm-Message-State: APjAAAUBJQhSlq4DdwKz91o3Dub2ln4FwUx1bhFp1Lb2NaLp8d2fdccg
 W3EN/IPb6Y74FswhMG8A3A6dsEE9ZcFkUbJ/gxs/Hrdsbmo=
X-Google-Smtp-Source: APXvYqy6Ep45YeEdMDvntVbJ/4FYarOfW6XvEyFSUdMajmBjATW4BuqV4G3z+AF/43ZVfXrunPjUCYX05ZeOgkT0Nlg=
X-Received: by 2002:a2e:9f44:: with SMTP id v4mr16351289ljk.85.1559141321077; 
 Wed, 29 May 2019 07:48:41 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 29 May 2019 16:48:27 +0200
Message-ID: <CAOV5X-VZ6a4rHs7GxNC0FhBaDpvOgEPz+D7pMroZUsmFB4fG7A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Communication between two USRP : mismatched spectra
 between transmission and reception
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Dylan Feron via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dylan Feron <ferondylan@gmail.com>
Content-Type: multipart/mixed; boundary="===============7388782924886931870=="
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

--===============7388782924886931870==
Content-Type: multipart/alternative; boundary="00000000000098f647058a07e0d2"

--00000000000098f647058a07e0d2
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I am trying to make two USRP communicate between each other : for the
transmission, I'm using an HackRF One USRP and for the reception a NI 2921
USRP.
As a first test, I'm trying to send different basic signals like sine
waves, square waves, triangle waves,... with the HackRF One and receive it
with the NI 2921 USRP at a carrier frequency of 2.43GHz.
1) Here is the block diagram for transmission, the time signal and FFT plot
: Transmission pictures (block diagram + FFT + time signal)
<https://photos.app.goo.gl/p9wuCYGHviSaV5cT7>
I'm sending the signal at 2.43GHz with a sample rate of 200kHz. Here the
signal sent is a composition of a real component which is a square wave at
15kHz and an imaginary component which is a cosine wave at 10kHz.
2) Here is the block diagram for reception, the time signal and FFT plot
(once when I am not sending any signal and once when I am transmitting the
composition of signals described above, such that we can see that the peak
detected is well due to my emission) : Reception pictures (block diagram +
FFT + time signal) <https://photos.app.goo.gl/m9eUAXxezY6wMDq66>
I'm sampling at 200kHz and my center frequency is at 2.43GHz.
Whatever the signal I'm sending (a DC signal, a sine wave, a triangle
wave,...), I always get the same peak (and only one) like the one on the
picture. Normally, I should receive the same FFT as the one showed at
emission on the picture.
I notice also that this peak is located at a weird position (2.43GHz +
46kHz) compared to the center frequency (2.43GHz) with no link with the
frequency of the signals sent. Moreover whatever the frequency of the
signal emitted, the peak will always be located at this same position as
well.
I seems like they manage to communicate between each other given that there
is this peak appearing when I am transmitting the signals but I do not
understand the logic behind the spectrum received..
Can somebody enlighten me?

Thank you for your precious time and your help,
Dylan

--00000000000098f647058a07e0d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div><br></div><div>I am trying to make two=
 USRP communicate between each other : for the transmission, I&#39;m using =
an HackRF One USRP and for the reception a NI 2921 USRP.</div><div>As a fir=
st test, I&#39;m trying to send different basic signals like sine waves, sq=
uare waves, triangle waves,... with the HackRF One and receive it with the =
NI 2921 USRP at a carrier frequency of 2.43GHz.=C2=A0</div><div>1) Here is =
the block diagram for transmission, the time signal and FFT plot :=C2=A0<a =
href=3D"https://photos.app.goo.gl/p9wuCYGHviSaV5cT7">Transmission pictures =
(block diagram + FFT + time signal)</a></div><div>I&#39;m sending the signa=
l at 2.43GHz with a sample rate of 200kHz. Here the signal sent is a compos=
ition of a real component which is a square wave at 15kHz and an imaginary =
component which is a cosine wave at 10kHz.=C2=A0</div><div>2) Here is the b=
lock diagram for reception, the time signal and FFT plot (once when I am no=
t sending any signal and once when I am transmitting the composition of sig=
nals described above, such that we can see that the peak detected is well d=
ue to my emission) :=C2=A0<a href=3D"https://photos.app.goo.gl/m9eUAXxezY6w=
MDq66">Reception pictures (block diagram + FFT + time signal)</a></div><div=
>I&#39;m sampling at 200kHz and my center frequency is at 2.43GHz.=C2=A0<br=
></div><div>Whatever the signal I&#39;m sending (a DC signal, a sine wave, =
a triangle wave,...), I always get the same peak (and only one) like the on=
e on the picture. Normally, I should receive the same FFT as the one showed=
 at emission on the picture.=C2=A0</div><div>I notice also that this peak i=
s located at a weird position (2.43GHz + 46kHz) compared to the center freq=
uency (2.43GHz) with no link with the frequency of the signals sent. Moreov=
er whatever the frequency of the signal emitted, the peak will always be lo=
cated at this same position as well.</div><div>I seems like they manage to =
communicate between each other given that there is this peak appearing when=
 I am transmitting the signals but I do not understand the logic behind the=
 spectrum received..=C2=A0</div><div>Can somebody enlighten me?</div><div><=
br></div><div>Thank you for your precious time and your help,</div><div>Dyl=
an</div></div>

--00000000000098f647058a07e0d2--


--===============7388782924886931870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7388782924886931870==--

