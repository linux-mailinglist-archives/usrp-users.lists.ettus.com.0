Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4011F6B7BA7
	for <lists+usrp-users@lfdr.de>; Mon, 13 Mar 2023 16:13:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 354533845CC
	for <lists+usrp-users@lfdr.de>; Mon, 13 Mar 2023 11:13:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678720425; bh=W6cyUNE9XlSvUScY80CiHy63d894SssX3OawIclnFns=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SZO+iclZYeRIn0g/RherzgHPlNV9HKnPa5LwO2Xq7uRBCDDBYqeM1KQfRXtN3lgOp
	 RLr1Xw4Esnu6mCYpahP02v3wtsYYcqPl0EDjs6YO1dPBqOfQPpwOJ1CB/DbC1Hkt4h
	 tRc0avtJ63aOyot8mNN6ZcegGCjjpk/C1j0EkjHlByfBWFKyA9rbyuKeQ/41x2ViPD
	 3XEzw2XJnOdG1WSB+Eqf7r0E6BhkuFTcf3fWU6kNSt9kckr/7j3DC6kKRqbW9qBVpQ
	 dmP66OcsYocy4FIMzzmx0H0yaSrXxornHyvkOPleaN2W/x3I2kvEdQTi5S0to1Z/h+
	 627VCwG9CGQmA==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 56DF63845CC
	for <usrp-users@lists.ettus.com>; Mon, 13 Mar 2023 11:13:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aF8lfEuv";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id d7so13392217qtr.12
        for <usrp-users@lists.ettus.com>; Mon, 13 Mar 2023 08:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678720419;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=98SZESQ7wmm4cYpf0n1mApGQIWpKotcbRFRSm2uZQws=;
        b=aF8lfEuv2az1uiEkrIznMyVJ2cElXIFI/mTffDo58RE2wk3sVfanHYMdSNHWP0C/MX
         iSByXA2eQhvJ8aFMHtq80efzaP676i4GHb4dA5QJD/yDMNL79ApFE8pSsFhT2oNXfV2p
         EM1viUOsNkq4DYLVQGGyk0a05ueqFajCJTvBU13hryMZXS0o8ciwzMKPyO8yD2LcjRd+
         jCoiy98XUrrYlitlQBBLOoBPDAShAFCWTM7+i+KVCDULd7WJsSPHA/K1gKNHz1vMe8/9
         WZaR7Frq2mPZUCz76pxa4GYTAc4vvM/i0YCVe5ryOg1SVgwwJCKn2EZMzZcPeoD7LeE9
         WdUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678720419;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=98SZESQ7wmm4cYpf0n1mApGQIWpKotcbRFRSm2uZQws=;
        b=QDjpinDxAuAA8ESNy6X+WYpYpMdaLxQlGUcgyO9eMFy7nym0iWw5cuPNqpuu1a4I4D
         vXwI9yz01lGAm0Lq3pJ3/pja5844KV7SFMTTMBo0RoxoNAtD8c54JAeC3IX9oRsVujnH
         /QqNUMNN48o9nK4PpWiOJdE3s3hpGTw+UxD3tZI4xyxUfNcAkFd+fwd/KtbJ4ufQNpDl
         f+WrMFuNq5ztUM/Xn5MYO6bb1OOTRTHPupCVaiPRLcO4B17i2VtGpCvROsusN2MoiZod
         4m0cZhx8SFF+OEN1bt+xlqUBhN259R1pFpiZ+p6TLvRuzpUV0PS4TC4Z0rG1gTWCGadx
         jtSg==
X-Gm-Message-State: AO0yUKWe4pXwzcsYkPNCd/s5tzzjA9ve+RgnDz6rRYTajkF/Q9vnMlF8
	auNKzGVIOcT5iFZMoRXTx9ENmg36Qvs=
