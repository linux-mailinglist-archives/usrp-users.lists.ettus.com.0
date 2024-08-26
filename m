Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7237D95F539
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 17:35:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B59F7385510
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 11:35:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724686551; bh=Lg3iqQhBShQxO+wFU+ZfD80X3zvMoebS1KsGcCypGLY=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0H1EQVd5XZ4h+SPzN759QEyOvbGF6JcAVJXIkCKNxmwu/ZR/kwOzKhaMgIXQyLfDi
	 RezgckPN+Cb/s25Y1mBEcjIYFeKVmhm+3umH7Bk2bVuDvNExcOZBqPVH9ArllgFRzl
	 EnB7Y4zGkrK2fHW9eD1OPEhPXkVegFPOERTbkIVStyzvU7FyDVYNN2SHf4Fy0NkxSs
	 EGkQjLlGUhv1Fag+YbQeJpjKliikaL2ogHS0c0o98zPkEmoksEW2mYa8SW/BrH0krG
	 NWngitHjKS+1eRl+6XKwlJBx9ATS5iGH5ApKXZIU1VlDtYGRYSZJI7oTfZPWlXA/0L
	 o6m0jiMda5oeg==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 12BC4384E55
	for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 11:35:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ye0T9vZw";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7a66b813847so272794585a.2
        for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 08:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724686511; x=1725291311; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KDS8rnj3z0HyJcbFT5Ns97dWjOWaPVMXeWotm8TiC54=;
        b=Ye0T9vZwD96RnieblRX++iqpvzi/bh3U8QmVrfN+j37HvPhRXF5HRKm1m6caxXzsyE
         ULAvdUeA0GG/ETpgWIt5Qbs/iDa/GXvUjIaehxQyHRg3QHy5XPMaIMRUQyDfE3ETsMRE
         tRrfS6VWiMcm7KXzDg4jciby5KDB4xQVk560ag52dBhVs/3N6PizfRoVKgV2irv66xTY
         BdAx0BSR8Rr8GeZ2EoLoXaej7ufoXWPHstz9D5Cr9OZJZQs9vi5ydAc1R+VhYuSKl9TA
         KlTG9gBRpLbNPT42z5XFpFzmL9nIbNhUQTgB9J8x0R0l6PC4I6EyrAXhed1ni1tENBrW
         /iYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724686511; x=1725291311;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KDS8rnj3z0HyJcbFT5Ns97dWjOWaPVMXeWotm8TiC54=;
        b=V2yx2ubvxrs2GEh/mHGMndBWpsgqZHUMWjBlpkfhVDgBJwsUTBjXvMGc8NsmX4ZTsy
         Pg/BtluorUSinnkZH+UgbNuMfPWDw+SlBLICoL0Tyt5i7ei6bKAqQwak1mbV6Koj2DTZ
         3IMmDRzx1XyDJlQThbJc+08pyM9R4R2fk8hnoN5BLXfa80WNvW10DZZcpIv+sYYwTnDR
         0sWWm0V7XjHRP6fHaUGasytbB4tLxw7b9tIHOQqq+HqYB8zp7vx7Gbxb6uSUga+1tl/f
         JM4m4mlx5qlB3eI+AOuxlwxYCiQnEcyeJkiXsV8t2Y0OkSTH685oLagpMZuSltCrbL+V
         JV2g==
X-Gm-Message-State: AOJu0Yw403AK2RV2X0Bi/l8NHntDZYQVUVQ/1r/K216cGhllhfFsmQgu
	YuuQNmLPOnopxBdc2wsY9WJhgEiEuom6Vv6lq7zY9R/dSxRO/Z6U
X-Google-Smtp-Source: AGHT+IGFEYejILI7b1b9OZffPM55YMek2bryZ0hmRq+BQH1MWSxXQoyPOXMubmW2ZANzI/ILaiXw5w==
X-Received: by 2002:a05:620a:44c3:b0:7a6:6fd6:9d6a with SMTP id af79cd13be357-7a6896ca99emr1370148585a.5.1724686511156;
        Mon, 26 Aug 2024 08:35:11 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7a67f3c3e03sm466650585a.91.2024.08.26.08.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 08:35:10 -0700 (PDT)
Message-ID: <632f9a2f-151f-40fd-954d-18103ae3565d@gmail.com>
Date: Mon, 26 Aug 2024 11:35:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brian Padalino <bpadalino@gmail.com>
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
 <f76157b9-f0a5-4633-9476-7558b3fd9a46@gmail.com>
 <CAEXYVK5YDYNaLp=t0Da3ZW+jLpAPmc9qdOHsJ07ox__dL51Leg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK5YDYNaLp=t0Da3ZW+jLpAPmc9qdOHsJ07ox__dL51Leg@mail.gmail.com>
Message-ID-Hash: JVABAVF2PQCG6LPGDPV6CMSCFIJU2WFF
X-Message-ID-Hash: JVABAVF2PQCG6LPGDPV6CMSCFIJU2WFF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC and TwinRX Configuration in Custom FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JVABAVF2PQCG6LPGDPV6CMSCFIJU2WFF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8780068265223214940=="

This is a multi-part message in MIME format.
--===============8780068265223214940==
Content-Type: multipart/alternative;
 boundary="------------wbMsrEmk2i7fG2TkTaLRcfon"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------wbMsrEmk2i7fG2TkTaLRcfon
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/08/2024 11:08, Brian Padalino wrote:
>
> Also note that large signals on one channel will leak into the other=20
> at baseband,=C2=A0I believe. I think it's just the nature of the 2-chan=
nel=20
> design using the single ADC and everything being so close.
The datasheet for the ADC shows ca -88dB cross-talk between the two=20
channels at a notional 80MHz input.

So a strong (0-5dBm) signal on one channel could conceivably be tweaking=20
the low-order bit on the other channel.

But lay-out issues on the daughterboard could well make that situation=20
somewhat worse.


>
> Brian

--------------wbMsrEmk2i7fG2TkTaLRcfon
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/08/2024 11:08, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK5YDYNaLp=3Dt0Da3ZW+jLpAPmc9qdOHsJ07ox__dL51Leg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div>Also note that large signals on one channel will leak
            into the other at baseband,=C2=A0I believe. I think it's just=
 the
            nature of the 2-channel design using the single ADC and
            everything being so close.</div>
        </div>
      </div>
    </blockquote>
    The datasheet for the ADC shows ca -88dB cross-talk between the two
    channels at a notional 80MHz input.<br>
    <br>
    So a strong (0-5dBm) signal on one channel could conceivably be
    tweaking the low-order bit on the other channel.<br>
    <br>
    But lay-out issues on the daughterboard could well make that
    situation somewhat worse.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK5YDYNaLp=3Dt0Da3ZW+jLpAPmc9qdOHsJ07ox__dL51Leg@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------wbMsrEmk2i7fG2TkTaLRcfon--

--===============8780068265223214940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8780068265223214940==--
