Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9029A9AE80F
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2024 16:17:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D56CC3857E6
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2024 10:17:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729779453; bh=iTq1wGTJho/SnRw8FNpzLpfTLozerxTldcUUcCzGV0M=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Y+I0kle4XWodnFY0crexAX7DpwOWuuQyow/QNd4vqA4Yadin3JOldEVuwvyIau+au
	 xUG8NUkwCmmPhuTnOATaPwixH5eIT6cAMrmTSYtD5FLwHSDny0knXA04pRHlLrozrt
	 KqtCzbHlBAv3614qI1CBooVnuPPOko8xDSVQohyuqXisHo8k5IIlnxQ+wT1r4Hbt1r
	 kkdRgEojN5f32LrG9Njxv6B0UvIErdvU7I/gltWIHPEDvQobl2+9cGfa2495EMuijg
	 A7whdh9EOnbKIDSwZrFk1yL2Tpx8X2S5ZzPzercBXXGgpEPpoMbgETYdKfE1hxRISS
	 4Iqm28i0ZrBgw==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 6023E3857A3
	for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2024 10:17:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="FXGoUnnN";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5c9454f3bfaso1126294a12.2
        for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2024 07:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1729779425; x=1730384225; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lPtEwongbYFN5/xTXFKxmDCq1u2iJo/698CWuUvV+Zw=;
        b=FXGoUnnN3k5HzSoWARvVujKLomfGNr7M20hIivQCBWmr5coVO7wgwlSIS8/zm0H0v3
         6hHQOedaysc/wSd9BK10Bwewu3xaBLiyul1s5qfmy/yOAfz2fucCUDzf7ndkc30s0JVd
         lCqDEv3gYHI/mFoujT2K5CJFcYqKfSQ+KzrzKGo1BwoICpEZRP7AgKjuTot5yf/L4b9g
         GJkvdYyUauuaHB4dtRq/9BhhN5WqFP2VsTbft8meAhpX7jspRFw9oSxUgNJhfndOf6LW
         3FGcIYNBJ5KNclICtFd3UIRWZgR2UjxZs9RpvrksBmxiJQxndXEjeljb4hmCdd5l6MLs
         MD3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729779425; x=1730384225;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lPtEwongbYFN5/xTXFKxmDCq1u2iJo/698CWuUvV+Zw=;
        b=bIgDzQUh9fsjsPnGwtdx9e+xcl4HwHaBxC2afh5qSkEgnFxZbDDjUuo/s/hWAx0nrm
         iHL0ttax2TZlLR6rQex0kORn8OfV6mDf7U6a6n6/P4d6wJowZkXueiA8NgBeQQo0WyAN
         Ijs5avwoiUUJZln6Y8ov01U9dNL2hdbqtRbkyrLyiQgpD/EkV1tcdBPbslhTrbZjdP85
         dYISquiUL292KKpJ+UMzcaaiNf67HP5LdeTYziKwwrM6ZPXIF0LXmozozt/jFjxv4IIA
         ZzL51aAHUhdstMWMM8WANuJyfGVL1qIvLFuxuROxH5+/jHusQouLxNbM2/uVubFym7rW
         o1NA==
X-Gm-Message-State: AOJu0YytgdDuCrCuPV7Lzxe2HSW24Mi9BzBllfMgh/D535zZGLpsWJ/9
	gxPIILd4S+9UCgAAtZ/LI9KTPTUN7e2xiGljqrpoIT8brHupAjxgAstYZmh2HyKyK6tKoLFaKZP
	aXRu3oUqzVfhxy7UQslzMEew4H1y7dlzN1EupQVDG4H+cwtsYV+Y=
X-Google-Smtp-Source: AGHT+IFmvyJzNIkRVKRnNao3F0zi1TvxRllzOupc6lGddZ1bKuJq4GdR67eusdmgzoWK+mzTXqPn9zvyKc1R58bfbwI=
X-Received: by 2002:a05:6402:5255:b0:5c9:87a0:4fcc with SMTP id
 4fb4d7f45d1cf-5cb8b1a30dfmr5208370a12.16.1729779425112; Thu, 24 Oct 2024
 07:17:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAAc7u9rOm4TBx=DhsEyPSLvqRb=UEcm_pj-uDCwovfortsRFPg@mail.gmail.com>
