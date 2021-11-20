Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9857457A65
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 02:21:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0EEF3842E8
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 20:21:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fJf5LJIh";
	dkim-atps=neutral
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 10C0D384117
	for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 20:20:12 -0500 (EST)
Received: by mail-io1-f41.google.com with SMTP id z26so15047503iod.10
        for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 17:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=DfXR01mYVhzLuMI2L1LQ4iJJNoiMcs+HIkTLOG4HSLg=;
        b=fJf5LJIh+SQLHFhfXH8gbVlSkHY+JrPshW0NhOiKXN7SGJhutvTz0FWXgQlKay9wER
         eLSd98yTY1/ETM7DmUs14T5HqNLXst8OccCWWp0hXgK4vwOH4f2+9OE63E85Gb/FumDv
         63A99j1f/Y79BKDwnC94S4o5gHiUkWpFfRXRFLAtMH317C7oOB1zsfMJPCTop9OdKcIl
         DqrRzMEO2bB95T39oNzVC/AMymxU2L8x7qsJV3gJaLTeu0PW+YQdLT4T2GeMXiNPv8o9
         /V2kWbwaGqNzd5Ov6DfbTNkrFQTYY9NzBvrl9Rxu4XpZk+ME024PUJVFM7rIe777eyRS
         4QbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=DfXR01mYVhzLuMI2L1LQ4iJJNoiMcs+HIkTLOG4HSLg=;
        b=371JXNChZipJv/mSllUqI5mKBR5osrgexnQ9P6rSTdhf5ATja65Fad9RZBzgUQSosH
         Fi1hPQE0iz4ePTOtcxdIHBA0eDPDW5Ul/rSZbFFgU7YrIiIK8GvjJ58Dz1R8SVvNs/YZ
         Fg1L5HML9qrogENUFAjHke/lmFCAVb7X96A3+4czO7bEUmmAu7QkvZoBYB/GtpAhGAXi
         fr4lEsixbDjGiBZk0INy68SLr9V6prOP68oOh+mG/7tq7s9Zs7SBvmZkAxQqaFVuwOdq
         tAszu2NyR1TI9B8mu0vm6N/fJSY7pSB4oXhhcSkdDY8kU3f2E6fyLSiQHlRdcS1JXw9D
         B0nA==
X-Gm-Message-State: AOAM531r0K+miOiFQfKn3OtiflWCemaoI4F28Rdi80N5tXrm1Ud5uU7l
	BWR3WaxK6BBLIBKZ+BSTBd389pj3zlo=
X-Google-Smtp-Source: ABdhPJyfyhN4Chk2/8EpP/TLObvaS9NMchFKsQK73lW67DNpXA9YFcUy7ZcNVnPee6JLv02sY7MGJQ==
X-Received: by 2002:a05:6602:26c8:: with SMTP id g8mr8953567ioo.74.1637371212210;
        Fri, 19 Nov 2021 17:20:12 -0800 (PST)
Received: from [192.168.2.240] (bras-base-smflon1825w-grc-06-174-88-54-236.dsl.bell.ca. [174.88.54.236])
        by smtp.googlemail.com with ESMTPSA id g8sm1127674ilf.33.2021.11.19.17.20.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Nov 2021 17:20:11 -0800 (PST)
Message-ID: <93affa15-2a92-f0a1-e264-6f75897f166a@gmail.com>
Date: Fri, 19 Nov 2021 20:20:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKhiL6XmU9VLYFAGOoGPTTUcw_T1AHC75PrpYu3vOpwmHi5N+A@mail.gmail.com>
 <CACaXmv_gG+Ah4dvEuXxYa5Fkx5fE=zmvOar87RRiv7snjHNmtA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACaXmv_gG+Ah4dvEuXxYa5Fkx5fE=zmvOar87RRiv7snjHNmtA@mail.gmail.com>
Message-ID-Hash: EHT6LZVATSX3BFYQOLGHZWP7IGMD4BP5
X-Message-ID-Hash: EHT6LZVATSX3BFYQOLGHZWP7IGMD4BP5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP x310 ERROR_CODE_OVERFLOW issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EHT6LZVATSX3BFYQOLGHZWP7IGMD4BP5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6222646931876005642=="