X-Google-Smtp-Source: AK7set+0myRDQaSj9P8iW1wxHCR0hEH+lpck5GOr3OocBuSKsh+V0IEsMorUJeqqDgEqfTiD3yCTgQ==
X-Received: by 2002:ac8:5ad5:0:b0:3bf:cfe8:f8f5 with SMTP id d21-20020ac85ad5000000b003bfcfe8f8f5mr61711058qtd.41.1678720419552;
        Mon, 13 Mar 2023 08:13:39 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id b129-20020ae9eb87000000b007425ef4cbc2sm1336548qkg.100.2023.03.13.08.13.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 08:13:39 -0700 (PDT)
Message-ID: <68b42fe0-2f2f-7937-8a3b-3e76b0b4b64c@gmail.com>
Date: Mon, 13 Mar 2023 11:13:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CH0PR12MB53704F6625BA863EEFF0953782B99@CH0PR12MB5370.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CH0PR12MB53704F6625BA863EEFF0953782B99@CH0PR12MB5370.namprd12.prod.outlook.com>
Message-ID-Hash: VUPHW5QKYDDBHYQBKOO5I2C4GHQ2LBJ3
X-Message-ID-Hash: VUPHW5QKYDDBHYQBKOO5I2C4GHQ2LBJ3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX Channel Out of Range
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VUPHW5QKYDDBHYQBKOO5I2C4GHQ2LBJ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7267450475537606333=="

This is a multi-part message in MIME format.
--===============7267450475537606333==
Content-Type: multipart/alternative;
 boundary="------------L8O44IrYUd4yn1PUPUc4k2V5"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------L8O44IrYUd4yn1PUPUc4k2V5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/03/2023 10:51, Wolff, Marcus wrote:
> We are trying to run a test Python script generated from GNU Radio=20
> using B210s, but am facing the following error:
> /
> /
> /"TX channel 2 our of range for configured TX frontends"/
>
> If anyone can provide some insight into this error, it would be=20
> appreciated. Thank you!
>
> Best,
> Marcus
>
>
Can you share your .py file, or, even better, the .grc that produced=20
it?=C2=A0 If not, can you produce a small test-case that
 =C2=A0 shows the issue?

Are you sure you're dealing with a B210 (2 channels in each direction)=20
and not a B200 (1 channel in each direction)??


--------------L8O44IrYUd4yn1PUPUc4k2V5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/03/2023 10:51, Wolff, Marcus
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CH0PR12MB53704F6625BA863EEFF0953782B99@CH0PR12MB5370.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        We are trying to run a test Python script generated from GNU
        Radio using B210s, but am facing the following error:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <i><br>
        </i></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <i>"TX channel 2 our of range for configured TX frontends"</i></d=
iv>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);
        background-color: rgb(255, 255, 255);">
        If anyone can provide some insight into this error, it would be
        appreciated. Thank you!</div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);
        background-color: rgb(255, 255, 255);">
        <br>
      </div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);
        background-color: rgb(255, 255, 255);">
        Best,</div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);
        background-color: rgb(255, 255, 255);">
        Marcus<br>
      </div>
      <div class=3D"elementToProof">
        <div id=3D"Signature">
          <div>
            <div class=3D"WordSection1" style=3D"page: WordSection1;">
              <div>
                <div>
                  <div>
                    <p class=3D"MsoNormal" style=3D"margin: 0in; font-siz=
e:
                      11pt; font-family: &quot;Calibri&quot;,
                      sans-serif;">
                      <o:p>=C2=A0</o:p></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    Can you share your .py file, or, even better, the .grc that produced
    it?=C2=A0 If not, can you produce a small test-case that<br>
    =C2=A0 shows the issue?<br>
    <br>
    Are you sure you're dealing with a B210 (2 channels in each
    direction) and not a B200 (1 channel in each direction)??<br>
    <br>
    <br>
  </body>
</html>

--------------L8O44IrYUd4yn1PUPUc4k2V5--

--===============7267450475537606333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7267450475537606333==--
