Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B78E1796F91
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 06:19:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76F57384C23
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 00:19:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694060372; bh=vKF09+SMlAkOal8nO0M47XOgXXfTlPptjre3Y4NYxi4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oIa2V59S1sF/uuO+A2klNH6yK0jDpmT8KY8G6ACHoEmVaIjkjMgu94RX/p8LLh3EL
	 L0kw1J/Vd1PsjyRu/6hkaOFrRYP2nleSIzVaFaG6o9SdZUPHkQOMpgFxVnmnUcG+cw
	 9gCZY0JjLlpMHCOuEGHnV+09BmNbhKH3DRIGZ+0kZkurhOLqsuAJ44Uv1+vc3nBfdf
	 HRI7qQpqcKwg/Z0K0cF7AQJZfO/Er6FA7ZAVEUwM5fmEZwQ8BggFlW4YO9/1wzfNiY
	 ATvo+64YCLb/+mfUxdWgM51sxebOJZyD5B3yePzq8OFFctJiCgKKMA87Nd//4QJoCg
	 BqbJPMj+gXAiA==
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 62952384256
	for <usrp-users@lists.ettus.com>; Thu,  7 Sep 2023 00:18:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TbUXAv1S";
	dkim-atps=neutral
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-d780d709e27so96483276.0
        for <usrp-users@lists.ettus.com>; Wed, 06 Sep 2023 21:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694060310; x=1694665110; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Xu4vyYss1UNnqf+w+3/nKbnggWZ1kG5ofwMb7uqoeKU=;
        b=TbUXAv1SnILBRj3cw13o8LcYHwXa8ZNGCa2UZ5mRv2N7tZJNGH9h2fV1Afs6gBhI0l
         QTQzKJNcfF3RLjqBPoF7lKicDXF3Sx3uZfGMBHSofdj0enqFJnqqA8afUCy99Zuf/3im
         etoXDft7UmUjnqXNZNX4lndNXr0Baippc3lStRKN0GezDy24erwnsYBx8zvVQCC41kVB
         gYpG6xCPkwkN4znIlTLCtQujfl7Z3dDBA01Mg9CYHaSsVRBqRdBUNfw5iE+mx5+L9F3D
         X77Q/ktQCxz6veAfw+8uUirdt6KccDW6R5LddAMzwD0Fj3qN2smo9PW/H3AzOrCTXJgc
         Ds+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694060310; x=1694665110;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xu4vyYss1UNnqf+w+3/nKbnggWZ1kG5ofwMb7uqoeKU=;
        b=S/h0ZBXD0NZEJXQaof6aXMmsI/Vk/wTdn+FFsy/ugFV/ajZoh6lBXa5rx5FyIGWX6F
         9l7dEkXzRryHJ8JINN/sfvUEn6d35N+CAZ8Uq2D689KwxzSda9E7+0uXwcnrHFTF4SnL
         J8fYCNQWfKlkqUWROusYlEgXAzSIymmQTmncQgBionZKV3eaXvHKTbg+pdw51ovq+20D
         nsecptKyEQsmGuPNCgbSapLPBKuNQi2OV897YTbPQTyuZRbFTw8mpeI0ZkeuirgBuRUK
         08rtQubDacg2Gnspx+O0YyGz5+kDw3HE7R654rg27D287GzPFzM5kjq8CA28wGb3n1nz
         B8+w==
X-Gm-Message-State: AOJu0YwQSEqIYqT2Zfzv5GLSgJC8l+oA2B9766EPkpPX7n+xvVE+sFJK
	wxrV77USg1n8jdPeOtIDgHsCiv/y9JptBT1KNNqfmEVYKu8=
X-Google-Smtp-Source: AGHT+IHsM18Dp51wEWgPGT3dysXqUf920vnOYTN0NouMlBjOkf8mrHOHXPatQhq3Qd7/+KsvUKwu9sKsIQaW03ymyGM=
X-Received: by 2002:a81:48d3:0:b0:595:6735:af35 with SMTP id
 v202-20020a8148d3000000b005956735af35mr12832075ywa.3.1694060310662; Wed, 06
 Sep 2023 21:18:30 -0700 (PDT)
MIME-Version: 1.0
From: swapnil srivastava <1920swapnil@gmail.com>
Date: Thu, 7 Sep 2023 13:48:19 +0930
Message-ID: <CAA_d=hKMp2YAhGxRndpvyTtWvdVN+bjT5Kd2xsPYdsH2YJ7m5g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: YLBKD3AJTPPW4BEB7ZPIL3TXGAOGS4ZY
X-Message-ID-Hash: YLBKD3AJTPPW4BEB7ZPIL3TXGAOGS4ZY
X-MailFrom: 1920swapnil@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Set the gain settings in C++ API for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YLBKD3AJTPPW4BEB7ZPIL3TXGAOGS4ZY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2233757252947795404=="

--===============2233757252947795404==
Content-Type: multipart/alternative; boundary="0000000000000b95100604bd2764"

--0000000000000b95100604bd2764
Content-Type: text/plain; charset="UTF-8"

Hello, I'm having some trouble with the UHD API. I'm trying to build a
simple receiver code by following the examples in the 'rx_samples_to_file'
and 'rx_timed_samples'. When I'm using the rx_samples_to_file example and
try to set the gain settings through the command line, (/rx_samples_to_file
--freq 98e6 --rate 5e6 --gain 20 --channels 0,1 --duration 10
usrp_samples.dat).

I get an error saying " RX channel 18446744073709551615 out of range for
configured RX frontends".
Basically I want to be able to use both received channels simultaneously
and set the gain for both, like you can in GNU Radio Companion. If I don't
set the gain then it runs as expected. I've tried adding more parameters
such as 'ant' and 'subdev' but it doesn't seem to work.
Thank you

--0000000000000b95100604bd2764
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, I&#39;m having some trouble with the UHD API. =
I&#39;m trying to build a simple receiver code by following the examples in=
 the &#39;rx_samples_to_file&#39; and &#39;rx_timed_samples&#39;. When I&#3=
9;m using the rx_samples_to_file example and try to set the gain settings t=
hrough the command line, (/rx_samples_to_file --freq 98e6 --rate 5e6 --gain=
 20 --channels 0,1 --duration 10 usrp_samples.dat).</div><div><br></div><di=
v>I get an error saying &quot; RX channel 18446744073709551615 out of range=
 for configured RX frontends&quot;.</div><div>Basically I want to be able t=
o use both received channels simultaneously and set the gain for both, like=
 you can in GNU Radio Companion. If I don&#39;t set the gain then it runs a=
s expected. I&#39;ve tried adding more parameters such as &#39;ant&#39; and=
 &#39;subdev&#39; but it doesn&#39;t seem to work.</div><div>Thank you<br><=
/div><br></div>

--0000000000000b95100604bd2764--

--===============2233757252947795404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2233757252947795404==--
