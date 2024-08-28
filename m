Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEE6962D69
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 18:14:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50BE6385631
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 12:14:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724861687; bh=qfTdcRKzBZWu89xwdLCuBtdYA7hL8MeS7t6aZc3etbQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oD2D00gSb3IP5UtIvIOcAFI1aDX6MdKLtq/pyMDT29hZ7BOowgDQFLi0scg2l/onV
	 C3DsmMYDBxsa33ysR/o2n5nE+p7LMIHfuDe7+pf9n9wGrMFIuSqdvvbJ8czCRdOjM2
	 Z2MKgj+vDAMi9ju/wtYy/uwoNwLbDdBb/FHSKGqiiQ+PX/QwQkGq336gksdIegJNH6
	 q1HWDf/D+0dBD108mp4IxNZdShTj7CWhWMT5HED4ajvzSvreQgJaqTPP6a/siAdlMG
	 Y3HSBNhGufJOxpvADTjJEHowFo0cdu7v5QudKzNQSW2mCWKvwRIYgfvTa+mmSieuGz
	 uCnIdiLZ9nSxw==
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 36B18384639
	for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 12:14:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="d+hEMpuy";
	dkim-atps=neutral
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5dccc6cdc96so3771143eaf.0
        for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 09:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724861642; x=1725466442; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0HdTDSv+M7E7ezsg+FuyH1a29HLPJXGKURkZb262s1g=;
        b=d+hEMpuyj4DmEOX8pEE687jcX1yqY+NzJvh2KK6uAdZHmTk8+G6/PLH1kBgUGRXKQG
         ay14EoAoZZ6hGMmAjoMD8s/WvUmHpIzuQlRogfPPzaiAyIBcSCRh2j+nWXOv5x6PrD5r
         xQ8Iq8JKtqcqKAXTlZilrhp7m4e3AZYdCpt3/gxE1JfkwoL6b5qsIqT8Q7oO0O60D8Eh
         QKFGmioXu+DOaGWq05KGVQhQumll5CQcFk0bQonyb1xS4EnE79mYjAE+3OSwD3u3W6hD
         Fo0gRTx4fBF/9yt/fLLQi6gM0/L25Aa9GwxOvqukyhS6yUKhTMPSJ0jMCUxji8Pe/a+z
         MXAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724861642; x=1725466442;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0HdTDSv+M7E7ezsg+FuyH1a29HLPJXGKURkZb262s1g=;
        b=TkqNvYcKqsKg3Fgt/arHP7uEfz5FwqgMqhJlSIqvxf/2OPnoWU+8iJbq0Wba0Kdj03
         Xa8m8Mr9wPSjflZUsfthvWiEzDkPXmwZeDS/Ae0JE+iq0BeK+ANxW3vGQC7UP6GT3PdT
         Vo5EhggOPpQmBu1pro4oAqgaRfS+4nb4OgriFgXU2tdraTA6KT6NZjPHs6ldQ1SUeybp
         +Ia6pEvEC2hL04ggl1XovAN49tow1cSU+kVHIksA81WGEAeK/ySyBZpvo97GUqTDDT3u
         2CocpBJXb3P6OP4bgZPAXSujzHDXcnnVxBmjSS+ORY5wLal2j06TT3OCh8iqWsWYsaBX
         Vsag==
X-Gm-Message-State: AOJu0YyDYsc8mS5/vdXA4DRfullh5t6ERkluCNkMVtc7snWwL6dGj6lc
	50cH9dCAAYlpiLSxNVqtX+lWi6OthI2OGHg5oigBFtWlw8feKzx59ECiJEuB6r5V/AKBcyYuk8h
	AqToW2S/ao4RvvEoymkBRhHZfHiXeSg==
X-Google-Smtp-Source: AGHT+IFUG3S48jjf9o1dXX0ho1/CVAGOzKsDo144UZdyJ5hmKAWdMwvyLrcHUDlGsGk2uVcsW3MqlGbSQN181TGbhVo=
X-Received: by 2002:a05:6820:994:b0:5df:81ed:2655 with SMTP id
 006d021491bc7-5df97e8e8b9mr337412eaf.1.1724861642196; Wed, 28 Aug 2024
 09:14:02 -0700 (PDT)
MIME-Version: 1.0
From: ali siddig <alisiddig12@gmail.com>
Date: Wed, 28 Aug 2024 20:13:51 +0400
Message-ID: <CAKacFEn+UXiCb57ev_-rvjcOxp+vF3BJ3pLtxEdJvVvc3ZGh=A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: KPVZAWXOFTQEAYF7BZRP5W3G66QFPGGM
X-Message-ID-Hash: KPVZAWXOFTQEAYF7BZRP5W3G66QFPGGM
X-MailFrom: alisiddig12@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] QPSK modulation and demodulation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KPVZAWXOFTQEAYF7BZRP5W3G66QFPGGM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4505710407270701183=="

--===============4505710407270701183==
Content-Type: multipart/alternative; boundary="000000000000784efa0620c0a5f9"

--000000000000784efa0620c0a5f9
Content-Type: text/plain; charset="UTF-8"

Dear all,
I have tried to use the QPAK modulation and demodulation exapmle from the
tutorial in the link below. I am using two USRPs B205 as transmitter and
receiver, frequency 910MHz , sampling rate 300k or 1 M sps. However, the
received signal's constellation after Costas loop are not synchronized
(points everywhere in the constellation diagram). Am I missing something i
have to change in the usrp setting or synchronization block?

https://wiki.gnuradio.org/index.php?title=QPSK_Mod_and_Demod#Phase_and_Frequency_Correction

Best regards,
Ali siddig

--000000000000784efa0620c0a5f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Dear all,<div dir=3D"auto">I have tried to use the QPAK m=
odulation and demodulation exapmle from the tutorial in the link below. I a=
m using two USRPs B205 as transmitter and receiver, frequency 910MHz , samp=
ling rate 300k or 1 M sps. However, the received signal&#39;s constellation=
 after Costas loop are not synchronized (points everywhere in the constella=
tion diagram). Am I=C2=A0missing something i have to change in the usrp set=
ting or synchronization block?</div><div dir=3D"auto"><br></div><div dir=3D=
"auto"><a href=3D"https://wiki.gnuradio.org/index.php?title=3DQPSK_Mod_and_=
Demod#Phase_and_Frequency_Correction">https://wiki.gnuradio.org/index.php?t=
itle=3DQPSK_Mod_and_Demod#Phase_and_Frequency_Correction</a></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Best regards,</div><div dir=3D"auto">=
Ali siddig=C2=A0</div></div>

--000000000000784efa0620c0a5f9--

--===============4505710407270701183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4505710407270701183==--
