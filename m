Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8169BAA62C8
	for <lists+usrp-users@lfdr.de>; Thu,  1 May 2025 20:28:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51AF7385581
	for <lists+usrp-users@lfdr.de>; Thu,  1 May 2025 14:28:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746124135; bh=TdNJPajmjFxo+RzRfWILPjnQeCeag/psCh6tCIKsMwg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tppdhTdEbJwSBDOWlkE38KTfN3fK/PO4lncfBPDwNIvWBYMWBpHPCAvyb0hEX5ogz
	 7eEp3624nNto8E9GptsgB1zo7DUrAweggL3Vrlo+UrsQk6XooXCIow0I+I3gCK3C2b
	 PcBssAHx5/OPDwEF9+8ARCcXf+2qsU/6CYCeZ69llqCA9PQKt33PAOwXTiaKbgarla
	 EyD8q5u6FTsJpUWmJpkb2EMcwIfhDvR/ybnwTzhK8UfIiOsrTL2R7qY5TkiiWtm1kC
	 xK8J3Z61tQJf+9TvuyZfKL3vjjzlF1j//8UAk2KD9/BQChmAmW5/hYrStfah2+TelF
	 6G6nMU/YSIO8Q==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id E99813854AE
	for <usrp-users@lists.ettus.com>; Thu,  1 May 2025 14:28:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gat/MV+1";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ac339f53df9so257573066b.1
        for <usrp-users@lists.ettus.com>; Thu, 01 May 2025 11:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746124123; x=1746728923; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1cWiAe1n6KSGQ/JnEQcQr2M2qjlFC9chv80YmfLyahM=;
        b=gat/MV+1PyhO3OSS0MIJN3jAO2Gx8zskUbl+kuHMTEhbCDGhe8SMoT/KTld97c7ViU
         YFBqYt9W4JIqrKZBGJst5BATCAUkeV2I7kNDbVxPVjQnbz79LItFbW4pMp1c7xauZZ4l
         ibq1GwnMzMcBDU+ZQphtbOV4dxBSCrehGezHS4DlAXQ2OFlDEdacbQhkY/xqfFUkULuZ
         tn55lwo0DKrVoav8yM7Qp3POMJaqVOrqPw9JwsP9NTW7RHuEZk6nOEpapHxKlInMsvfP
         uhkQRnuz5NyBibN/Ckt0ieaW5nY5RfJxMyum+0yDqSH7bd9hakimEEoY5Fcz1DJ+7XQx
         uO5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746124123; x=1746728923;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1cWiAe1n6KSGQ/JnEQcQr2M2qjlFC9chv80YmfLyahM=;
        b=S11HYe39mBlYVEjGaswyfG6TZ0BUsCWZoC8ivPR9CQz0ZCIJvp0Ghqd4cBxTwakk9O
         AnmvqjwVpDlzB+x7L0xr6UaH29w3+MM4KVlbMbtz3e+UzcLN4k+ybxSJZHdC4jiSwWpK
         VDdGl3Yjl9rdFjr7mYvxtyoahQjXSyvyDEaCQsddMStcHpgHTp2bIf3NM4N6yiOvjovN
         ORvEOPaoQxUUJ8cl+Q2oK2/i7wm/ZWqY9BM6X19HPBUrbI57/R/ly2rxSB7IjBEauuOg
         f7nl4a1AmfDoXmnappgRkuDeJxHFal9cStiD7GRATKexJlTNUnK11Xed9tLnJ9jaFhWz
         iZUQ==
X-Gm-Message-State: AOJu0YwcmGtXaW5A6gw88CayN1E2raBlNB0iA/7IJqM13f/hVhW/B/iB
	oTw4QgmTi6NPMqBAL3gZTI2Za9O5bYeVWifXij0pXzrRxAeFULBO0TggNv6Ubc/f7q7MNzFbP86
	sttVrOww9DPec/DcImQDoTXhJVhnIyHwZyQ==
X-Gm-Gg: ASbGncugkWdFakdvwb77bFiL/PfyemxPiOlQomWaqsGRNwcalABSROHHUZWwA7oG67w
	I53j4JcDqMTde+f3eNMZMr5H6DWi5YeXPp3/qfYebg1bsIK/y2rViJUvK+RZ7R9x0tkUngQLinf
	L9dcf5yeW84IeVlXEXuc1bBpwXAjBgGlbu
X-Google-Smtp-Source: AGHT+IHfXj+SbIVZRd3Ee8QpJTQqNIY+NJwBPABR1fLM7GsCywDUDbDxHkpiNKe48qp/Byy1acT7gjbqusu+bnphOhg=
X-Received: by 2002:a17:907:6d19:b0:ac7:ecea:8472 with SMTP id
 a640c23a62f3a-ad17aded75cmr29757066b.26.1746124123214; Thu, 01 May 2025
 11:28:43 -0700 (PDT)
