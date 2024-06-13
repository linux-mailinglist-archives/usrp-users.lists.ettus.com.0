Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D10F19074DD
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 16:14:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9E6138530C
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 10:14:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718288059; bh=PUon0s2jQGtuRqa3NQSZGqHActElSwMQu8Y68MZd3Co=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=L39qz8otvTURrNcrTudiu1ZtjG01saVceAiQh6SeCDoGpTQ8Oasw9WVcyZweURkMV
	 VTX1EgrC5JUJ9sHXZmxtVvGMI+XiqaVOkevIAsripHk99u1TS8CuvMHK+3umkVPdWA
	 4WgUF/P9u7iYyj8VfvRDqeOpMeDF6nNysnIuzY4TAC8DvxfHG0fs6yGensZZDHtPWo
	 9R5QQjhOByekfQpUikjUVyRl91mJI/Jk0TxtVIq+I80DgwUb/1icOW+rqv9L7aVGZB
	 +/Ye+8Bl3XW06lHieDf6721etNTE2Va5zdxG++f0B9hCF7TNJ+DFbViLlunKjKPOnY
	 4Zo8PSb5+k2Yg==
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 84911385154
	for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 10:14:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BSoOr1A4";
	dkim-atps=neutral
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2bfff08fc29so901290a91.1
        for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 07:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718288046; x=1718892846; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wnl5KT8kKfzdp8sYyNB8n98NzgjySEGhWZJF79oPSVI=;
        b=BSoOr1A4hl8qlJuDpK+QYEQcxcjnw5VR+tXHq+niB9xCWuaQDinvgSVJ6Di7biUOmv
         B9eGiEcTLGLEfd75eFBLILxGffW4GL1858ttOw5aTU0me3N/WAcND73qq+MZGVv0mD6p
         9op7B5ROhPDgnCtft0+h+Fnqz5Nc0xiSzHNaygRenyFqAukzOtBaOt5Rj+Qz8yKrYQvj
         UoBDr7/ffe8X1xE+iU/MHHFc70ShcVhuLxIFcY95BxYa6dv9r819sladmOMic5seWR/X
         DzsPXI/IgM3ylGbFqPWcDS/MhCLLcLDCyFd+MLyk9sLbBCdi9PkjN0mWWgP7ZDUysSsz
         JImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718288046; x=1718892846;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wnl5KT8kKfzdp8sYyNB8n98NzgjySEGhWZJF79oPSVI=;
        b=GJ+RUj+L2tgeMVrwzqHmhWTSB502utwjJjZUOvwsqPB5dJbMAsUmCFlQPc42Y4zAf6
         Qd3pEZOYTW+FEfeYdb35xc8BFoiv/hI1E2/13LKsmN02Tr6wkrEpmnwDR3i7IgUSSKAY
         OeNRoIYIhL6mwr2GBU81lhmhb55SG6n+0IrikKnqMCU3Ae4dK8+wkyT6Abeftt9BEKYd
         YanOuQshaIqP29ZijsnSGMT/0AB+Xr9JlXIHREzaHSDRIR2RBpbAS6aSb0Vx/Q9l8yX2
         vPI56K5Zw9QFTQcWUSYNQeg6UVBeDEJ0Qv3gH2xsvCOMuAreO34Tt5ycDAT+W/YTOGfF
         c9Ww==
X-Gm-Message-State: AOJu0YzI5vLa8QVi7tYplo9jjUImDKo6YL7dPW0xmKlWM5V/eGn9WUR+
	vdlqMQfTscPKMwljyEC7mutz7tCkcNDTboULNvcBR+TVL2iJdXYbv1tTJ6BXofxjNVDyWyfbvhQ
	jvc4yGc0m5Gp8DGwfwdyp7HJkiFIYGPML
X-Google-Smtp-Source: AGHT+IGyHSuqnMRlI1ddp3FzPNu/oE8KjhSvoLAs8G/18atwBmVnIbSU0maoAc2JHy7kUFAoOOpsfpDcV72myKAd0+g=
X-Received: by 2002:a17:90a:9408:b0:2c4:c2d5:716f with SMTP id
 98e67ed59e1d1-2c4c2d5802amr2140855a91.1.1718288045682; Thu, 13 Jun 2024
 07:14:05 -0700 (PDT)
MIME-Version: 1.0
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Thu, 13 Jun 2024 16:14:31 +0200
Message-ID: <CAFPzw1=hsoXJe7hH_0C5OweSZJGf-Ht3VZGuzqT_wqdh1cUVpg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: XGCE6DAH673I64QNDMJUZGIPQGRV5OYF
X-Message-ID-Hash: XGCE6DAH673I64QNDMJUZGIPQGRV5OYF
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] IOError: x300 fw poke32 persist with large adquisition times
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XGCE6DAH673I64QNDMJUZGIPQGRV5OYF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5436172201148307116=="

--===============5436172201148307116==
Content-Type: multipart/alternative; boundary="00000000000095b8d1061ac61cbe"

--00000000000095b8d1061ac61cbe
Content-Type: text/plain; charset="UTF-8"

