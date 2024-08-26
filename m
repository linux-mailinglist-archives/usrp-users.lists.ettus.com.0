Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB2895F601
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 18:05:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6EF653854A4
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 12:05:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724688344; bh=LApfopnlLXDxTAwcYiZvB4QCA3RIBHshjW9Qj9MPias=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=MwwnHP6r942sp1thq0VTpqkx62ak5KQ4HtT5F2oEomqEokkfGJ4X0zGOwv4KKJu43
	 NYIiBC0t6OXTqhyx1kIxBdhP+ZtcHcXqIy4kuuAiSxQmjNNBaMKODfUV5klIGborHN
	 lfucHLXz1znnlqdqCa1t4JxkRv3kqVH9b2N+V2iMOvvqn93uF/bh13mUCnLpk27KVN
	 bj2IpUnug7vBApeT6EIylsY3M19llpJNwNsAj+FnQygozV+nmJ+f5ytUOkY6LWRTNi
	 zySiNL5r6wJPrN4UeRug3i7FQ+k7kJiWtzSAIcy6Ld0FC86XQICHgRFHuW0i2ssH+z
	 /qsZeFcAUuTKw==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 4DE8E385437
	for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 12:05:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Zj6lhy/m";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5bed83487aeso4741362a12.2
        for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 09:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1724688300; x=1725293100; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R0jd6Ton6wagXhMO9Gx+y/CSXD+h+/iulWw6z4fYDWI=;
        b=Zj6lhy/msI4FMt+TtKPUUmG1CMDKU8H+jvSh3W4A4OlGQ1KYwEH+kH6tRyfBpZyHlZ
         z/4OcUWCv6OTP/NLP+F7+NEDtTUAahmgVcImSwBXRvjZ4mbvH/92bgewKXO/vHw9M7Me
         4/Avzct+Ng2JyQlpZAJCIJhIUJCsbtYrekh9qGZ3qW7xMn0cMVlPJrCz5KgUGitEobRE
         kQtUwI4bjVb/SxB2b4vH/H4V3EG8CLbdjpxyVdC0evkh4sfs2LZ1v/bKEQs0+c9EGSL+
         QGVq40baS4xu9LjFSEsw7DcfVjfQ6vQfdy2S6bHd11a6YxWvYGmhJDV0AQuJ/bv+H9/Y
         zavg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724688300; x=1725293100;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R0jd6Ton6wagXhMO9Gx+y/CSXD+h+/iulWw6z4fYDWI=;
        b=mkiSyTZ7/vyxYGZZ8QM35IMjASm4Zst2I94PaSiRafOX4BuTt4DHO+24IX72eTMiJG
         7KxBF/q7U7IInHYStWXYOHCukYuP1+0oVcSRDw75WgVMZTKSlG6WlROfaHiqHfwgZIbf
         oh36Bu+l6FWT96gcGwryIQ/zs3JcJ/V/RWvZIgLsE6UTC7yARibJVb/QEsqu91ui50Ez
         3EtMHiCq8dw4zLFaUUTCddiKgxh9KQE/YgL3QTHo8b1ggmcropVoYhdYNsmsZYW9nRAh
         wEBDAfpu16WteyxZSFHfjPX46GejerrL0Bi8PWBKB4QIElF35Q7n/AJYzpwr66uBvt+l
         U4mg==
X-Gm-Message-State: AOJu0YzbSxYH3B0MkNTj1mAYWU8VFXJa0ihlPaFFbf49/HEpnEOE25IR
	MoQK+sYaM38Q1Xp5TPIZFWH4FRX/oKg5qKfR2kebcF+f/FykbRDeFo3W+B3tHP28IlUR/Gs2Hol
	8+7Nh0FIjM7d8brngNy7RZs4aTCJBYWv4fTSr+zpSUFNITvQ=
