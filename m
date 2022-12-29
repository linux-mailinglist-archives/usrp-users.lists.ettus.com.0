Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E34B465908A
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 19:45:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF7563830F7
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 13:45:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672339554; bh=Hc/rNpLTMRYyH4jneY4d6chP4DycGtGbF5vjBZ8V6Rs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=leUoVzDP3BLdNLAHOeMmwvxjGjRi7/PtM3dQb8to9kHWI19lky8+ArRFJdKdZ2fw/
	 gMb4fHxoXtywk7JxwLyDtCzeQ6/1ihnR2omJg5UZN4hoySFMLWPTtQwRVD3p9FU37G
	 76ghu5fcadQMaW7oXqErpVz9VhKVMfiFHlzGxJqKwtBADdnWqhebwIQ2s/qNej8p8i
	 2GfOr0a7DhSu+rO51mrCdwunY+etzwdQiIq8qUPSdX0hnR7c1Ie82EhqQWrNbOsGRe
	 qVpMMjMFyZ3uDH7Q0TGFttLKJGQFVk6UCwB6gxwPrvdiaNrfYB/Mxwem8zqbDbyeE3
	 6SG9kjzoYXQMg==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 440C3380C05
	for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 13:45:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h0Plzivp";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id d2so13371360qvp.12
        for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 10:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aEy8KWlxSmvbpSjmjvI+QmupJ/fHs0XMA4TUPTrTsyU=;
        b=h0PlzivpGv9MLNZ5JDm6elJoos9WBDZ1p9aEcP4XdRpmSc++Yf+KNowmpPDXCDffh7
         lEbpTIUbgd4A4YS1PiE+3mCZtY0tR+jgGF6bmR9d2vLkLnexHhD2yESU9Rb1WDOtxCZj
         nq19vd2qJRBZhwDrSiDPu9tGm3bsJGm0v21vqKePhJIO3gPFOaRrbBvlij8HwAtTtfA4
         Yk8SoTJj0XrotFbZtmDtu/ekqyJKv91qJL4hC6dMuymwmfnsFjl/+9qrCZEEGiNX+tHo
         Bm3EZv2+1lBc0LUZq+O6TyO1pqzK8ItboPnTEU5/UQIFkfbwlAIWIaYGw3PU4waXJbik
         UV0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aEy8KWlxSmvbpSjmjvI+QmupJ/fHs0XMA4TUPTrTsyU=;
        b=cuFN5V14UpoywRjmCVkOEssU9DYtlRJZdRWci7+Fmn9ng3rMnfsOfWOPeMLeANSQB/
         Rd73RrJ1mXKhTxUtkpdGdMGsQDowU8XLtoLbRa7bzXLZzlN/45tnWgIDY2MNY3nZQMh1
         cWjeCxaBnhlMyqrt4aGiWeOr5chPyZ4wbIXwVNXhpPFnOtGlfHS5hEqvYVdeuaMG02f5
         7kvs5hNR9+ljYzLtaSn4lKRBe2wOU4bwyFTXcdUwl5HZaBxvA/LwPBTzaLHmBLZtkvrp
         3bLcFl/xT0NaLqAHeMf864oFCFhgwBp2Qbkvd3nHsvaIlXyX7s/ee0ICjKKZbRqunxoy
         yBcQ==
X-Gm-Message-State: AFqh2koBmnqz4abTS6XkTpOF0cMD4rFqJit4yr4oAhTlTcoobmGEvIoR
	h38gqFqOmQtzmZmugqT1WZS0yu7aQm2ZX/rBFzFXwimr
X-Google-Smtp-Source: AMrXdXtA6nH26xgXvbJ75Sbjd2zihqR+JBfWtKeJ1U0AdKxMrY3/WTi9m51a5GDZjMqrPpvyCaKLHM7hrU6BU9WopYM=
X-Received: by 2002:a05:6214:2b82:b0:4c6:ea02:9123 with SMTP id
 kr2-20020a0562142b8200b004c6ea029123mr1405160qvb.50.1672339547585; Thu, 29
 Dec 2022 10:45:47 -0800 (PST)
