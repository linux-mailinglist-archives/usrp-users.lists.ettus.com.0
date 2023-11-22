Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F18F7F4B8A
	for <lists+usrp-users@lfdr.de>; Wed, 22 Nov 2023 16:49:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6852384A1C
	for <lists+usrp-users@lfdr.de>; Wed, 22 Nov 2023 10:49:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700668182; bh=D5vzmq+PvcB7IoSPceWluzE3Fn97lhD9w+CoK9t7zuU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ODLhmFJDSWBL8eCW2Ryxnm06AnISr7kT1xed9K3RpWHJSrSUCyqdkdAoC8kdbQz+Q
	 7cTNoWJyvngvxSiqSLSxIc4PEabT0V9ye3nzUD1T0HT0M/P0m21lB5v+2K1QQqHV1Q
	 9NsSCQzDccpHaNGEgNGVeTApFweVv63pV4DqIH6gH80+7PoBYyffLKvtGb6GEQ+ilS
	 lrgEdJ5LGHn5R9VSbyuTkqNyBYr7w/0yB2FC/yQ0bbXxC3UygiTXafxgBCp4CpPLKv
	 GU8AxGKJhfd3Re4fzbCa3R1i72bRDTTGgDxXMMEbS6A75ggjJdpMyqydiEeInx4BKP
	 JdP73mueLXgcw==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 4165D3846C5
	for <usrp-users@lists.ettus.com>; Wed, 22 Nov 2023 10:49:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="baQIOCWv";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-670e7ae4a2eso8377396d6.1
        for <usrp-users@lists.ettus.com>; Wed, 22 Nov 2023 07:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700668157; x=1701272957; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9hscmZS8qcEOIbX57bUPlXuuqyxHAUwHmjN6qfNHqQ8=;
        b=baQIOCWvjBRiZ/1Hou7giJX5gjpNy6rKsgYdalO63gizOxxnEjagp/cZDZ8ph5YJJ7
         UBHCyu0A6fiXVZUqdcgCEKLupWZDyGhOvceIRl3vn+FsbVvVcFo0ARHs8puB7W5Q1PRO
         IpQEH7mYKZByG4RxKTcBk9325TTGr+L1k4RnMKFeQiLf3SvYrU6nV18yJoT6/Nuel03o
         4b0rtF04bR3d+GOQgNI4nw3x1nonOmgc2lZiryeTr3b6HErkV6QRaOwvFlpLvJmML1n7
         /a0fDeYXZhZOH1QzurITVzSRs5M3NkKOATMuao7/UoLXp4PPt215ir01Dd+JpBE1zE+N
         7djQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700668157; x=1701272957;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9hscmZS8qcEOIbX57bUPlXuuqyxHAUwHmjN6qfNHqQ8=;
        b=kFUUczbY/4xewcuoT/hlfW0t/KgyLSGF4Q4mY0PJDDeW5oNjBR10ywd4KWbaGVRdqI
         LtJeVPg1jKXXmWUuzqwJohu2i97pr5mGXuaSwxDQHEljy0B2EgkFaay6DTeUMH4JO1kK
         uE6TzJifGGnw/1oYk7CFvCx1T+MTDjH8jeNTCDg9JyJbVNbQtdTmjvmmkWdTOSQ9ddDs
         Trc3uhPE7MB9ApEJWUH8DRDQssju3Idz3p+t9KxmaghzPaS8VsPNk2/FUjHsFRzNh1tr
         03lf2cEGgE3SHRr7maHwry4Vaih1+q/PcKcoxJhzznUAqkMasIE81cp3QeG57ie4aEJX
         kwXw==
X-Gm-Message-State: AOJu0Yx0IyO3mD4Y76iVanaOXFFxr3pGhzRwUCJT37ssfXOQdlVe26xe
	wsMcCtsoFitVAkslZwGOWaB/XiGdBBo=
X-Google-Smtp-Source: AGHT+IGGh5fk8NB6A6NmJmSbgFWWq1qwAsl+FHoVm55YeHE1H6kmC3PFcgbHDQutoRnQNO9d0eMMSw==
X-Received: by 2002:a05:6214:528b:b0:670:5242:a6a1 with SMTP id kj11-20020a056214528b00b006705242a6a1mr4221551qvb.31.1700668157384;
        Wed, 22 Nov 2023 07:49:17 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id hf6-20020a0562140e8600b00679d8ac6b44sm3000426qvb.137.2023.11.22.07.49.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 07:49:17 -0800 (PST)
Message-ID: <ea0b44ab-5eb3-4c5f-9a4f-35dcc5d3b66d@gmail.com>
Date: Wed, 22 Nov 2023 10:49:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AS4PR05MB903990AF4C8CF2E2A0F1B8629FBAA@AS4PR05MB9039.eurprd05.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AS4PR05MB903990AF4C8CF2E2A0F1B8629FBAA@AS4PR05MB9039.eurprd05.prod.outlook.com>
Message-ID-Hash: WM6K5GCFEQGUYUETHNTUXW2GWOO4KBQV
X-Message-ID-Hash: WM6K5GCFEQGUYUETHNTUXW2GWOO4KBQV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: CRC errors in relayed stream
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WM6K5GCFEQGUYUETHNTUXW2GWOO4KBQV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2651760827916565908=="

