Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0037EB3E9
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 16:39:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3657C3851AC
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 10:39:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699976377; bh=niORGmikE3c+KI69f10ptRUcP6soSPmcWnehhOL3kWE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0F4NJost6F5RD8e4WcIvLlHodQePl9HyFrZMy8NYrz7yITFq9oPY7oYDu7fCDxWU/
	 g/F84Qo9B/b3FE52Ii6aIVaMi1iOIWCzDC2Eu2B/kyCP5mEaCVvwBk0f/Yt/OjHWSR
	 y0PDIdWjn+ulC96hjBmrbdaSV3P1/MYyOdZlM1eBvIkfJnivFhbNwvfzXGYr6yj/wt
	 HF2qhdWqo46hmZZHAL4+gqsOpnIpBFR/kn0SBdHzqaWJeaSg88POMCIi9rLL0NQ11h
	 d5BmCORvFxfQG0ZikJHKcAMSuoorw8Kepzxayhsnl7Npm3SUD7FteBT7oZs/fkEQqY
	 1L6hDSk4mgJ/A==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 51E60380DF4
	for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 10:39:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A76/DvMJ";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-77a453eb01cso356647585a.0
        for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 07:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699976360; x=1700581160; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iLX5Zn3CHfnSdVWsgjHvu0UrhDiwt6nnGhIZ4Q6sM18=;
        b=A76/DvMJOxvplS/ZbqXsnAhFG328eYC5MBi3sH7ykhNHeZPEgTj9cduFmqcNU5Hoqs
         XwOzPwyDYetrD0ewHDrLB+wtrDhc0UWIz+DYwzBMeTFQxCcuuJN9hfK5W9wGhoVGjEw8
         bLRHe7ZkwwcRqlu5ONYDcmPwDjCZ5vtLRG4xaGIYq4vXPYW+zN6LNqDyGYvog+w4Thjh
         QNUFWkRW8wAULKSdBAmc/p1ceJcD18mRJNlaYWNFHd9vIcFpXKaTTLUMvgMWeA30cYiX
         pkAwtYKHjzl+pApR7Qtu9fK2RvQTlMIGRrj2IHHFACtXiNoHZ5oqSVsnwZK16zZAB5KI
         toEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699976360; x=1700581160;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iLX5Zn3CHfnSdVWsgjHvu0UrhDiwt6nnGhIZ4Q6sM18=;
        b=M35UPgZ6p0ireZgE0Nd1rIqJ35f/AZv0QRi+GN6wrBTcVBfDIoH7QJ9uy5IEkrCCas
         D2mbmNCj8TiaJUXjZ8Lj2U4ddTGsS5/8pdByn+sf6TUZxAZboRtQDklUfc+ZMs7sUAnS
         2YgUw7kSlJJJTMaezyEmkxOs4KDGaCqk+Y3bamm14bUCO7ErUl4k+6Lc6t9TX/xQlbjm
         wOXa/kAw0bF0kRrJdWb89iC+vrnd9+Ak41MPkgUpGuU4NK+FfxTaetkJKI2gH/3uHmLb
         uBgwUfEIVD8NCbxRZBX0cypYMIXe85FGtfcKLudSNgqHMV0QFfQejdD8KdRXBLfFWKSh
         08ig==
X-Gm-Message-State: AOJu0YwxVV4C37kkq3SJhc1+1G5zRz2wWE1dG3Fh2lvKbetSsnkmNrYz
	hN1yDAHYxTGr3GN4/cZRiQz3DdWdt24=
X-Google-Smtp-Source: AGHT+IGQeCrY+Pw8jJeoCWG4pnrO/IePLRrXQsAWHUK0mFkenLKabsxo7mEhpVKUB42ds73U5nW7mg==
X-Received: by 2002:a05:6214:302:b0:66d:2064:c7ee with SMTP id i2-20020a056214030200b0066d2064c7eemr2743407qvu.20.1699976359652;
        Tue, 14 Nov 2023 07:39:19 -0800 (PST)
Received: from [192.168.2.175] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id fx3-20020a05622a4ac300b0040399fb5ef3sm2594913qtb.0.2023.11.14.07.39.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Nov 2023 07:39:19 -0800 (PST)
Message-ID: <3aad57f6-1297-4de7-bdaf-4f57ec6140fc@gmail.com>
Date: Tue, 14 Nov 2023 10:39:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <YkWIr2k7EUtyaapoqzhGIEE6HhtY0coYAWVVXZKW9w@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <YkWIr2k7EUtyaapoqzhGIEE6HhtY0coYAWVVXZKW9w@lists.ettus.com>
Message-ID-Hash: FWZ2YV33FQYXCEHUIR2ZATZQMB5D54F5
X-Message-ID-Hash: FWZ2YV33FQYXCEHUIR2ZATZQMB5D54F5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 streamer throwing BAD PACKET and TIMEOUT error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FWZ2YV33FQYXCEHUIR2ZATZQMB5D54F5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8060130697612300758=="

This is a multi-part message in MIME format.
--===============8060130697612300758==
Content-Type: multipart/alternative;
 boundary="------------s1qZIlim0L7nRVAs0Lnk4AfS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------s1qZIlim0L7nRVAs0Lnk4AfS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/11/2023 07:01, anil.antony@ltts.com wrote:
>
> Hi,
>
> I am using usrp B210 for my 5G test bench setup. The setup is consists=20
> of Openairinterface5G 5G stack and UHD driver 4.3.0. UHD driver is=20
> installed form source code approach and only one libuhd driver is in=20
> use. My setup is as follows,
>
>  *
>
>     Intel i7, 8 core, 8GB RAM, 3.6GHz CPU with ubuntu18.04, 4.15.0.123
>     Low latency kernel.
>
>  *
>
>     USB 3.0 connection
>
>  *
>
>     Log periodic antenna (*LP0965 Antenna)*
>
> Snippet of the error:
> [HW] [recv] received 14380 samples out of 23040
>
> [ERROR] [STREAMER] The receive packet handler caught a value exception.
>
> ValueError: bad vrt header or packet fragment
>
> [HW] ERROR_CODE_BAD_PACKET
>
> [PHY] rx_rf: Asked for 23040 samples, got 14380 from USRP
>
> [PHY] problem receiving samples
>
> [HW] [recv] received 0 samples out of 23040
>
> [HW] ERROR_CODE_TIMEOUT
>
> kern.log:
> Nov 14 07:04:43 MYTSP00192 kernel: [489670.971642] xhci_hcd=20
> 0000:00:14.0: WARN Cannot submit Set TR Deq Ptr
>
> Nov 14 07:04:43 MYTSP00192 kernel: [489670.971644] xhci_hcd=20
> 0000:00:14.0: A Set TR Deq Ptr command is pending.
>
> Nov 14 11:54:29 MYTSP00192 kernel: [507057.294029] enp4s0: Invalid MTU=20
> 9000 requested, hw max 1500
>
> Nov 14 11:54:29 MYTSP00192 kernel: [507057.592639] xhci_hcd=20
> 0000:00:14.0: bad transfer trb length 7680 in event trb
>
> Please help me.
>
> Regards,
>
> Anil
>
>
Yeah, so there's something wrong with your USB3 subsystem.=C2=A0=C2=A0 Ma=
ybe a bad=20
cable?=C2=A0=C2=A0 Try using the external power supply
 =C2=A0 on the B210 if you aren't already.

Also:

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

And you might look into the transport parameters for USB:

https://files.ettus.com/manual/page_transport.html


--------------s1qZIlim0L7nRVAs0Lnk4AfS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/11/2023 07:01,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:anil.antony@lt=
ts.com">anil.antony@ltts.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:YkWIr2k7EUtyaapoqzhGIEE6HhtY0coYAWVVXZKW9w@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi,</p>
      <p>I am using usrp B210 for my 5G test bench setup. The setup is
        consists of Openairinterface5G 5G stack and UHD driver 4.3.0.
        UHD driver is installed form source code approach and only one
        libuhd driver is in use. My setup is as follows, </p>
      <ul>
        <li>
          <p>Intel i7, 8 core, 8GB RAM, 3.6GHz CPU with ubuntu18.04,
            4.15.0.123 Low latency kernel. </p>
        </li>
        <li>
          <p>USB 3.0 connection</p>
        </li>
        <li>
          <p>Log periodic antenna (<strong>LP0965 Antenna)</strong></p>
        </li>
      </ul>
      <p>Snippet of the error:<br>
        [HW] [recv] received 14380 samples out of 23040</p>
      <p>[ERROR] [STREAMER] The receive packet handler caught a value
        exception.</p>
      <p>ValueError: bad vrt header or packet fragment</p>
      <p>[HW] ERROR_CODE_BAD_PACKET</p>
      <p>[PHY] rx_rf: Asked for 23040 samples, got 14380 from USRP</p>
      <p>[PHY] problem receiving samples</p>
      <p>[HW] [recv] received 0 samples out of 23040</p>
      <p>[HW] ERROR_CODE_TIMEOUT</p>
      <p>kern.log:<br>
        Nov 14 07:04:43 MYTSP00192 kernel: [489670.971642] xhci_hcd
        0000:00:14.0: WARN Cannot submit Set TR Deq Ptr</p>
      <p>Nov 14 07:04:43 MYTSP00192 kernel: [489670.971644] xhci_hcd
        0000:00:14.0: A Set T<span data-lexical-text=3D"true"> </span>R
        Deq Ptr command is pending.</p>
      <p>Nov 14 11:54:29 MYTSP00192 kernel: [507057.294029] enp4s0:
        Invalid MTU 9000 requested, hw max 1500</p>
      <p>Nov 14 11:54:29 MYTSP00192 kernel: [507057.592639] xhci_hcd
        0000:00:14.0: bad transfer trb length 7680 in event trb<br>
        <br>
        Please help me.<br>
        <br>
        Regards,</p>
      <p>Anil</p>
      <br>
    </blockquote>
    Yeah, so there's something wrong with your USB3 subsystem.=C2=A0=C2=A0=
 Maybe a
    bad cable?=C2=A0=C2=A0 Try using the external power supply<br>
    =C2=A0 on the B210 if you aren't already.<br>
    <br>
    Also:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_=
Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_P=
erformance_Tuning_Tips_and_Tricks</a><br>
    <br>
    And you might look into the transport parameters for USB:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_transport.html">https://files.ettus.com/manual/page_transport.h=
tml</a><br>
    <br>
    <br>
  </body>
</html>

--------------s1qZIlim0L7nRVAs0Lnk4AfS--

--===============8060130697612300758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8060130697612300758==--