MIME-Version: 1.0
From: Pedro Pertusso <ppertusso11@gmail.com>
Date: Thu, 1 May 2025 15:28:32 -0300
X-Gm-Features: ATxdqUGqeU4zHgQc2JIbcyxzYjmxIloWhf6bTJ6oL7gLlMTDLwlWPwQ48Xt52U0
Message-ID: <CAAZwqcBNFqB3Wi-NVt1jhw+b=14ObFB5X0_ROfPcxtzgp4GY_Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: DQSRJXK7RLTOJ7USV3OEKMJBLG4OXX3E
X-Message-ID-Hash: DQSRJXK7RLTOJ7USV3OEKMJBLG4OXX3E
X-MailFrom: pedropertusso@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Overflows while recording GRB signal - USRP B200 mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DQSRJXK7RLTOJ7USV3OEKMJBLG4OXX3E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5526518179219289652=="

--===============5526518179219289652==
Content-Type: multipart/alternative; boundary="000000000000191a210634173428"

--000000000000191a210634173428
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I=E2=80=99m using a USRP B200 mini to receive the GOES Rebroadcast (GRB) si=
gnal at
1.6866 GHz. Before recording, I ran a benchmark using the *benchmark_rate*
script at a rate of 13 MHz, which completed without any dropped samples.
The command I used was:
sudo ./benchmark_rate --args "type=3Db200" --rx_rate 13e6 --duration 600
--rx_spb 4096 --ref internal --priority high

Following the benchmark, I attempted to record the signal at a rate of 13
MHz using the *rx_samples_to_file* script with the following command:
./rx_samples_to_file --rate 13000000 --freq 1686600000 --file
GRB_recording.dat --duration 600 --type short --spb 4096 --gain 37 --ref
internal --wirefmt sc16

Unlike the benchmark, this resulted in several overflows. These overflows
occurred in bursts (typically 3 to 4 at a time) and appeared roughly every
1 to 2 minutes.
I=E2=80=99m running this setup on a ThinkPad T14 Gen 4 running Debian 12 wi=
th an
Intel i7-1355U, 32 GB of DDR5 RAM, and a 1 TB NVMe SSD. The USRP is
connected via USB 3.0 Micro-B. During recording, CPU usage remains below
25%, and I haven=E2=80=99t identified any resource bottlenecks.

While reviewing the USRP documentation, I came across two parameters that
might help: *recv_frame_size* and *num_recv_frames*. I haven=E2=80=99t had =
the
chance to test them yet, but I was planning to try something like:
--args "recv_frame_size=3D8192,num_recv_frames=3D1024"

Any help or guidance would be greatly appreciated!

Best regards,
Pedro

--000000000000191a210634173428
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I=E2=80=99m using a USRP=
 B200 mini to receive the GOES Rebroadcast (GRB) signal at 1.6866 GHz. Befo=
re recording, I ran a benchmark using the <i>benchmark_rate</i> script at a=
 rate of 13 MHz, which completed without any dropped samples. The command I=
 used was:</div><div><span style=3D"font-family:arial,sans-serif">sudo ./be=
nchmark_rate --args &quot;type=3Db200&quot; --rx_rate 13e6 --duration 600 -=
-rx_spb 4096 --ref internal --priority high</span></div><div><span style=3D=
"font-family:arial,sans-serif"><br></span></div>Following the benchmark, I =
attempted to record the signal at a rate of 13 MHz using the <i>rx_samples_=
to_file</i> script with the following command:<br><div>./rx_samples_to_file=
 --rate 13000000 --freq 1686600000 --file GRB_recording.dat --duration 600 =
--type short --spb=C2=A0<span style=3D"font-family:arial,sans-serif">4096</=
span> --gain 37 --ref internal --wirefmt sc16</div><div><br></div>Unlike th=
e benchmark, this resulted in several overflows. These overflows occurred i=
n bursts (typically 3 to 4 at a time) and appeared roughly every 1 to 2 min=
utes.<br><div>I=E2=80=99m running this setup on a ThinkPad T14 Gen 4 runnin=
g Debian 12 with an Intel i7-1355U, 32 GB of DDR5 RAM, and a 1 TB NVMe SSD.=
 The USRP is connected via USB 3.0 Micro-B. During recording, CPU usage rem=
ains below 25%, and I haven=E2=80=99t identified any resource bottlenecks.<=
/div><div><br></div>While reviewing the USRP documentation, I came across t=
wo parameters that might help: <i>recv_frame_size</i> and <i>num_recv_frame=
s</i>. I haven=E2=80=99t had the chance to test them yet, but I was plannin=
g to try something like:<br><div>--args &quot;recv_frame_size=3D8192,num_re=
cv_frames=3D1024&quot;</div><div><br></div><div>Any help or guidance would =
be greatly appreciated!</div><div><br></div>Best regards,<br>Pedro</div>

--000000000000191a210634173428--

--===============5526518179219289652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5526518179219289652==--