Hi,

I am working with 2 USRP X310 equipped with TwinRx. They are connected to a
PC with Ubuntu 22.04 and UHD 4.1 via dual 10Gb port.

I am using the rx_sample_to_file.cpp example from UHD 4.5 version for 8
channel acquisition in continuous mode. I do  acquisitions of  5' of data
continuously with a sample rate of 25MHz.  At the beginning it works
correctly, but after a while (between 40'-50') it starts to fail. First it
gives overflows and then it gives the following error:

*[*











*ERROR] [X300] 192.168.40.2 <http://192.168.40.2>: x300 fw communication
failure #2EnvironmentError: IOError: x300 fw poke32 - reply timed
out[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw communication
failure #2EnvironmentError: IOError: x300 fw poke32 - reply timed
out[ERROR] [X300] 192.168.40.2 <http://192.168.40.2>: x300 fw communication
failure #3EnvironmentError: IOError: x300 fw poke32 - reply timed
out[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw communication
failure #3EnvironmentError: IOError: x300 fw poke32 - reply timed
out[ERROR] [UHD] An unexpected exception was caught in a task loop.The task
loop will now exit, things may not work.EnvironmentError: IOError:
192.168.40.2 <http://192.168.40.2>: x300 fw communication failure
#3EnvironmentError: IOError: x300 fw poke32 - reply timed out[ERROR] [UHD]
An unexpected exception was caught in a task loop.The task loop will now
exit, things may not work.EnvironmentError: IOError: 192.168.60.2
<http://192.168.60.2>: x300 fw communication failure #3EnvironmentError:
IOError: x300 fw poke32 - reply timed out*


Once this happens it is impossible to recover the system, it starts to give
the same error after 30''-40''. I have tried to let the USRP and the PC
rest for a while, even re-flashing the FPGA, but the error persists. If I
let the system rest for days the error disappears, but I observe the same
behavior again after those first 40'-50' minutes.

I don't know why this happens, nor how to solve it. Any indication?

Thank you in advance.

Regards,
Anabel

--00000000000095b8d1061ac61cbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am working with 2 USRP X310 equip=
ped with TwinRx. They are connected to a PC with Ubuntu 22.04 and UHD 4.1 v=
ia dual 10Gb port.</div><div><br>I am using the rx_sample_to_file.cpp examp=
le from UHD 4.5 version for 8 channel acquisition in continuous mode. I do=
=C2=A0

acquisitions of=C2=A0 5&#39; of data=C2=A0 continuously with a sample rate =
of 25MHz.=C2=A0 At the beginning it works correctly, but after a while (bet=
ween 40&#39;-50&#39;) it starts to fail. First it gives overflows and then =
it gives the following error:</div><div><br></div><div><b>[</b><i><b>ERROR]=
 [X300] <a href=3D"http://192.168.40.2">192.168.40.2</a>: x300 fw communica=
tion failure #2<br>EnvironmentError: IOError: x300 fw poke32 - reply timed =
out<br>[ERROR] [X300] <a href=3D"http://192.168.60.2">192.168.60.2</a>: x30=
0 fw communication failure #2<br>EnvironmentError: IOError: x300 fw poke32 =
- reply timed out<br>[ERROR] [X300] <a href=3D"http://192.168.40.2">192.168=
.40.2</a>: x300 fw communication failure #3<br>EnvironmentError: IOError: x=
300 fw poke32 - reply timed out<br>[ERROR] [X300] <a href=3D"http://192.168=
.60.2">192.168.60.2</a>: x300 fw communication failure #3<br>EnvironmentErr=
or: IOError: x300 fw poke32 - reply timed out<br>[ERROR] [UHD] An unexpecte=
d exception was caught in a task loop.The task loop will now exit, things m=
ay not work.EnvironmentError: IOError: <a href=3D"http://192.168.40.2">192.=
168.40.2</a>: x300 fw communication failure #3<br>EnvironmentError: IOError=
: x300 fw poke32 - reply timed out<br>[ERROR] [UHD] An unexpected exception=
 was caught in a task loop.The task loop will now exit, things may not work=
.EnvironmentError: IOError: <a href=3D"http://192.168.60.2">192.168.60.2</a=
>: x300 fw communication failure #3<br>EnvironmentError: IOError: x300 fw p=
oke32 - reply timed out</b><br></i><br></div><div><br></div><div><br></div>=
<div>Once this happens it is impossible to recover the system, it starts to=
 give the same error after 30&#39;&#39;-40&#39;&#39;. I have tried to let t=
he USRP and the PC rest for a while, even re-flashing the FPGA, but the err=
or persists. If I let the system rest for days the error disappears, but I =
observe the same behavior again after those first 40&#39;-50&#39; minutes.<=
/div><div><br>I don&#39;t know why this happens, nor how to solve it. Any i=
ndication?<br><br>Thank you in advance.<br></div><div><br></div><div>Regard=
s,</div><div>Anabel</div></div>

--00000000000095b8d1061ac61cbe--

--===============5436172201148307116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5436172201148307116==--