In-Reply-To: <CAAc7u9rOm4TBx=DhsEyPSLvqRb=UEcm_pj-uDCwovfortsRFPg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 24 Oct 2024 16:16:54 +0200
Message-ID: <CAFOi1A5xC+76OWbSO2TUxDgUAz9UQTta7OoGsAhqOSpp-qsw1g@mail.gmail.com>
To: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Message-ID-Hash: BS7XRBGHX754MGGQ6XS23GAV7KXIKNQM
X-Message-ID-Hash: BS7XRBGHX754MGGQ6XS23GAV7KXIKNQM
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Toggle GPIO above sample level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BS7XRBGHX754MGGQ6XS23GAV7KXIKNQM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2390570305254851988=="

--===============2390570305254851988==
Content-Type: multipart/alternative; boundary="0000000000002c8e35062539a8bf"

--0000000000002c8e35062539a8bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tim,

you can attach a stream tag to the sample on which the GPIO should go high
or low. The tag key should be "tx_command". The PMT format is the same as
if you were sending a message to the block. Tags get processed first
(before samples). That does mean that you need write to a block that checks
if you are silent or not, and adds the tags.

Careful if you are sending too many commands. You could stall your transmit
pipeline, causing underruns. In that case, modifying the FPGA might be
required. Or, you could send your data as bursts to the USRP sink (using
the end of burst feature) and then have the GPIO pin track the ATR state
(i.e., you don't send the zeros).

--M

On Thu, Oct 24, 2024 at 3:29=E2=80=AFPM Tim Vancauwenbergh <
tim.vancauwenbergh13@gmail.com> wrote:

> Hello,
>
> I have a GRC flow which generates a series of pulses. To suppress the LO
> leakage from the transmitter being on while sending samples with value '0=
'
> I want to use a method in GNU Radio Companion to Toggle a GPIO pin.
> The pulses are always the same, but I cannot use repetition using RFNoC a=
s
> the *B200 mini *which is used for this project does not support that.
> Whenever the sample values for transmission are greater than 0, the GPIO
> pin should be high, otherwise it should be low.
>
> Question being:
> *How can I synchronize the flow of samples with the triggering of the GPI=
O
> in GRC?*
>
> I have a script using UHD to toggle the GPIO pins using timed commands,
> which works great. However, when using GNU Radio Companion, I am obliged =
to
> use the USRP sink block. It does have a command input port, but I don't
> know how to sync the commands with the sample flow. If there are other,
> more straight forward methods I am happy to know.
> I should maintain the functionality of transmitting the samples from GRC,
> as I compare them later on with a second stream of samples.
>
> Thank you for your time.
>
> Best regards,
>
> Tim Vancauwenbergh
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002c8e35062539a8bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Tim,</div><div><br></div><div>you can attach a stream=
 tag to the sample on which the GPIO should go high or low. The tag key sho=
uld be &quot;tx_command&quot;. The PMT format is the same as if you were se=
nding a message to the block. Tags get processed first (before samples). Th=
at does mean that you need write to a block that checks if you are silent o=
r not, and adds the tags.</div><div><br></div><div>Careful if you are sendi=
ng too many commands. You could stall your transmit pipeline, causing under=
runs. In that case, modifying the FPGA might be required. Or, you could sen=
d your data as bursts to the USRP sink (using the end of burst feature) and=
 then have the GPIO pin track the ATR state (i.e., you don&#39;t send the z=
eros).</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 24, 2024 at 3:29=
=E2=80=AFPM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.vancauwenbergh13@g=
mail.com">tim.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div><br></d=
iv><div>I have a GRC flow which generates a series of pulses. To suppress t=
he LO leakage from the transmitter being on while sending samples with valu=
e &#39;0&#39; I want to use a method in GNU Radio Companion to Toggle a GPI=
O pin.</div><div>The pulses are always the same, but I cannot use repetitio=
n using RFNoC as the <b>B200 mini </b>which is used for this project does n=
ot support that.</div><div>Whenever the sample values for transmission are =
greater than 0, the GPIO pin should be high, otherwise it should be low.</d=
iv><div><br></div><div>Question being:</div><div><b>How can I synchronize t=
he flow of samples with the triggering of the GPIO in GRC?</b></div><div><b=
r></div><div>I have a script using UHD to toggle the GPIO pins using timed =
commands, which works great. However, when using GNU Radio Companion, I am =
obliged to use the USRP sink block. It does have a command input port, but =
I don&#39;t know how to sync the commands with the sample flow. If there ar=
e other, more straight forward methods I am happy=C2=A0to know.</div><div>I=
 should maintain the functionality of transmitting the samples from GRC, as=
 I compare them later on with a second stream of samples.</div><div><br></d=
iv><div>Thank you for your time.</div><div><br></div><div>Best regards,</di=
v><div><br></div><div>Tim Vancauwenbergh</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002c8e35062539a8bf--

--===============2390570305254851988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2390570305254851988==--
