Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4C48B7672
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2024 14:57:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34120384E1E
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2024 08:57:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714481859; bh=R5hNNrJ4iT9iezWnkMZieV20SpWTSWxxnVX93m8YYOA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=a2H3A14qHg+rgWzmWmhg2gaT6NoQE8tailCqFRSW9qVWYi2fQjhVqmYtecEByY5YI
	 j+Bq88HjeIgd88h/qRpdOpzNZQy/apXh7Q7ySAugmRMtqn/xpLuZ1+xldtn2utf+FC
	 BopMxl7Zh7rYdW33BKsnX1w+PFpYWx0zw8j+3CoJKnnwSPEUU/KHFDsQvMk9MowGja
	 Kk74PEXTcQMuLMtGEQdJ7C5nU1L2FjoPG0Kht6rlrckrP2XfcoUcv8+H13TuaEAGEq
	 IK2Xa1d42Gt4ASfyHQ/rz7BgNgZ6hmFGx6/+UgFyC589ZTHPni9wpa2mlawp6souYB
	 Gr+Elr10c/+IQ==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 644E7384D8F
	for <usrp-users@lists.ettus.com>; Tue, 30 Apr 2024 08:57:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FM2q+8ja";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6a05f376effso43945426d6.0
        for <usrp-users@lists.ettus.com>; Tue, 30 Apr 2024 05:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714481827; x=1715086627; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D0APLf/UQ1oYolsgqwDPl+0hAKd37/fGfxRZo0bnccY=;
        b=FM2q+8jaulm/fJkiTZyDcHF8A6W7EtKSYrvfH50IXO0UWekXBRTZP3wo+lpbyNsc+3
         1HY13AVAKh29HfgMlgEbtBt2Z8o7pHPgwOssbgVt8CJLqR3j57LZxomehz1Ed+rnqbd+
         UuGrk0eNnNHRYFBIGtqsXmHY9eF3FiGUDILP5nmkeqAe2DqjwQKwoPhEyaduN/sLUcsI
         gil6x6DA882DchULPNSsQZq2PiBaxDa2GsdcUSFLjCzDkx38UPu3ULx9axjOP/bMbxDr
         4/YxwLNBUjCHdggWV5OpMsWFmBLVz4E/SjxM1fIrD+VVMsI9NcdNGi+8zuAuYNMm3li2
         fwqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714481827; x=1715086627;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=D0APLf/UQ1oYolsgqwDPl+0hAKd37/fGfxRZo0bnccY=;
        b=t/OiHM4Y9+wIOUKhr2IvfxZ5t1BYQiTjP/uuH3euk63i4XowJu/e33W8bXsHbCvA5k
         yx0JfSQrmgcsfskBBcChCoxNG2Q+jxClP1VusBeYQaMY79VolRC8WYyXkeRkCz5YgTi5
         eOPfmuvvnpIbdpoSvJcFAgDdTaEtFfgMvMqtOor0s5+qowtG8AgmB3pBrVE0h/L/w7PM
         jdqzIYkTek2hKheOMSlhFw2jd08P0AbDVbeZ6ZmNLjyj0z3N/L/eYYutprSdwyN/oKsB
         3ZUKChJPNCYBhicE2PGG72oI7lNqdUm076ptLVDxlBGxd9X1IBhWBa288S3FNDXklkUu
         54Cg==
X-Gm-Message-State: AOJu0YzK5X8HaQls6FfxV4KLawE8sHcQFuP9SYKxC+feakJuzT+R53bl
	9Hjv0cGzTqpMBzxCqbUq4OmxhFtk6OzNuE5Bmm4ZCpTy28ybXHxxVgyWeA==
X-Google-Smtp-Source: AGHT+IFy+85al5qnqa2AFLgYrXgcxpTI22oGy5JQELCRMAt1XGOfXDnOOMjCNlddLAU6gMLcWvToMQ==
X-Received: by 2002:a05:6214:20af:b0:6a0:b461:ba6 with SMTP id 15-20020a05621420af00b006a0b4610ba6mr12538071qvd.8.1714481827574;
        Tue, 30 Apr 2024 05:57:07 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id d12-20020a0cea8c000000b006a0ccc14e43sm2050293qvp.18.2024.04.30.05.57.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Apr 2024 05:57:07 -0700 (PDT)
Message-ID: <e39abf8d-6490-481e-bbbc-b89593e88d2f@gmail.com>
Date: Tue, 30 Apr 2024 08:56:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com>
Message-ID-Hash: CPHULZAS4XZXRLQAK2ILJLA4UNVVOHPA
X-Message-ID-Hash: CPHULZAS4XZXRLQAK2ILJLA4UNVVOHPA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Quick question about tuning USRP B210 for sweep spectrum
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CPHULZAS4XZXRLQAK2ILJLA4UNVVOHPA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6195916651466781225=="