X-Google-Smtp-Source: AGHT+IG3E0A5wQNHE7YC/QjtEMCiR8QsOh8BuE1YN+R3Aaub6MtWynkXRNX0mVeTtLNdIr5HLDlcisMbrTmkyxLIvpM=
X-Received: by 2002:a05:6402:27d4:b0:5ba:8ad7:4859 with SMTP id
 4fb4d7f45d1cf-5c0ba2add7fmr37026a12.14.1724688299779; Mon, 26 Aug 2024
 09:04:59 -0700 (PDT)
MIME-Version: 1.0
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
 <CAB__hTSWmo4jBMz7PiLw=uMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gmail.com> <524a890b-6dea-4526-aef3-3dfbed714a20@gmail.com>
In-Reply-To: <524a890b-6dea-4526-aef3-3dfbed714a20@gmail.com>
Date: Mon, 26 Aug 2024 12:04:48 -0400
Message-ID: <CAB__hTTO=N08nac2wwg9H4X6X1KWufAr+8jm5xXjd0QXnsiLow@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: FZPKNYLQYF6PBZSTH6ZZQUMM2MLLOKDH
X-Message-ID-Hash: FZPKNYLQYF6PBZSTH6ZZQUMM2MLLOKDH
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC and TwinRX Configuration in Custom FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FZPKNYLQYF6PBZSTH6ZZQUMM2MLLOKDH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0483116614716860849=="

--===============0483116614716860849==
Content-Type: multipart/alternative; boundary="000000000000753d3106209849d8"

--000000000000753d3106209849d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 26, 2024 at 10:24=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 26/08/2024 10:21, Rob Kossler via USRP-users wrote:
>
> Hi Olo,
> On one point regarding an FFT length of 8192, there is likely an issue
> with using the Ettus FFT block. In the past (I haven't checked recently),
> this block was limited to a maximum FFT size of 1024 because the entire F=
FT
> had to fit in one packet where the maximum packet payload was about 2000
> samples.  It is possible to use larger FFTs, but this requires some custo=
m
> code that divorces the FFT size from the packet size.
> Rob
>
> My understanding is that in recent RFNoC, the limit has been raised to
> 2048:
>
>
> https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__control.h=
tml
>
>
The xci file
<https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/ip/axi_fft=
/axi_fft.xci>
still shows a transform length of 1024. Also, I think that the X300 MTU
size is 10 which implies 2^10=3D1024 x 64bit is the max payload.  This
implies 2048 32-bit words in the payload.  But, because of a few bytes of
header, it is not possible to use an FFT of length 2048 unless the FFT
length is divorced from the packet length.
Rob

--000000000000753d3106209849d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 26, 2024 at 10:24=E2=80=
=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchv=
onbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">

 =20
   =20
 =20
  <div>
    <div>On 26/08/2024 10:21, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div>Hi Olo,</div>
          <div>On one point regarding an FFT length of 8192, there is
            likely an issue with using the Ettus FFT block. In the past
            (I haven&#39;t checked recently), this block was limited to a
            maximum FFT size of 1024 because the entire FFT had to fit
            in one packet where the maximum packet payload was about
            2000 samples.=C2=A0 It is possible to use larger FFTs, but this
            requires some custom code that divorces the FFT size from
            the packet size.</div>
          <div>Rob<br>
          </div>
        </div>
      </div>
    </blockquote>
    My understanding is that in recent RFNoC, the limit has been raised
    to 2048:<br>
    <br>
<a href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__=
control.html" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1=
rfnoc_1_1fft__block__control.html</a><br>=C2=A0 <br></div></blockquote><div=
>The <a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/ip/axi_fft/axi_fft.xci">xci file</a> still shows a transform length of=
 1024. Also, I think that the X300 MTU size is 10 which implies 2^10=3D1024=
 x 64bit is the max payload.=C2=A0 This implies 2048 32-bit words in the pa=
yload.=C2=A0 But, because of a few bytes of header, it is not possible to u=
se an FFT of length 2048 unless the FFT length is divorced from the packet =
length.</div><div>Rob<br></div><br></div></div>

--000000000000753d3106209849d8--

--===============0483116614716860849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0483116614716860849==--
