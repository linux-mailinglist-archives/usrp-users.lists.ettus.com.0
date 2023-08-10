Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3CC777F7C
	for <lists+usrp-users@lfdr.de>; Thu, 10 Aug 2023 19:46:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B65A6381504
	for <lists+usrp-users@lfdr.de>; Thu, 10 Aug 2023 13:46:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691689569; bh=4eRcua7q383Th+alsVVnaY/z8pjW6Fpwo2hFkMJXvYI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vJ0CH5Ae07oKhY9TulwYAjUDB7o0RBf+neqjUJ8a4xOtzNXuHOLEmFZ5LaB4Rrykk
	 Z7D/6JikWIc6wT3L74ZO3JBjwF9WNudTnQ9JTAeVpXBOKZOwjs4t5ikO+WOwoyXNDy
	 +P3htXRuPjfF8Q6t/ijXxeirrVHPhj5yqKSfczFy6khSLXKzAekiG8wmm2Vc07J7zk
	 Ed0sh4GRZXCUMwskphgrDVevMOohEyVpI6G6Ej41Vooin88GjdqS2VeMGkt3/DkH0y
	 U7R9FlW23fFxrP+lusq4mz5/2/tzCWw43DJ7NILynu5U7tT/hc3YFbA1EQyfVCYUQZ
	 m/Fd8i6jppMYA==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id F38E238095D
	for <usrp-users@lists.ettus.com>; Thu, 10 Aug 2023 13:45:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Pmd4obcD";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-76c4890a220so86934785a.3
        for <usrp-users@lists.ettus.com>; Thu, 10 Aug 2023 10:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691689532; x=1692294332;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I/VurB1SGToTI4kzAEwj5BnxKj0JBVEYAUCWfoVdY2Y=;
        b=Pmd4obcDOTQd8ZgHG53PYaKgS4/uOF+dMICCAIFuYNzDpCtdVSKMdP34csM9kd2Nj4
         M0yglY+V9cdJmyaU5ZmLfi1fQvKypaWImJLLYNIPt5HwX6A4R0AcriOCuvhUrFy2GDY6
         pHyAgKcPx8YqrnQ5wFAfI9F9Og4vt0uIvmhEfdKoslp7LHtYPIiS+dghSdzB7QfGlFu2
         HaTFJY2m/SuRrHvqlCq2dFumo0LSpnTkqsqc2aH6WblQMvWuOGkPG5VNvw3DTX/KRlJ/
         j3zYymuu7J/EWbv9ESr/SHqKz991tauqahE34OWVQX99OZFBrl5gX2oo7ZnjRd44o6JM
         6Wrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691689532; x=1692294332;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I/VurB1SGToTI4kzAEwj5BnxKj0JBVEYAUCWfoVdY2Y=;
        b=aPHhnYQVI2cf4xbKKfTMz4KtCI0eOeNyqr+wJPGmhD79qQc2wDhvGWh/zcZKUEyr/f
         bHDwfrCMBL2iKYLy6OHG58/1dUpZBFssqzYSNSRjsbRz3mlcxZtXq06SFIdj6OY3yLn0
         FEWbh02vs91Kk4Ntoxikwk6w1rF6J2o43FVipDMnsEg9AD+2oZDdDt6mIyfbSztJ3hLy
         Sp8JhyxdRrIDdkHT9Wol1RkoXghb77ugALQRqcgPHkzlIV3iUg0UsFcNT5MqQSdPY8g5
         yMmuSvckwTqHVdyjzPBx4EzRsZxZmpWil+J21ivrMOH5MbuMWKIUzaxuZ/KNLZGsxopg
         1Ysw==
X-Gm-Message-State: AOJu0Yx+rdJkqFZKZBoLFRD3hiIvYSUlk2/gnJYFDvpCyyp5P8pw5Jnl
	O+0fELVZOAAQhKwSgpRc0XyLxFzZqFg=
X-Google-Smtp-Source: AGHT+IFNC4tvZQXoUdPUq0kH1M9vmCZQnuUMrKz9/ZQ2e9kwY3E1fSdgHeFcaCLMJx3BsM/lDniRnw==
X-Received: by 2002:a05:620a:4546:b0:76c:e714:36de with SMTP id u6-20020a05620a454600b0076ce71436demr4228839qkp.4.1691689532210;
        Thu, 10 Aug 2023 10:45:32 -0700 (PDT)
Received: from [192.168.2.217] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id ou8-20020a05620a620800b00767dc4c539bsm640883qkn.44.2023.08.10.10.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Aug 2023 10:45:31 -0700 (PDT)
Message-ID: <11a88494-3f1e-0728-1a68-ec6384b034fa@gmail.com>
Date: Thu, 10 Aug 2023 13:45:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Mushtaq A. Syed, Ph.D." <mushtaq.syed@verusresearch.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <44131bcc179c44f8975efeb8097fb30c@iis.fraunhofer.de>
 <b6bbe756-529c-742c-516f-a67e134b5a79@gmail.com>
 <7b0e7945dfdf4a169cc46760ddcae87f@verusresearch.net>
 <a477c27b-1a44-2e45-aa51-614c7bb4efce@gmail.com>
 <8d4e577b5a4144a6b0ab5af305a788c6@verusresearch.net>
 <6de81904-ef84-9169-cae5-2890144677f8@gmail.com>
 <6d8158e01dd2413fb73d2ebda6318d22@verusresearch.net>
 <1046b2277c9247ab82e564d94d22dd1d@verusresearch.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1046b2277c9247ab82e564d94d22dd1d@verusresearch.net>
Message-ID-Hash: WX44KV7BUY2JQD7TAGU37S3PUSIZBVWV
X-Message-ID-Hash: WX44KV7BUY2JQD7TAGU37S3PUSIZBVWV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E312 password issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WX44KV7BUY2JQD7TAGU37S3PUSIZBVWV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6136438206736373808=="

This is a multi-part message in MIME format.
--===============6136438206736373808==
Content-Type: multipart/alternative;
 boundary="------------70ypar6ed1i9etZPYMjxZr8D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------70ypar6ed1i9etZPYMjxZr8D
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/08/2023 13:41, Mushtaq A. Syed, Ph.D. wrote:
>
> Hi Marcus:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 I am trying to SSH into the E312. It is at=20
> 192.168.3.2. Per the document (E310/E312 Getting Started Guides) the=20
> login name is supposed to be =E2=80=98root=E2=80=99 and password is emp=
ty; however,=20
> these are not working.
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Would you know what are the login name and the passwor=
d?
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Thanks a lot!
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Cheers,
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Mushtaq
>
(A) Please don't hijack another thread with a different question. It's=20
confusing for everyone.=C2=A0 I've changed the subject
 =C2=A0=C2=A0 line appropriately.

(B) If it isn't set to the default, then someone set it to something=20
else, and I have no idea what that might be.=C2=A0 If you load
 =C2=A0 a factory image onto the uSD card, it'll have the factory=20
username/password on it.=C2=A0 But apart from that, I'd have no idea
 =C2=A0 what it is.

(C) If you have the requisite knowledge, you could mount the uSD card on=20
a Linux system, and manually edit the
 =C2=A0=C2=A0 shadow password file to remove the (hashed) password.=C2=A0=
 Then put it=20
back into your E312.