This is a multi-part message in MIME format.
--===============2651760827916565908==
Content-Type: multipart/alternative;
 boundary="------------N2tDP0q7l4VtpEaFvNn9xQ49"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------N2tDP0q7l4VtpEaFvNn9xQ49
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 22/11/2023 04:37, Patryk Chamuczy=C5=84ski wrote:
> Hi
>
> I am writing a simple app that relays received samples with some delay.
>
> What I do is I start reading from the rx stream in a continuous mode:
>
> stream_cmd=3Duhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
> stream_cmd.stream_now =3DTrue
> self.rx_streamer.issue_stream_cmd(stream_cmd)
> if(metadata.has_time_spec):
> timespec=3Dmetadata.time_spec
>
>
> and then in another thread I restamp each sample and send it to a tx=20
> stream:
>
> tx_metadata=3Duhd.types.TXMetadata()
> tx_metadata.has_time_spec =3DTrue
> tx_metadata.start_of_burst =3DFalse
> tx_metadata.end_of_burst =3DFalse
> delay_spec=3Duhd.types.TimeSpec(self.delay_s)
> fortimespec, buffer, real_lengthinqueue:
> tx_timespec=3Dtimespec+delay_spec
> tx_metadata.time_spec =3Dtx_timespec
> sent=3Dself.tx_streamer.send(buffer, tx_metadata, real_length)
>
> Is it a right approach in general? My problem is that the receiver=20
> reports many CRC errors, so something must happen on the way. Is it=20
> possible that the tx stream is not continuous and thus some samples=20
> are misinterpreted?
>
> Patryk
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Are you getting any 'L' or 'U' or 'O' indications?


--------------N2tDP0q7l4VtpEaFvNn9xQ49
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/11/2023 04:37, Patryk
      Chamuczy=C5=84ski wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AS4PR05MB903990AF4C8CF2E2A0F1B8629FBAA@AS4PR05MB9039.eurprd05=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hi</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">I
          am writing a simple app that relays
        </span><span
style=3D"letter-spacing: normal; font-family: Aptos, Aptos_EmbeddedFont, =
Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 16px; fon=
t-weight: 400; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);=
">received
        </span><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">sampl=
es
          with some delay.=C2=A0</span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"><br>
        </span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">What
          I do is I start reading from the rx stream in a continuous
          mode:</span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"><br>
        </span></div>
      <div style=3D"background-color: rgb(31, 31, 31);">
        <div style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
            =C2=A0 =C2=A0 =C2=A0
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">stream_cmd</span=
><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(78, 201, 176);">uhd</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.types.StreamCMD=
(</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(78, 201, 176);">uhd</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.types.StreamMod=
e.start_cont)</span></div>
        <div style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
            =C2=A0 =C2=A0 =C2=A0
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">stream_cmd</span=
><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.stream_now
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(86, 156, 214);">True</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
            =C2=A0</span></div>
        <div style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
            =C2=A0 =C2=A0 =C2=A0
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">self</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">rx_streamer</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.issue_stream_cm=
d(</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">stream_cmd</span=
><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">)</span></div>
        <div style=3D"background-color: rgb(31, 31, 31);">
          <div style=3D"line-height: 19px;" class=3D"elementToProof"><spa=
n
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
              =C2=A0 =C2=A0 =C2=A0=C2=A0</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(197, 134, 192);">if</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">(</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">metadata</span><=
span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.has_time_spec):=
</span></div>
          <div style=3D"line-height: 19px;" class=3D"elementToProof"><spa=
n
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">timespec</span><=
span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">metadata</span><=
span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.time_spec</span=
></div>
        </div>
        <div class=3D"elementToProof" style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);"><br>
          </span></div>
      </div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"><br>
        </span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">and
          then in another thread I restamp each sample and send it to a
          tx stream:</span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"><br>
        </span></div>
      <div style=3D"background-color: rgb(31, 31, 31);">
        <div style=3D"background-color: rgb(31, 31, 31);">
          <div style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_metadata</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(78, 201, 176);">uhd</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.types.TXMetadat=
a()</span></div>
          <div style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_metadata</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.has_time_spec
            </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(86, 156, 214);">True</span></div>
          <div style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_metadata</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.start_of_burst
            </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(86, 156, 214);">False</span></div=
>
          <div class=3D"elementToProof" style=3D"line-height: 19px;"><spa=
n
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_metadata</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.end_of_burst
            </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(86, 156, 214);">False</span></div=
>
        </div>
        <div class=3D"elementToProof" style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">delay_spec</span=
><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(78, 201, 176);">uhd</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.types.TimeSpec(=
</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">self</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">delay_s</span><s=
pan
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">)</span></div>
        <div class=3D"elementToProof" style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(197, 134, 192);">for</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">timespec</span><=
span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">,
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">buffer</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">,
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">real_length</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(197, 134, 192);">in</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">queue</span><spa=
n
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">:</span></div>
        <div class=3D"elementToProof" style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_timespec</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">timespec</span><=
span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">+</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">delay_spec</span=
></div>
        <div class=3D"elementToProof" style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_metadata</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.time_spec
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_timespec</spa=
n></div>
      </div>
      <div style=3D"background-color: rgb(31, 31, 31);">
        <div class=3D"elementToProof" style=3D"line-height: 19px;"><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">sent</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(212, 212, 212);">=3D</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">=C2=A0</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">self</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.</span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_streamer</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">.send(</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">buffer</span><sp=
an
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">,
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">tx_metadata</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">,
          </span><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(156, 220, 254);">real_length</spa=
n><span
style=3D"font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;,=
 monospace; font-size: 14px; color: rgb(204, 204, 204);">)</span></div>
      </div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"><br>
        </span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Is
          it a right approach in general? My problem is that the
          receiver reports many CRC errors, so something must happen on
          the way. Is it possible that the tx stream is not continuous
          and thus some samples are misinterpreted?</span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"><br>
        </span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Patry=
k</span></div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"><br>
        </span></div>
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
    Are you getting any 'L' or 'U' or 'O' indications?<br>
    <br>
    <br>
  </body>
</html>

--------------N2tDP0q7l4VtpEaFvNn9xQ49--

--===============2651760827916565908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2651760827916565908==--