This is a multi-part message in MIME format.
--===============6195916651466781225==
Content-Type: multipart/alternative;
 boundary="------------QH1smz9iFxruCxbhqhYNLLDb"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QH1smz9iFxruCxbhqhYNLLDb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/04/2024 03:20, Olo via USRP-users wrote:
>
> Hi there,
>
> I'm USRP B210 for a project. I'm trying to make a sweep spectrum=20
> analyzer that scans frequencies quickly. Currently, I'm tuning=20
> frequencies like this (which is I think the main issue):
>
> tune_request =3D uhd.types.TuneRequest(self.steps[self.i], 1.0)
> result =3D self.usrp_device.set_rx_freq(tune_request, self.rx_info.ch)=20
> I'm programming it in PyQt, and I've created a stream like this:
> self.stream_cmd_start =3D=20
> uhd.types.StreamCMD(uhd.types.StreamMode.num_done).
> (Because I've noticed that for a continuous stream, it takes eternity=20
> to retune.)
> Do you have any tips on how to do this faster? Any advice or code=20
> examples would be really helpful.
>
> Thanks a lot,
>
> Olo.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The synthesizer on the AD9361 is known to be relatively slow.=C2=A0 While=
 UHD=20
tries to optimize things for tunings that are within about
 =C2=A0 100MHz of each other, you can see tune times as high as 100msec.

The AD9361 chip inside the B210 simply isn't optimized for rapid tuning=20
-- at least the way UHD uses it.=C2=A0=C2=A0 The chip does have
 =C2=A0 a "cache" mechanism, where synthesizer register values and variou=
s=20
gain and I/Q calibration values can be pre-stored, and
 =C2=A0 you "tune' using those registers.=C2=A0=C2=A0 The register cache =
isn't that=20
large, AFAIR, but none of that is exposed in UHD.


--------------QH1smz9iFxruCxbhqhYNLLDb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/04/2024 03:20, Olo via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823E=
i3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div style=3D"">
        <p
style=3D"border: 0px solid rgb(227, 227, 227); box-sizing: border-box; ma=
rgin: 1.25em 0px;"><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Hi
            there,</span></p>
        <p
style=3D"border: 0px solid rgb(227, 227, 227); box-sizing: border-box; ma=
rgin: 1.25em 0px;"><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">I'm
            USRP B210 for a project. I'm trying to make a sweep spectrum
            analyzer that scans frequencies quickly. Currently, I'm
            tuning frequencies like this (which is I think the main
            issue):</span></p>
        <div style=3D"">
          <pre style=3D""><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">tune_request </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">=3D </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">uhd.types.</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">TuneRequest</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">(</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.steps</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">[</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.i</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">]</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">, </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">1.0</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">)</span>
<span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">result </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">=3D </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.usrp_device.</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">set_rx_freq</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">(</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">tune_request</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">, </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.rx_info.ch</span><span
          style=3D"line-height: normal;"><font face=3D"Arial, sans-serif"=
>)

</font><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">I'm programming it in PyQt, and I've crea=
ted a stream like this: </span></span></pre>
          <pre style=3D""><span style=3D"line-height: normal;"><span
style=3D"border-style: solid; border-color: rgb(227, 227, 227); border-im=
age: initial; box-sizing: border-box; font-family: Arial, sans-serif; fon=
t-size: 14px; font-weight: 400;">self.stream_cmd_start =3D uhd.types.Stre=
amCMD(uhd.types.StreamMode.num_done)</span><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">. </span></span></pre>
          <pre style=3D""><span style=3D"line-height: normal;"><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">(Because <span>I've noticed that for a co=
ntinuous stream, it takes eternity to retune.)</span></span></span></pre>
          <pre style=3D""><span style=3D"line-height: normal;"><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">Do you have any tips on how to do this fa=
ster? Any advice or code examples would be really helpful.</span>
</span></pre>
        </div>
        <span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; line-height: normal; font-weight: 400;">
          <div style=3D""><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; line-height: normal; font-weight: 400;"><br>
            </span></div>
          Thanks a lot,<br>
        </span><br>
        Olo.</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div class=3D"protonmail_signature_block"
        style=3D"font-family: Arial, sans-serif; font-size: 14px;">
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    The synthesizer on the AD9361 is known to be relatively slow.=C2=A0 W=
hile
    UHD tries to optimize things for tunings that are within about<br>
    =C2=A0 100MHz of each other, you can see tune times as high as 100mse=
c.<br>
    <br>
    The AD9361 chip inside the B210 simply isn't optimized for rapid
    tuning -- at least the way UHD uses it.=C2=A0=C2=A0 The chip does hav=
e<br>
    =C2=A0 a "cache" mechanism, where synthesizer register values and var=
ious
    gain and I/Q calibration values can be pre-stored, and<br>
    =C2=A0 you "tune' using those registers.=C2=A0=C2=A0 The register cac=
he isn't that
    large, AFAIR, but none of that is exposed in UHD.<br>
    <br>
    <br>
  </body>
</html>

--------------QH1smz9iFxruCxbhqhYNLLDb--

--===============6195916651466781225==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6195916651466781225==--