> ----------------------------
> MushtaqSyed, Ph.D.
> Principal Digital Signal Processing Engineer
> Verus Research
>
> <http://>
>
> Direct 505-396-7109
> Cell 408-514-7821
>
> 6100 Uptown Blvd NE, Suite 260
> Albuquerque, New Mexico 87110
> _*verusresearch.net*_
> ----------------------------
>
> *From:* Mushtaq A. Syed, Ph.D.
> *Sent:* Tuesday, August 8, 2023 9:28 AM
> *To:* 'Marcus D. Leech' <patchvonbraun@gmail.com>
> *Subject:* RE: [External] [USRP-users] Re: N310 uhd_image_loader: two=20
> errors
>
> Hi Marcus:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Yes, the support package for E312 includes steps to=20
> program the SD card.
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Thanks a lot!
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Cheers,
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Mushtaq
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, August 8, 2023 9:25 AM
> *To:* Mushtaq A. Syed, Ph.D. <mushtaq.syed@verusresearch.net>
> *Subject:* Re: [External] [USRP-users] Re: N310 uhd_image_loader: two=20
> errors
>
> On 08/08/2023 11:22, Mushtaq A. Syed, Ph.D. wrote:
>
>     Hi Marcus:
>
>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Mathworks/Matlab works with Ettus and has
>     developed support packages for the E312 and E310. I have used the
>     support package for E310. I don=E2=80=99t know about the N series o=
f
>     radios. I am not using those. There is no functional over-reach on
>     Mathworks=E2=80=99 part.
>
>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Thanks a lot!
>
>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Cheers,
>
>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Mushtaq
>
> Yes, I understand that you can use Matlab to develop signal flows for=20
> various Ettus products.=C2=A0 But I wasn't aware that those
> =C2=A0 packages included "program an SD card with a proper system image=
"=20
> functionality.
>
>
>     ----------------------------
>     MushtaqSyed, Ph.D.
>     Principal Digital Signal Processing Engineer
>     Verus Research
>
>     <http://>
>
>     Direct 505-396-7109
>     Cell 408-514-7821
>
>     6100 Uptown Blvd NE, Suite 260
>     Albuquerque, New Mexico 87110
>     *_verusresearch.net_*
>     ----------------------------
>
>     *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Tuesday, August 8, 2023 9:08 AM
>     *To:* Mushtaq A. Syed, Ph.D. <mushtaq.syed@verusresearch.net>
>     <mailto:mushtaq.syed@verusresearch.net>
>     *Subject:* Re: [External] [USRP-users] Re: N310 uhd_image_loader:
>     two errors
>
>     On 08/08/2023 10:45, Mushtaq A. Syed, Ph.D. wrote:
>
>         Hi Marcus:
>
>         =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 You mentioned programming a SD card with the
>         factory image. I have been trying to do that using Matlab, and
>         I have been unsuccessful. I am guessing that you are not using
>         Matlab.
>
>         =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 How are you doing the SD card programming, an=
d
>         could you please point me to the relevant documentation?
>
>         =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thanks a lot!
>
>         =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Cheers,
>
>         =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mushtaq
>
>     Not sure why MatLab would understand how to program an SD card
>     with an N310 system image.=C2=A0 But maybe MatLab suffers
>     =C2=A0 from "wild functional over-reach".=C2=A0 I dunno.
>
>
>
>         ----------------------------
>         MushtaqSyed, Ph.D.
>         Principal Digital Signal Processing Engineer
>         Verus Research
>
>         <http://>
>
>         Direct 505-396-7109
>         Cell 408-514-7821
>
>         6100 Uptown Blvd NE, Suite 260
>         Albuquerque, New Mexico 87110
>         *_verusresearch.net_*
>         ----------------------------
>
>         *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>         <mailto:patchvonbraun@gmail.com>
>         *Sent:* Tuesday, August 8, 2023 8:37 AM
>         *To:* usrp-users@lists.ettus.com
>         *Subject:* [External] [USRP-users] Re: N310 uhd_image_loader:
>         two errors
>
>         On 08/08/2023 10:29, Bachmaier, Luca wrote:
>
>             Hi all,
>
>             I=E2=80=99m currently building an image for the USRP N310 a=
nd
>             while using uhd_image_loader I ran into the following
>             error (see below for entire output):
>
>             =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 [INFO] [MPM.PeriphManager] Installing
>             component `dts'
>
>             [ERROR] [UHD] An unexpected exception was caught in a task
>             loop.The task loop will now exit, things may not
>             work.rpc::timeout: Timeout of 10000ms while calling RPC
>             function 'get_log_buf'
>
>             After this happened, the RJ45 connection with the USRP
>             seems to have stopped working. Running
>             uhd_usrp_find_devices can=E2=80=99t find any devices. Howev=
er I
>             can still log in to the USRP over the Console JTAG
>             interface through screen. When calling =E2=80=9Cip a=E2=80=9D=
 on my host
>             device and the USRP the Ethernet interfaces seem to be
>             down, even after rebooting the USRP.
>
>             When I tried executing uhd_image_loader again I received
>             this error:
>
>             =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 [ERROR] [MPMD IMAGE LOADER] mpmd_image_loader
>             only supports a single device.
>
>             Unfortunately I wasn=E2=80=99t able to find a lot of inform=
ation
>             about these errors online or in this mailing list. I=E2=80=99=
d be
>             happy to hear any input about both of these errors.
>
>             Thank you and regards
>
>             Luca
>
>             Full ouput:
>
>             $ uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.2"
>             --fpga-path ./build/usrp_n310_fpga_XG.bit
>
>             [INFO] [UHD] linux; GNU C++ version 12.2.0; Boost_107400;
>             UHD_4.3.0.0+ds1-5
>
>             [INFO] [MPMD] Initializing 1 device(s) in parallel with
>             args:
>             mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D=
31E9FA6,name=3Dni-n3xx-31E9FA6,fpga=3DHG,claimed=3DFalse,skip_init=3D1
>
>             [INFO] [MPMD] Claimed device without full initialization.
>
>             [INFO] [MPMD IMAGE LOADER] Starting update. This may take
>             a while.
>
>             [INFO] [MPM.PeriphManager] Installing component `fpga'
>
>             [INFO] [MPM.PeriphManager] Installing component `dts'
>
>             [ERROR] [UHD] An unexpected exception was caught in a task
>             loop.The task loop will now exit, things may not
>             work.rpc::timeout: Timeout of 10000ms while calling RPC
>             function 'get_log_buf'
>
>             [ERROR] [UHD] Exception caught in safe-call.
>
>             =C2=A0 in ~mpmd_mboard_impl
>
>             =C2=A0at ./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:320
>
>             dump_logs(); _claimer_task.reset(); if (not
>             rpc->request_with_token<bool>("unclaim")) {
>             uhd::_log::log(uhd::log::warning,
>             "./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 322, "MPMD",
>             std::this_thread::get_id()) << "Failure to ack unclaim!";;
>             } -> rpc::timeout: Timeout of 10000ms while calling RPC
>             function 'get_log_buf'
>
>             Error: rpc::timeout: Timeout of 120000ms while calling RPC
>             function 'update_component'
>
>
>
>
>             _______________________________________________
>
>             USRP-users mailing list --usrp-users@lists.ettus.com
>
>             To unsubscribe send an email tousrp-users-leave@lists.ettus=
.com
>
>         Well, I guess the first thing to do is to run a factory system
>         image on the device and make sure that it is sane--just program
>         =C2=A0 an uSD card with the factory image and run that to make =
sure
>         it is sane.
>
>
>
>         ---------------------------------------------------------------=
---------
>
>         This email has been scanned for spam and viruses. Click here
>         <https://us-spambrella.cloud-protect.net/index01.php?mod_id=3D1=
1&mod_option=3Dlogitem&report=3D1&type=3Deasyspam&k=3Dk1&payload=3D53616c=
7465645f5f3c43e49f31484e2a861bcf68190af6563d065283b6af2a0db50609403a0f727=
cad0f3b106449a8e0d62c7044755fddd43d632d4ab555bbc608a2197d37ca6237091c2655=
f9527234773628d802376b528b43af442c707b6f09d39998fc68cd19152d2639ebc4cc960=
2bab8ce8ad18f3ea4416533441c12d8a2ebdba13a2385f51afeef068bc4e0d81fd7be3461=
2a4601707be6ea009bb488&mail_id=3D1691505472-GpuNJfWbZwnl&r_address=3Dmush=
taq.syed%40verusresearch.net>
>         to report this email as spam.
>
>         NOTICE:=C2=A0 This electronic mail message is intended exclusiv=
ely
>         for the individual or entity to which it is addressed. This
>         message, together with any attachment, may contain sensitive
>         or privileged information.=C2=A0 Any unauthorized review, use,
>         printing, retention, copying, disclosure, or distribution of
>         said email is strictly prohibited.=C2=A0 If you have received t=
his
>         message in error, please (1) immediately advise the sender by
>         reply email message and (2) delete all copies of this message.
>
>     -------------------------------------------------------------------=
-----
>
>     This email has been scanned for spam and viruses. Click here
>     <https://us-spambrella.cloud-protect.net/index01.php?mod_id=3D11&mo=
d_option=3Dlogitem&report=3D1&type=3Deasyspam&k=3Dk1&payload=3D53616c7465=
645f5fea8c57b67c78e5f7677b450a96d76c5569c2da7ae1aeb13c6edada0d5e269a27dc0=
fb8efcf298a0da23c3bf41834898b12af15fed7b8985fd0a7ec43a9d5156b6dbf6f74f145=
829a173cc5f867c746cca0172965bd6c93b97e72d644bb757a961d0282a0437d259030683=
e69897ccff14717087214db0464617e737ec61da3ec08c96f4c0fa01f252a9969ade7cca5=
c171c9982c188c89d2&mail_id=3D1691507286-POyJWK9wFacU&r_address=3Dmushtaq.=
syed%40verusresearch.net>
>     to report this email as spam.
>
>     NOTICE:=C2=A0 This electronic mail message is intended exclusively =
for
>     the individual or entity to which it is addressed. This message,
>     together with any attachment, may contain sensitive or privileged
>     information.=C2=A0 Any unauthorized review, use, printing, retentio=
n,
>     copying, disclosure, or distribution of said email is strictly
>     prohibited.=C2=A0 If you have received this message in error, pleas=
e
>     (1) immediately advise the sender by reply email message and (2)
>     delete all copies of this message.
>
> -----------------------------------------------------------------------=
-
>
> This email has been scanned for spam and viruses. Click here=20
> <https://us-spambrella.cloud-protect.net/index01.php?mod_id=3D11&mod_op=
tion=3Dlogitem&report=3D1&type=3Deasyspam&k=3Dk1&payload=3D53616c7465645f=
5fbd877c02265127cc86ac217dfee16e925a8cbb6d2cc5b208dee422d65787e89a5546e84=
fa8a2d7107380be42bb11098b0876b9df36392cff62ea04ee6e63dcadc7336a310908bfc1=
6315353b8dec4ee7fdd7120e7a4435178a8e1843353951b0f7f6b275bd83915710aa30ff6=
d0e3e528c1a8eeb6591fa09bc347465b39456c189b9be7f3fcddb6143d53317e437a3031c=
0a092f2c92b2ab&mail_id=3D1691508299-fGsuxxzvgRTW&r_address=3Dmushtaq.syed=
%40verusresearch.net>=20
> to report this email as spam.
>
> NOTICE:=C2=A0 This electronic mail message is intended exclusively for =
the=20
> individual or entity to which it is addressed. This message, together=20
> with any attachment, may contain sensitive or privileged information.=C2=
=A0=20
> Any unauthorized review, use, printing, retention, copying,=20
> disclosure, or distribution of said email is strictly prohibited.=C2=A0=
 If=20
> you have received this message in error, please (1) immediately advise=20
> the sender by reply email message and (2) delete all copies of this=20
> message.
>

--------------70ypar6ed1i9etZPYMjxZr8D
Content-Type: multipart/related;
 boundary="------------AesEhDJKdQiIiuy11A5w0bYq"

--------------AesEhDJKdQiIiuy11A5w0bYq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/08/2023 13:41, Mushtaq A. Syed,
      Ph.D. wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1046b2277c9247ab82e564d94d22dd1d@verusresearch.net">
      <!-- Template generated by Exclaimer Signature Manager Exchange Edi=
tion on 11:41:40 Thursday, 10 August 2023 -->
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css">P.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}LI.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}DIV.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}TABLE.ImprintUniqueIDTable {
	MARGIN: 0cm 0cm 0pt
}DIV.Section1 {
	page: Section1
}</style>
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}@font-face
	{font-family:"Exo 2";
	panose-1:0 0 5 0 0 0 0 0 0 0;}@font-face
	{font-family:"Exo 2 \;color\:\#008A86";
	panose-1:0 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Exo 2 \;color\:black";
	panose-1:0 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Exo 2 \;color\:\#00A18A";
	panose-1:0 0 0 0 0 0 0 0 0 0;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}p.imprintuniqueid, li.imprintuniqueid, div.imprint=
uniqueid
	{mso-style-name:imprintuniqueid;
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle25
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi Marcus:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I am trying to SSH into =
the
          E312. It is at 192.168.3.2. Per the document (E310/E312
          Getting Started Guides) the login name is supposed to be
          =E2=80=98root=E2=80=99 and password is empty; however, these ar=
e not working.
          <o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Would you know what are =
the
          login name and the password?
          <o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thanks a lot!<o:p></o:p>=
</p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Cheers,<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mushtaq<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
    </blockquote>
    (A) Please don't hijack another thread with a different question.=C2=A0
    It's confusing for everyone.=C2=A0 I've changed the subject<br>
    =C2=A0=C2=A0 line appropriately.<br>
    <br>
    (B) If it isn't set to the default, then someone set it to something
    else, and I have no idea what that might be.=C2=A0 If you load<br>
    =C2=A0 a factory image onto the uSD card, it'll have the factory
    username/password on it.=C2=A0 But apart from that, I'd have no idea<=
br>
    =C2=A0 what it is.<br>
    <br>
    (C) If you have the requisite knowledge, you could mount the uSD
    card on a Linux system, and manually edit the<br>
    =C2=A0=C2=A0 shadow password file to remove the (hashed) password.=C2=
=A0 Then put
    it back into your E312.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1046b2277c9247ab82e564d94d22dd1d@verusresearch.net">
      <div class=3D"WordSection1">
      </div>
      <p class=3D"ImprintUniqueID"><font face=3D"Exo 2">-----------------=
-----------<br>
        </font><font style=3D"font-family:Exo
          2;font-size:10pt;color:#008A86;">Mushtaq</font><font size=3D"4"
          face=3D"Exo 2" color=3D"#008a86">=C2=A0</font><font
          style=3D"font-family:Exo 2;font-size:10pt;color:#008A86;">Syed,
          Ph.D.</font><br>
        <font style=3D"font-family:Exo 2;font-size:9pt;">Principal Digita=
l
          Signal Processing Engineer</font><br>
        <font size=3D"1" face=3D"Exo 2"><font style=3D"font-family:Exo
            2;font-size:9pt;">Verus Research</font></font><br>
        <br>
        <a href=3D"http://" target=3D"" moz-do-not-send=3D"true"><img
            style=3D"border: 0px Solid ; "
            src=3D"cid:part1.0IrV2k4H.m5Mnq5dH@gmail.com" class=3D""
            width=3D"202" height=3D"82"></a><br>
        <br>
        <font style=3D"font-family:Exo 2;font-size:8pt;color:#000000;">Di=
rect
          =C2=A0</font><font style=3D"font-family:Exo
          2;font-size:8pt;color:#008A86;">505-396-7109</font><br>
        <font style=3D"font-family:Exo 2;font-size:8pt;color:windowtext;"=
>Cell
          =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</font><font style=3D"font-family=
:Exo
          2;font-size:8pt;color:#008A86;">408-514-7821</font><br>
        <br>
        <font size=3D"1" face=3D"Exo 2">6100 Uptown Blvd NE, Suite 260<br=
>
          Albuquerque, New Mexico 87110<br>
          <u><strong><font color=3D"#00a18a">verusresearch.net</font></st=
rong></u><br>
          ----------------------------</font></p>
      <p class=3D"ImprintUniqueID">=C2=A0</p>
      <div class=3D"WordSection1">
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Mushtaq A. Syed, Ph.D. <b=
r>
              <b>Sent:</b> Tuesday, August 8, 2023 9:28 AM<br>
              <b>To:</b> 'Marcus D. Leech'
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
              <b>Subject:</b> RE: [External] [USRP-users] Re: N310
              uhd_image_loader: two errors<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Hi Marcus:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Yes, the support package
          for E312 includes steps to program the SD card.<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thanks a lot!<o:p></o:p>=
</p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Cheers,<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mushtaq<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              <br>
              <b>Sent:</b> Tuesday, August 8, 2023 9:25 AM<br>
              <b>To:</b> Mushtaq A. Syed, Ph.D. &lt;<a
                href=3D"mailto:mushtaq.syed@verusresearch.net"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
mushtaq.syed@verusresearch.net</a>&gt;<br>
              <b>Subject:</b> Re: [External] [USRP-users] Re: N310
              uhd_image_loader: two errors<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 08/08/2023 11:22, Mushtaq A. Syed,
            Ph.D. wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Hi Marcus:<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mathworks/Matlab works
            with Ettus and has developed support packages for the E312
            and E310. I have used the support package for E310. I don=E2=80=
=99t
            know about the N series of radios. I am not using those.
            There is no functional over-reach on Mathworks=E2=80=99 part.=
<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thanks a lot!<o:p></o:p>=
</p>
          <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Cheers,<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mushtaq<o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Yes, I
          understand that you can use Matlab to develop signal flows for
          various Ettus products.=C2=A0 But I wasn't aware that those<br>
          =C2=A0 packages included "program an SD card with a proper syst=
em
          image" functionality.<br>
          <br>
          <br>
          <o:p></o:p></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"imprintuniqueid"><span style=3D"font-family:&quot;E=
xo
              2&quot;,serif">----------------------------<br>
            </span><span style=3D"font-size:10.0pt;font-family:&quot;Exo
              2&quot;,serif;color:#008A86">Mushtaq</span><span
              style=3D"font-size:13.5pt;font-family:&quot;Exo
              2&quot;,serif;color:#008A86">=C2=A0</span><span
              style=3D"font-size:10.0pt;font-family:&quot;Exo
              2&quot;,serif;color:#008A86">Syed, Ph.D.</span><br>
            <span style=3D"font-size:9.0pt;font-family:&quot;Exo
              2&quot;,serif">Principal Digital Signal Processing
              Engineer</span><br>
            <span style=3D"font-size:9.0pt;font-family:&quot;Exo
              2&quot;,serif">Verus Research</span><br>
            <br>
            <a href=3D"http://" moz-do-not-send=3D"true"><span
                style=3D"text-decoration:none"><img
                  style=3D"width:2.1041in;height:.8541in"
                  id=3D"_x0000_i1031"
                  src=3D"cid:part2.1eYAWpll.bhlD9gJe@gmail.com" class=3D"=
"
                  width=3D"202" height=3D"82" border=3D"0"></span></a><br=
>
            <br>
            <span style=3D"font-size:8.0pt;font-family:&quot;Exo
              2&quot;,serif;color:black">Direct =C2=A0</span><span
              style=3D"font-size:8.0pt;font-family:&quot;Exo
              2&quot;,serif;color:#008A86">505-396-7109</span><br>
            <span style=3D"font-size:8.0pt;font-family:&quot;Exo
              2&quot;,serif">Cell =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span sty=
le=3D"color:#008A86">408-514-7821</span></span><br>
            <br>
            <span style=3D"font-size:7.5pt;font-family:&quot;Exo
              2&quot;,serif">6100 Uptown Blvd NE, Suite 260<br>
              Albuquerque, New Mexico 87110<br>
              <strong><u><span style=3D"font-family:&quot;Exo
                    2&quot;,serif;color:#00A18A">verusresearch.net</span>=
</u></strong><br>
              ----------------------------</span><o:p></o:p></p>
          <p class=3D"imprintuniqueid">=C2=A0<o:p></o:p></p>
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech <a
                  href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true">
                  &lt;patchvonbraun@gmail.com&gt;</a> <br>
                <b>Sent:</b> Tuesday, August 8, 2023 9:08 AM<br>
                <b>To:</b> Mushtaq A. Syed, Ph.D. <a
                  href=3D"mailto:mushtaq.syed@verusresearch.net"
                  moz-do-not-send=3D"true">
                  &lt;mushtaq.syed@verusresearch.net&gt;</a><br>
                <b>Subject:</b> Re: [External] [USRP-users] Re: N310
                uhd_image_loader: two errors<o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">On 08/08/2023 10:45, Mushtaq A. Syed,
              Ph.D. wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">Hi Marcus:<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 You mentioned
              programming a SD card with the factory image. I have been
              trying to do that using Matlab, and I have been
              unsuccessful. I am guessing that you are not using Matlab.
              <o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 How are you doing the
              SD card programming, and could you please point me to the
              relevant documentation?<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thanks a lot!<o:p></o=
:p></p>
            <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Cheers,<o:p></o:p></p=
>
            <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mushtaq<o:p></o:p></p=
>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Not sure =
why
            MatLab would understand how to program an SD card with an
            N310 system image.=C2=A0 But maybe MatLab suffers<br>
            =C2=A0 from "wild functional over-reach".=C2=A0 I dunno.<br>
            <br>
            <br>
            <br>
            <o:p></o:p></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"imprintuniqueid"><span
                style=3D"font-family:&quot;Exo 2&quot;,serif">-----------=
-----------------<br>
              </span><span style=3D"font-size:10.0pt;font-family:&quot;Ex=
o
                2 ;color:#008A86&quot;,serif">Mushtaq</span><span
                style=3D"font-size:13.5pt;font-family:&quot;Exo 2
                ;color:#008A86&quot;,serif">=C2=A0</span><span
                style=3D"font-size:10.0pt;font-family:&quot;Exo 2
                ;color:#008A86&quot;,serif">Syed, Ph.D.</span><br>
              <span style=3D"font-size:9.0pt;font-family:&quot;Exo
                2&quot;,serif">Principal Digital Signal Processing
                Engineer</span><br>
              <span style=3D"font-size:9.0pt;font-family:&quot;Exo
                2&quot;,serif">Verus Research</span><br>
              <br>
              <a href=3D"http://" moz-do-not-send=3D"true"><span
                  style=3D"text-decoration:none"><img
                    style=3D"width:2.1041in;height:.8541in"
                    id=3D"Picture_x0020_1"
                    src=3D"cid:part2.1eYAWpll.bhlD9gJe@gmail.com" class=3D=
""
                    width=3D"202" height=3D"82" border=3D"0"></span></a><=
br>
              <br>
              <span style=3D"font-size:8.0pt;font-family:&quot;Exo 2
                ;color:black&quot;,serif">Direct =C2=A0</span><span
                style=3D"font-size:8.0pt;font-family:&quot;Exo 2
                ;color:#008A86&quot;,serif">505-396-7109</span><br>
              <span style=3D"font-size:8.0pt;font-family:&quot;Exo
                2&quot;,serif">Cell =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span s=
tyle=3D"color:#008A86">408-514-7821</span></span><br>
              <br>
              <span style=3D"font-size:7.5pt;font-family:&quot;Exo
                2&quot;,serif">6100 Uptown Blvd NE, Suite 260<br>
                Albuquerque, New Mexico 87110<br>
              </span><strong><u><span
                    style=3D"font-size:7.5pt;font-family:&quot;Exo 2
                    ;color:#00A18A&quot;,serif">verusresearch.net</span><=
/u></strong><span
                style=3D"font-size:7.5pt;font-family:&quot;Exo
                2&quot;,serif"><br>
                ----------------------------</span><o:p></o:p></p>
            <p class=3D"imprintuniqueid">=C2=A0<o:p></o:p></p>
            <div>
              <div style=3D"border:none;border-top:solid #E1E1E1
                1.0pt;padding:3.0pt 0in 0in 0in">
                <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech <a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    moz-do-not-send=3D"true">
                    &lt;patchvonbraun@gmail.com&gt;</a> <br>
                  <b>Sent:</b> Tuesday, August 8, 2023 8:37 AM<br>
                  <b>To:</b> <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> [External] [USRP-users] Re: N310
                  uhd_image_loader: two errors<o:p></o:p></p>
              </div>
            </div>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <div>
              <p class=3D"MsoNormal">On 08/08/2023 10:29, Bachmaier, Luca
                wrote:<o:p></o:p></p>
            </div>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">I=E2=80=99m currently building an im=
age for
                the USRP N310 and while using uhd_image_loader I ran
                into the following error (see below for entire output):<o=
:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [INFO]
                [MPM.PeriphManager] Installing component `dts'<o:p></o:p>=