MIME-Version: 1.0
References: <CACOCFC3jGpTTrdCza+_keWHrEM7Y3tnMqssLaFdGh1Q-8NOBmA@mail.gmail.com>
 <c6197fee-7bd9-500c-1501-45593cf64757@gmail.com>
In-Reply-To: <c6197fee-7bd9-500c-1501-45593cf64757@gmail.com>
From: Jonathan Barry <jonathan.d.barry@gmail.com>
Date: Thu, 29 Dec 2022 13:45:37 -0500
Message-ID: <CACOCFC3Bn9gwFaDVvokNL1opgmjx7806fKeBPcyKTe8Yip8o1Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: MCZ75SS3TJIZ3F2PY3FTYFZKEOE26NZL
X-Message-ID-Hash: MCZ75SS3TJIZ3F2PY3FTYFZKEOE26NZL
X-MailFrom: jonathan.d.barry@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B100 vs. B200mini - IF not zero?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MCZ75SS3TJIZ3F2PY3FTYFZKEOE26NZL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks for the info. My simple carrier recovery routines can't correct
for 3 kHz of deviation -- that is just too much for these narrowband
signals. But is it at least true that for a given carrier frequency
(e.g. 860 MHz), I can expect that this drift/offset will always be the
same for my particular B200mini? Because if that's the case, I can add
a function that always mixes the -3 kHz sinusoid into the B200mini
samples at 860 MHz.

I bought my B100 in January 2012 -- I seem to recall it was the only
model I could afford at the time. It has the WBX daughterboard, and I
have never had any trouble at all with it, ever. Collected thousands
of signals using this B100. Truly wonderful. The only drawback is the
USB 2.0, which greatly limits the sample rate that one can collect.
Otherwise I would just keep on using it. : )


On Thu, Dec 29, 2022 at 1:05 PM Marcus D. Leech <patchvonbraun@gmail.com> wrote:
>
> On 29/12/2022 12:13, Jonathan Barry wrote:
> > Greetings! I've been using a USRP B100 (!) for ten years now, writing
> > C code with the UHD API. Recently I upgraded to a B200mini, but the
> > resulting baseband signals from these two USRPs is different, even
> > though I am running the exact same code and API calls in both cases.
> > For the B100, the target frequency to which I tune (with
> > uhd_usrp_set_rx_freq) always appears at 0 Hz in the complex baseband;
> > but for the B200mini, I determined (empirically, with MATLAB) that the
> > target frequency for the examples I tested is mixed not to 0 Hz, but
> > to 3 kHz (?) in the baseband samples. In addition, when I run uhd_fft
> > on the B200mini, I see this same behavior as well: when I tune to a
> > known P25 signal at 860.2375 MHz, in the resulting power spectrum I
> > see the peak appearing at 860.2405 MHz (target + 3 kHz), and I see a
> > notch at the target 860.2375 MHz (in the passband of my signal).
> >
> > I examined the tune_result structure but it reports the target
> > frequency is 860.2375 MHz, and it reports the target/actual RF
> > frequency is 860.2375 MHz, and the target/actual DSP frequency is 0
> > MHz. I don't see anything that indicates a "3 kHz" offset. But if I
> > mix the received samples from the B200mini down by 3 kHz, then I do
> > get good decoding with my software. So right now, if I am using the
> > B100, I have no 3 kHz downmix, and if I use the B200mini, I need 3 kHz
> > downmix -- this is weird.
> >
> > Is this a hardware defect, or is this some setting that I have missed?
> > Thank you!
> >
> > Jon Barry
> > _______________________________________________
> >
> Your 3kHz offset is within the accuracy spec of the master clock on the
> B200mini at 860MHz.
>
> The B200 series uses a chip, the AD936x, which is a direct-conversion
> design, so everything is
>    always at baseband by the time it gets to the app.
>
> What is *likely* happening is that you simply got "lucky" with the
> master clock on the B100.
>
> What daughtercard do you have on your B100?  Not that many B100s were
> sold, and it was discontinued
>    years and years ago.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