This is a multi-part message in MIME format.
--===============6222646931876005642==
Content-Type: multipart/alternative;
 boundary="------------BbBoohXeC0mLG1BvE08cHV2P"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BbBoohXeC0mLG1BvE08cHV2P
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-19 12:19, Neel Pandeya wrote:
> Hello=C2=A0LoyCurtis Smith:
>
> Thanks for the detailed information about=C2=A0your system configuratio=
n.=C2=A0=20
> Everything looks fine at=C2=A0initial glance, and I would expect this t=
o=20
> work.=C2=A0 I might say that the clock speed of your=C2=A0Dell Latitude=
 E5570=20
> i7-6820HQ CPU might be too low, I would generally=C2=A0recommend a cloc=
k=20
> speed of 3.5 GHz or higher, but it depends=C2=A0on what you're doing, w=
hat=20
> the sampling rate is, and what the network traffic is, etc.
>
> What channel bandwidth are you using?
>
> Could you please run the "benchmark_rate" utility on both the gNB and=20
> nrUE sides, using the same sampling rates that you're using for the=20
> gNB and nrUE, and let me know your results?=C2=A0 This utility will tes=
t=20
> your interface at the desired sampling rate and see if it can sustain=20
> the data streaming rate.
>
> ./benchmark_rate --tx_rate 15.76e6 --rx_rate 15.76e6 --duration 600
>
> --
I think Mr. Smith did run that test, and it was fine (after I pointed=20
him at the correct directory for the benchmark_rate example).


--------------BbBoohXeC0mLG1BvE08cHV2P
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-19 12:19, Neel Pandeya
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CACaXmv_gG+Ah4dvEuXxYa5Fkx5fE=3DzmvOar87RRiv7snjHNmtA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div class=3D"gmail_default" style=3D""><font face=3D"verdana,
              sans-serif">Hello=C2=A0LoyCurtis Smith:</font></div>
          <div class=3D"gmail_default" style=3D""><font face=3D"verdana,
              sans-serif"><br>
            </font></div>
          <div class=3D"gmail_default" style=3D""><font face=3D"verdana,
              sans-serif">Thanks for the detailed information about=C2=A0=
your
              system configuration.=C2=A0 Everything looks fine at=C2=A0i=
nitial
              glance, and I would expect this to work.=C2=A0 I might say =
that
              the clock speed of your=C2=A0Dell Latitude E5570 i7-6820HQ =
CPU
              might be too low, I would generally=C2=A0recommend a clock
              speed of 3.5 GHz or higher, but it depends=C2=A0on what you=
're
              doing, what the sampling rate is, and what the network
              traffic is, etc.</font></div>
          <div class=3D"gmail_default" style=3D""><font face=3D"verdana,
              sans-serif"><br>
            </font></div>
          <div class=3D"gmail_default" style=3D""><span
              style=3D"font-family:verdana,sans-serif">What channel
              bandwidth are you using?</span><br>
          </div>
          <div class=3D"gmail_default" style=3D""><font face=3D"verdana,
              sans-serif"><br>
            </font></div>
          <div class=3D"gmail_default" style=3D""><font face=3D"verdana,
              sans-serif">Could you please run the "benchmark_rate"
              utility on both the gNB and nrUE sides, using the same
              sampling rates that you're using for the gNB and nrUE, and
              let me know your results?=C2=A0 This utility will test your
              interface at the desired sampling rate and see if it can
              sustain the data streaming rate.</font></div>
          <div class=3D"gmail_default" style=3D""><font face=3D"verdana,
              sans-serif"><br>
            </font></div>
          <div class=3D"gmail_default" style=3D""><font face=3D"monospace=
">./benchmark_rate
              --tx_rate 15.76e6 --rx_rate 15.76e6 --duration 600</font><f=
ont
              face=3D"verdana, sans-serif"><br>
            </font></div>
          <div class=3D"gmail_default" style=3D""><font face=3D"verdana,
              sans-serif"><br>
            </font></div>
          <div>
            <div dir=3D"ltr" class=3D"gmail_signature"
              data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr"><font face=3D"verdana, sans-serif">--</fon=
t><br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <font face=3D"verdana, sans-serif">I think Mr. Smith did run that
      test, and it was fine (after I pointed him at the correct
      directory for the benchmark_rate example).<br>
      <br>
      <br>
    </font>
  </body>
</html>
--------------BbBoohXeC0mLG1BvE08cHV2P--

--===============6222646931876005642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6222646931876005642==--