</p>
              <p class=3D"MsoNormal" style=3D"margin-left:35.4pt">[ERROR]
                [UHD] An unexpected exception was caught in a task
                loop.The task loop will now exit, things may not
                work.rpc::timeout: Timeout of 10000ms while calling RPC
                function 'get_log_buf'<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">After this happened, the RJ45
                connection with the USRP seems to have stopped working.
                Running uhd_usrp_find_devices can=E2=80=99t find any devi=
ces.
                However I can still log in to the USRP over the Console
                JTAG interface through screen. When calling =E2=80=9Cip a=
=E2=80=9D on my
                host device and the USRP the Ethernet interfaces seem to
                be down, even after rebooting the USRP.<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">When I tried executing
                uhd_image_loader again I received this error:<o:p></o:p><=
/p>
              <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [ERROR] [MPMD IMAGE
                LOADER] mpmd_image_loader only supports a single device.<=
o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">Unfortunately I wasn=E2=80=99t able =
to find a
                lot of information about these errors online or in this
                mailing list. I=E2=80=99d be happy to hear any input abou=
t both
                of these errors.<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">Thank you and regards<o:p></o:p></p>
              <p class=3D"MsoNormal">Luca<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">Full ouput:<o:p></o:p></p>
              <p class=3D"MsoNormal">$ uhd_image_loader --args
                "type=3Dn3xx,addr=3D192.168.10.2" --fpga-path
                ./build/usrp_n310_fpga_XG.bit<o:p></o:p></p>
              <p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version
                12.2.0; Boost_107400; UHD_4.3.0.0+ds1-5<o:p></o:p></p>
              <p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1
                device(s) in parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31E9FA6,name=
=3Dni-n3xx-31E9FA6,fpga=3DHG,claimed=3DFalse,skip_init=3D1<o:p></o:p></p>
              <p class=3D"MsoNormal">[INFO] [MPMD] Claimed device without
                full initialization.<o:p></o:p></p>
              <p class=3D"MsoNormal">[INFO] [MPMD IMAGE LOADER] Starting
                update. This may take a while.<o:p></o:p></p>
              <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Installin=
g
                component `fpga'<o:p></o:p></p>
              <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Installin=
g
                component `dts'<o:p></o:p></p>
              <p class=3D"MsoNormal">[ERROR] [UHD] An unexpected exceptio=
n
                was caught in a task loop.The task loop will now exit,
                things may not work.rpc::timeout: Timeout of 10000ms
                while calling RPC function 'get_log_buf'<o:p></o:p></p>
              <p class=3D"MsoNormal">[ERROR] [UHD] Exception caught in
                safe-call.<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0 in ~mpmd_mboard_impl<o:p></o:=
p></p>
              <p class=3D"MsoNormal">=C2=A0at
                ./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:320<o:p></o:p><=
/p>
              <p class=3D"MsoNormal">dump_logs(); _claimer_task.reset();
                if (not
                rpc-&gt;request_with_token&lt;bool&gt;("unclaim")) {
                uhd::_log::log(uhd::log::warning,
                "./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 322,
                "MPMD", std::this_thread::get_id()) &lt;&lt; "Failure to
                ack unclaim!";; } -&gt; rpc::timeout: Timeout of 10000ms
                while calling RPC function 'get_log_buf'<o:p></o:p></p>
              <p class=3D"MsoNormal">Error: rpc::timeout: Timeout of
                120000ms while calling RPC function 'update_component'<o:=
p></o:p></p>
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
                <br>
                <br>
                <o:p></o:p></p>
              <pre>_______________________________________________<o:p></=
o:p></pre>
              <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-user=
s@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetex=
t">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
              <pre>To unsubscribe send an email to <a href=3D"mailto:usrp=
-users-leave@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-l=
ink-freetext">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
            </blockquote>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Well, I
              guess the first thing to do is to run a factory system
              image on the device and make sure that it is sane--just
              program<br>
              =C2=A0 an uSD card with the factory image and run that to m=
ake
              sure it is sane.<br>
              <br>
              <br>
              <br>
              <o:p></o:p></p>
            <p>=C2=A0<o:p></o:p></p>
            <div class=3D"MsoNormal" style=3D"text-align:center"
              align=3D"center">
              <hr width=3D"100%" size=3D"2" align=3D"center">
            </div>
            <p>This email has been scanned for spam and viruses. Click <a
href=3D"https://us-spambrella.cloud-protect.net/index01.php?mod_id=3D11&a=
mp;mod_option=3Dlogitem&amp;report=3D1&amp;type=3Deasyspam&amp;k=3Dk1&amp=
;payload=3D53616c7465645f5f3c43e49f31484e2a861bcf68190af6563d065283b6af2a=
0db50609403a0f727cad0f3b106449a8e0d62c7044755fddd43d632d4ab555bbc608a2197=
d37ca6237091c2655f9527234773628d802376b528b43af442c707b6f09d39998fc68cd19=
152d2639ebc4cc9602bab8ce8ad18f3ea4416533441c12d8a2ebdba13a2385f51afeef068=
bc4e0d81fd7be34612a4601707be6ea009bb488&amp;mail_id=3D1691505472-GpuNJfWb=
Zwnl&amp;r_address=3Dmushtaq.syed%40verusresearch.net"
                moz-do-not-send=3D"true">
                here</a> to report this email as spam.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p>NOTICE:=C2=A0 This electronic mail message is intended
              exclusively for the individual or entity to which it is
              addressed. This message, together with any attachment, may
              contain sensitive or privileged information.=C2=A0 Any
              unauthorized review, use, printing, retention, copying,
              disclosure, or distribution of said email is strictly
              prohibited.=C2=A0 If you have received this message in erro=
r,
              please (1) immediately advise the sender by reply email
              message and (2) delete all copies of this message.<o:p></o:=
p></p>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">=C2=A0<o:=
p></o:p></p>
          <p>=C2=A0<o:p></o:p></p>
          <div class=3D"MsoNormal" style=3D"text-align:center"
            align=3D"center">
            <hr width=3D"100%" size=3D"2" align=3D"center">
          </div>
          <p>This email has been scanned for spam and viruses. Click <a
href=3D"https://us-spambrella.cloud-protect.net/index01.php?mod_id=3D11&a=
mp;mod_option=3Dlogitem&amp;report=3D1&amp;type=3Deasyspam&amp;k=3Dk1&amp=
;payload=3D53616c7465645f5fea8c57b67c78e5f7677b450a96d76c5569c2da7ae1aeb1=
3c6edada0d5e269a27dc0fb8efcf298a0da23c3bf41834898b12af15fed7b8985fd0a7ec4=
3a9d5156b6dbf6f74f145829a173cc5f867c746cca0172965bd6c93b97e72d644bb757a96=
1d0282a0437d259030683e69897ccff14717087214db0464617e737ec61da3ec08c96f4c0=
fa01f252a9969ade7cca5c171c9982c188c89d2&amp;mail_id=3D1691507286-POyJWK9w=
FacU&amp;r_address=3Dmushtaq.syed%40verusresearch.net"
              moz-do-not-send=3D"true">
              here</a> to report this email as spam.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p>NOTICE:=C2=A0 This electronic mail message is intended
            exclusively for the individual or entity to which it is
            addressed. This message, together with any attachment, may
            contain sensitive or privileged information.=C2=A0 Any
            unauthorized review, use, printing, retention, copying,
            disclosure, or distribution of said email is strictly
            prohibited.=C2=A0 If you have received this message in error,
            please (1) immediately advise the sender by reply email
            message and (2) delete all copies of this message.<o:p></o:p>=
</p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>=C2=A0=
</o:p></p>
        <p>=C2=A0<o:p></o:p></p>
        <div class=3D"MsoNormal" style=3D"text-align:center" align=3D"cen=
ter">
          <hr width=3D"100%" size=3D"2" align=3D"center">
        </div>
        <p>This email has been scanned for spam and viruses. Click <a
href=3D"https://us-spambrella.cloud-protect.net/index01.php?mod_id=3D11&a=
mp;mod_option=3Dlogitem&amp;report=3D1&amp;type=3Deasyspam&amp;k=3Dk1&amp=
;payload=3D53616c7465645f5fbd877c02265127cc86ac217dfee16e925a8cbb6d2cc5b2=
08dee422d65787e89a5546e84fa8a2d7107380be42bb11098b0876b9df36392cff62ea04e=
e6e63dcadc7336a310908bfc16315353b8dec4ee7fdd7120e7a4435178a8e1843353951b0=
f7f6b275bd83915710aa30ff6d0e3e528c1a8eeb6591fa09bc347465b39456c189b9be7f3=
fcddb6143d53317e437a3031c0a092f2c92b2ab&amp;mail_id=3D1691508299-fGsuxxzv=
gRTW&amp;r_address=3Dmushtaq.syed%40verusresearch.net"
            moz-do-not-send=3D"true">
            here</a> to report this email as spam.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <p>NOTICE:=C2=A0 This electronic mail message is intended exclusive=
ly
        for the individual or entity to which it is addressed. This
        message, together with any attachment, may contain sensitive or
        privileged information.=C2=A0 Any unauthorized review, use, print=
ing,
        retention, copying, disclosure, or distribution of said email is
        strictly prohibited.=C2=A0 If you have received this message in
        error, please (1) immediately advise the sender by reply email
        message and (2) delete all copies of this message.</p>
    </blockquote>
    <br>
  </body>
</html>
--------------AesEhDJKdQiIiuy11A5w0bYq
Content-Type: image/jpeg; name="image56cebc.JPG"
Content-Disposition: inline; filename="image56cebc.JPG"
Content-Id: <part1.0IrV2k4H.m5Mnq5dH@gmail.com>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAA
AAD/4gxYSUNDX1BST0ZJTEUAAQEAAAxITGlubwIQAABtbnRyUkdCIFhZWiAHzgACAAkABgAx
AABhY3NwTVNGVAAAAABJRUMgc1JHQgAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLUhQICAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFjcHJ0AAABUAAA
ADNkZXNjAAABhAAAAGx3dHB0AAAB8AAAABRia3B0AAACBAAAABRyWFlaAAACGAAAABRnWFla
AAACLAAAABRiWFlaAAACQAAAABRkbW5kAAACVAAAAHBkbWRkAAACxAAAAIh2dWVkAAADTAAA
AIZ2aWV3AAAD1AAAACRsdW1pAAAD+AAAABRtZWFzAAAEDAAAACR0ZWNoAAAEMAAAAAxyVFJD
AAAEPAAACAxnVFJDAAAEPAAACAxiVFJDAAAEPAAACAx0ZXh0AAAAAENvcHlyaWdodCAoYykg
MTk5OCBIZXdsZXR0LVBhY2thcmQgQ29tcGFueQAAZGVzYwAAAAAAAAASc1JHQiBJRUM2MTk2
Ni0yLjEAAAAAAAAAAAAAABJzUkdCIElFQzYxOTY2LTIuMQAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWFlaIAAAAAAAAPNRAAEAAAABFsxYWVog
AAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAA
GNpYWVogAAAAAAAAJKAAAA+EAAC2z2Rlc2MAAAAAAAAAFklFQyBodHRwOi8vd3d3LmllYy5j
aAAAAAAAAAAAAAAAFklFQyBodHRwOi8vd3d3LmllYy5jaAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkZXNjAAAAAAAAAC5JRUMgNjE5NjYtMi4xIERl
ZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAAAAAAAC5JRUMgNjE5NjYtMi4x
IERlZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
ZGVzYwAAAAAAAAAsUmVmZXJlbmNlIFZpZXdpbmcgQ29uZGl0aW9uIGluIElFQzYxOTY2LTIu
MQAAAAAAAAAAAAAALFJlZmVyZW5jZSBWaWV3aW5nIENvbmRpdGlvbiBpbiBJRUM2MTk2Ni0y
LjEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHZpZXcAAAAAABOk/gAUXy4AEM8UAAPtzAAE
EwsAA1yeAAAAAVhZWiAAAAAAAEwJVgBQAAAAVx/nbWVhcwAAAAAAAAABAAAAAAAAAAAAAAAA
AAAAAAAAAo8AAAACc2lnIAAAAABDUlQgY3VydgAAAAAAAAQAAAAABQAKAA8AFAAZAB4AIwAo
AC0AMgA3ADsAQABFAEoATwBUAFkAXgBjAGgAbQByAHcAfACBAIYAiwCQAJUAmgCfAKQAqQCu
ALIAtwC8AMEAxgDLANAA1QDbAOAA5QDrAPAA9gD7AQEBBwENARMBGQEfASUBKwEyATgBPgFF
AUwBUgFZAWABZwFuAXUBfAGDAYsBkgGaAaEBqQGxAbkBwQHJAdEB2QHhAekB8gH6AgMCDAIU
Ah0CJgIvAjgCQQJLAlQCXQJnAnECegKEAo4CmAKiAqwCtgLBAssC1QLgAusC9QMAAwsDFgMh
Ay0DOANDA08DWgNmA3IDfgOKA5YDogOuA7oDxwPTA+AD7AP5BAYEEwQgBC0EOwRIBFUEYwRx
BH4EjASaBKgEtgTEBNME4QTwBP4FDQUcBSsFOgVJBVgFZwV3BYYFlgWmBbUFxQXVBeUF9gYG
BhYGJwY3BkgGWQZqBnsGjAadBq8GwAbRBuMG9QcHBxkHKwc9B08HYQd0B4YHmQesB78H0gfl
B/gICwgfCDIIRghaCG4IggiWCKoIvgjSCOcI+wkQCSUJOglPCWQJeQmPCaQJugnPCeUJ+woR
CicKPQpUCmoKgQqYCq4KxQrcCvMLCwsiCzkLUQtpC4ALmAuwC8gL4Qv5DBIMKgxDDFwMdQyO
DKcMwAzZDPMNDQ0mDUANWg10DY4NqQ3DDd4N+A4TDi4OSQ5kDn8Omw62DtIO7g8JDyUPQQ9e
D3oPlg+zD88P7BAJECYQQxBhEH4QmxC5ENcQ9RETETERTxFtEYwRqhHJEegSBxImEkUSZBKE
EqMSwxLjEwMTIxNDE2MTgxOkE8UT5RQGFCcUSRRqFIsUrRTOFPAVEhU0FVYVeBWbFb0V4BYD
FiYWSRZsFo8WshbWFvoXHRdBF2UXiReuF9IX9xgbGEAYZRiKGK8Y1Rj6GSAZRRlrGZEZtxnd
GgQaKhpRGncanhrFGuwbFBs7G2MbihuyG9ocAhwqHFIcexyjHMwc9R0eHUcdcB2ZHcMd7B4W
HkAeah6UHr4e6R8THz4faR+UH78f6iAVIEEgbCCYIMQg8CEcIUghdSGhIc4h+yInIlUigiKv
It0jCiM4I2YjlCPCI/AkHyRNJHwkqyTaJQklOCVoJZclxyX3JicmVyaHJrcm6CcYJ0kneier
J9woDSg/KHEooijUKQYpOClrKZ0p0CoCKjUqaCqbKs8rAis2K2krnSvRLAUsOSxuLKIs1y0M
LUEtdi2rLeEuFi5MLoIuty7uLyQvWi+RL8cv/jA1MGwwpDDbMRIxSjGCMbox8jIqMmMymzLU
Mw0zRjN/M7gz8TQrNGU0njTYNRM1TTWHNcI1/TY3NnI2rjbpNyQ3YDecN9c4FDhQOIw4yDkF
OUI5fzm8Ofk6Njp0OrI67zstO2s7qjvoPCc8ZTykPOM9Ij1hPaE94D4gPmA+oD7gPyE/YT+i
P+JAI0BkQKZA50EpQWpBrEHuQjBCckK1QvdDOkN9Q8BEA0RHRIpEzkUSRVVFmkXeRiJGZ0ar
RvBHNUd7R8BIBUhLSJFI10kdSWNJqUnwSjdKfUrESwxLU0uaS+JMKkxyTLpNAk1KTZNN3E4l
Tm5Ot08AT0lPk0/dUCdQcVC7UQZRUFGbUeZSMVJ8UsdTE1NfU6pT9lRCVI9U21UoVXVVwlYP
VlxWqVb3V0RXklfgWC9YfVjLWRpZaVm4WgdaVlqmWvVbRVuVW+VcNVyGXNZdJ114XcleGl5s
Xr1fD19hX7NgBWBXYKpg/GFPYaJh9WJJYpxi8GNDY5dj62RAZJRk6WU9ZZJl52Y9ZpJm6Gc9
Z5Nn6Wg/aJZo7GlDaZpp8WpIap9q92tPa6dr/2xXbK9tCG1gbbluEm5rbsRvHm94b9FwK3CG
cOBxOnGVcfByS3KmcwFzXXO4dBR0cHTMdSh1hXXhdj52m3b4d1Z3s3gReG54zHkqeYl553pG
eqV7BHtje8J8IXyBfOF9QX2hfgF+Yn7CfyN/hH/lgEeAqIEKgWuBzYIwgpKC9INXg7qEHYSA
hOOFR4Wrhg6GcobXhzuHn4gEiGmIzokziZmJ/opkisqLMIuWi/yMY4zKjTGNmI3/jmaOzo82
j56QBpBukNaRP5GokhGSepLjk02TtpQglIqU9JVflcmWNJaflwqXdZfgmEyYuJkkmZCZ/Jpo
mtWbQpuvnByciZz3nWSd0p5Anq6fHZ+Ln/qgaaDYoUehtqImopajBqN2o+akVqTHpTilqaYa
poum/adup+CoUqjEqTepqaocqo+rAqt1q+msXKzQrUStuK4trqGvFq+LsACwdbDqsWCx1rJL
ssKzOLOutCW0nLUTtYq2AbZ5tvC3aLfguFm40blKucK6O7q1uy67p7whvJu9Fb2Pvgq+hL7/
v3q/9cBwwOzBZ8Hjwl/C28NYw9TEUcTOxUvFyMZGxsPHQce/yD3IvMk6ybnKOMq3yzbLtsw1
zLXNNc21zjbOts83z7jQOdC60TzRvtI/0sHTRNPG1EnUy9VO1dHWVdbY11zX4Nhk2OjZbNnx
2nba+9uA3AXcit0Q3ZbeHN6i3ynfr+A24L3hROHM4lPi2+Nj4+vkc+T85YTmDeaW5x/nqegy
6LzpRunQ6lvq5etw6/vshu0R7ZzuKO6070DvzPBY8OXxcvH/8ozzGfOn9DT0wvVQ9d72bfb7
94r4Gfio+Tj5x/pX+uf7d/wH/Jj9Kf26/kv+3P9t////2wBDAAIBAQIBAQICAgICAgICAwUD
AwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQIC
AgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM
DAwMDAwMDAz/wAARCABaANwDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQF
BgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0Kx
wRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlq
c3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT
1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQF
BgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHB
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

--------------AesEhDJKdQiIiuy11A5w0bYq
Content-Type: image/jpeg; name="image001.jpg"
Content-Disposition: inline; filename="image001.jpg"
Content-Id: <part2.1eYAWpll.bhlD9gJe@gmail.com>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAA
AAD/4gxYSUNDX1BST0ZJTEUAAQEAAAxITGlubwIQAABtbnRyUkdCIFhZWiAHzgACAAkABgAx
AABhY3NwTVNGVAAAAABJRUMgc1JHQgAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLUhQICAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFjcHJ0AAABUAAA
ADNkZXNjAAABhAAAAGx3dHB0AAAB8AAAABRia3B0AAACBAAAABRyWFlaAAACGAAAABRnWFla
AAACLAAAABRiWFlaAAACQAAAABRkbW5kAAACVAAAAHBkbWRkAAACxAAAAIh2dWVkAAADTAAA
AIZ2aWV3AAAD1AAAACRsdW1pAAAD+AAAABRtZWFzAAAEDAAAACR0ZWNoAAAEMAAAAAxyVFJD
AAAEPAAACAxnVFJDAAAEPAAACAxiVFJDAAAEPAAACAx0ZXh0AAAAAENvcHlyaWdodCAoYykg
MTk5OCBIZXdsZXR0LVBhY2thcmQgQ29tcGFueQAAZGVzYwAAAAAAAAASc1JHQiBJRUM2MTk2
Ni0yLjEAAAAAAAAAAAAAABJzUkdCIElFQzYxOTY2LTIuMQAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWFlaIAAAAAAAAPNRAAEAAAABFsxYWVog
AAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAA
GNpYWVogAAAAAAAAJKAAAA+EAAC2z2Rlc2MAAAAAAAAAFklFQyBodHRwOi8vd3d3LmllYy5j
aAAAAAAAAAAAAAAAFklFQyBodHRwOi8vd3d3LmllYy5jaAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkZXNjAAAAAAAAAC5JRUMgNjE5NjYtMi4xIERl
ZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAAAAAAAC5JRUMgNjE5NjYtMi4x
IERlZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
ZGVzYwAAAAAAAAAsUmVmZXJlbmNlIFZpZXdpbmcgQ29uZGl0aW9uIGluIElFQzYxOTY2LTIu
MQAAAAAAAAAAAAAALFJlZmVyZW5jZSBWaWV3aW5nIENvbmRpdGlvbiBpbiBJRUM2MTk2Ni0y
LjEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHZpZXcAAAAAABOk/gAUXy4AEM8UAAPtzAAE
EwsAA1yeAAAAAVhZWiAAAAAAAEwJVgBQAAAAVx/nbWVhcwAAAAAAAAABAAAAAAAAAAAAAAAA
AAAAAAAAAo8AAAACc2lnIAAAAABDUlQgY3VydgAAAAAAAAQAAAAABQAKAA8AFAAZAB4AIwAo
AC0AMgA3ADsAQABFAEoATwBUAFkAXgBjAGgAbQByAHcAfACBAIYAiwCQAJUAmgCfAKQAqQCu
ALIAtwC8AMEAxgDLANAA1QDbAOAA5QDrAPAA9gD7AQEBBwENARMBGQEfASUBKwEyATgBPgFF
AUwBUgFZAWABZwFuAXUBfAGDAYsBkgGaAaEBqQGxAbkBwQHJAdEB2QHhAekB8gH6AgMCDAIU
Ah0CJgIvAjgCQQJLAlQCXQJnAnECegKEAo4CmAKiAqwCtgLBAssC1QLgAusC9QMAAwsDFgMh
Ay0DOANDA08DWgNmA3IDfgOKA5YDogOuA7oDxwPTA+AD7AP5BAYEEwQgBC0EOwRIBFUEYwRx
BH4EjASaBKgEtgTEBNME4QTwBP4FDQUcBSsFOgVJBVgFZwV3BYYFlgWmBbUFxQXVBeUF9gYG
BhYGJwY3BkgGWQZqBnsGjAadBq8GwAbRBuMG9QcHBxkHKwc9B08HYQd0B4YHmQesB78H0gfl
B/gICwgfCDIIRghaCG4IggiWCKoIvgjSCOcI+wkQCSUJOglPCWQJeQmPCaQJugnPCeUJ+woR
CicKPQpUCmoKgQqYCq4KxQrcCvMLCwsiCzkLUQtpC4ALmAuwC8gL4Qv5DBIMKgxDDFwMdQyO
DKcMwAzZDPMNDQ0mDUANWg10DY4NqQ3DDd4N+A4TDi4OSQ5kDn8Omw62DtIO7g8JDyUPQQ9e
D3oPlg+zD88P7BAJECYQQxBhEH4QmxC5ENcQ9RETETERTxFtEYwRqhHJEegSBxImEkUSZBKE
EqMSwxLjEwMTIxNDE2MTgxOkE8UT5RQGFCcUSRRqFIsUrRTOFPAVEhU0FVYVeBWbFb0V4BYD
FiYWSRZsFo8WshbWFvoXHRdBF2UXiReuF9IX9xgbGEAYZRiKGK8Y1Rj6GSAZRRlrGZEZtxnd
GgQaKhpRGncanhrFGuwbFBs7G2MbihuyG9ocAhwqHFIcexyjHMwc9R0eHUcdcB2ZHcMd7B4W
HkAeah6UHr4e6R8THz4faR+UH78f6iAVIEEgbCCYIMQg8CEcIUghdSGhIc4h+yInIlUigiKv
It0jCiM4I2YjlCPCI/AkHyRNJHwkqyTaJQklOCVoJZclxyX3JicmVyaHJrcm6CcYJ0kneier
J9woDSg/KHEooijUKQYpOClrKZ0p0CoCKjUqaCqbKs8rAis2K2krnSvRLAUsOSxuLKIs1y0M
LUEtdi2rLeEuFi5MLoIuty7uLyQvWi+RL8cv/jA1MGwwpDDbMRIxSjGCMbox8jIqMmMymzLU
Mw0zRjN/M7gz8TQrNGU0njTYNRM1TTWHNcI1/TY3NnI2rjbpNyQ3YDecN9c4FDhQOIw4yDkF
OUI5fzm8Ofk6Njp0OrI67zstO2s7qjvoPCc8ZTykPOM9Ij1hPaE94D4gPmA+oD7gPyE/YT+i
P+JAI0BkQKZA50EpQWpBrEHuQjBCckK1QvdDOkN9Q8BEA0RHRIpEzkUSRVVFmkXeRiJGZ0ar
RvBHNUd7R8BIBUhLSJFI10kdSWNJqUnwSjdKfUrESwxLU0uaS+JMKkxyTLpNAk1KTZNN3E4l
Tm5Ot08AT0lPk0/dUCdQcVC7UQZRUFGbUeZSMVJ8UsdTE1NfU6pT9lRCVI9U21UoVXVVwlYP
VlxWqVb3V0RXklfgWC9YfVjLWRpZaVm4WgdaVlqmWvVbRVuVW+VcNVyGXNZdJ114XcleGl5s
Xr1fD19hX7NgBWBXYKpg/GFPYaJh9WJJYpxi8GNDY5dj62RAZJRk6WU9ZZJl52Y9ZpJm6Gc9
Z5Nn6Wg/aJZo7GlDaZpp8WpIap9q92tPa6dr/2xXbK9tCG1gbbluEm5rbsRvHm94b9FwK3CG
cOBxOnGVcfByS3KmcwFzXXO4dBR0cHTMdSh1hXXhdj52m3b4d1Z3s3gReG54zHkqeYl553pG
eqV7BHtje8J8IXyBfOF9QX2hfgF+Yn7CfyN/hH/lgEeAqIEKgWuBzYIwgpKC9INXg7qEHYSA
hOOFR4Wrhg6GcobXhzuHn4gEiGmIzokziZmJ/opkisqLMIuWi/yMY4zKjTGNmI3/jmaOzo82
j56QBpBukNaRP5GokhGSepLjk02TtpQglIqU9JVflcmWNJaflwqXdZfgmEyYuJkkmZCZ/Jpo
mtWbQpuvnByciZz3nWSd0p5Anq6fHZ+Ln/qgaaDYoUehtqImopajBqN2o+akVqTHpTilqaYa
poum/adup+CoUqjEqTepqaocqo+rAqt1q+msXKzQrUStuK4trqGvFq+LsACwdbDqsWCx1rJL
ssKzOLOutCW0nLUTtYq2AbZ5tvC3aLfguFm40blKucK6O7q1uy67p7whvJu9Fb2Pvgq+hL7/
v3q/9cBwwOzBZ8Hjwl/C28NYw9TEUcTOxUvFyMZGxsPHQce/yD3IvMk6ybnKOMq3yzbLtsw1
zLXNNc21zjbOts83z7jQOdC60TzRvtI/0sHTRNPG1EnUy9VO1dHWVdbY11zX4Nhk2OjZbNnx
2nba+9uA3AXcit0Q3ZbeHN6i3ynfr+A24L3hROHM4lPi2+Nj4+vkc+T85YTmDeaW5x/nqegy
6LzpRunQ6lvq5etw6/vshu0R7ZzuKO6070DvzPBY8OXxcvH/8ozzGfOn9DT0wvVQ9d72bfb7
94r4Gfio+Tj5x/pX+uf7d/wH/Jj9Kf26/kv+3P9t////2wBDAAIBAQIBAQICAgICAgICAwUD
AwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQIC
AgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM
DAwMDAwMDAz/wAARCABaANwDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQF
BgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0Kx
wRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlq
c3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT
1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQF
BgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHB
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


--------------AesEhDJKdQiIiuy11A5w0bYq--

--------------70ypar6ed1i9etZPYMjxZr8D--

--===============6136438206736373808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6136438206736373808==--
