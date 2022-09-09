Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA3E5B4175
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 23:30:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7B29383AC6
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 17:30:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662759023; bh=cScWFZwfyaZ0Az6nfJjvXCIwSYFHg56owBPw5EyQYpU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AAuFFaxSn+jtUOh5qnuiTBrKK1pz63HWsxPzZZtbIxRIWIW/7e8oFdwn+ONYFEH8F
	 K23k19+QmzjicIw4CgxL/UIeuI0MltsGCSAd/7szgvWlpCyuNZmviqwWsjYKlZX/Ca
	 UiN0U799PgJCveVcvLzmQeZTDEuINH+hCTmCNiBOkSyzWPnE0H1ll/eblUfAvfttUi
	 BDvJzFfCmfiJt1dPcAxXvLvCdFAFJRCLtg/AhbTO/ZAAQqP03kMsqZgljuOnCYpk0O
	 MrARwAV4a1sP/vTMiAt0tn3c8ijIHh+y/6adDRaZ95V6QSdprcsGfj5exDuxNOVlCY
	 0SXYX2mx7na3g==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id CD7D7383FA8
	for <usrp-users@lists.ettus.com>; Fri,  9 Sep 2022 17:28:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IGSF5e+2";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id c11so2301640qtw.8
        for <usrp-users@lists.ettus.com>; Fri, 09 Sep 2022 14:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=KlvZm/dcW4E6063VmQWjM//iImZZO5gUW/0NiqUg+3Y=;
        b=IGSF5e+2VMuOlK0eO1cUF1y4QYxHGq7BAfXgfxH6EW7uSAxoEbIH+JxioQgA5t8d/q
         QH4l/EQcnFD/V7T1Ub/Tu5hdcIFziiA6UQWIgcSmodfELykYoF/eEDPJ+EATYnofjVB3
         9eaj7winSg5HZyfhTsK9TogNBCH1LDSVuCaGGG3lmH9Hlu1WM76qH6JFfahX6Uh0n3vu
         XobyNI+INgIr2RHWogpkHEmpJf3VNO6dFsX/0ABj+DQlrt7k9wfLQkmEuhN0xVPQz5u5
         NIECy8dW3ymwOzXiwAa2SrxBdx7YiKb6t2IOkfGa7C3mlX9ppIPHqBAH3jMbNxmWi0FV
         MJzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=KlvZm/dcW4E6063VmQWjM//iImZZO5gUW/0NiqUg+3Y=;
        b=EqFUqyBSNIOA1BkMFei223sxRMzQylJSoW86jjZClGFNx+T+4LelLRHQsemY/diTa1
         8/v/Q7qrBH2+Z2nlZNuvdcoSJl4RTsIuAEAbKSXMaPsZGcL6HMACYXUlQzxSXQ++rj0y
         aU1fbMaSY7GZpai6pYJj1fQCi77JNM7q5vch3z8elQj+TJX1PcpouZVPsUWmrPjtre51
         rvLuqOcwksQo0rPjHVa7xyQvmzGVlnSVFKJOhYVaDzdL6H0nd2OJOT7r5sO5BS+BtKiv
         gU2kjeWdBqsaMipJTTjWhhRTcE/r/30z8aMfpdXTQJkME7jz4YBz6RdM3GEJGfhSYBKN
         vflQ==
X-Gm-Message-State: ACgBeo1wJL0dGGO4Lpa5YWIry1vBAf9Z6g/3voisRlyJAulGfnGL3JBD
	b8XLkA0mKDuyDsvu04OMKMUzdPqfejc=
X-Google-Smtp-Source: AA6agR4GcB5zgtM+N1IkcKYYEy86Wi1E/FQS5edzjAw0K/hB2shiyugP5kh4IesW5IkvmdmLr62nTA==
X-Received: by 2002:ac8:5bc1:0:b0:343:7d47:c121 with SMTP id b1-20020ac85bc1000000b003437d47c121mr14758900qtb.237.1662758887123;
        Fri, 09 Sep 2022 14:28:07 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id m2-20020ac866c2000000b00339163a06fcsm1235509qtp.6.2022.09.09.14.28.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 14:28:06 -0700 (PDT)
Message-ID: <a6d77684-983a-a416-2c9e-46a7c333f5dc@gmail.com>
Date: Fri, 9 Sep 2022 17:28:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB3871623AB664F6C1063167E5AF439@MN2PR12MB3871.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB3871623AB664F6C1063167E5AF439@MN2PR12MB3871.namprd12.prod.outlook.com>
Message-ID-Hash: WHCIARETULFTKS265ZAES7QBVGBR3FVH
X-Message-ID-Hash: WHCIARETULFTKS265ZAES7QBVGBR3FVH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 sample rate change locking-up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHCIARETULFTKS265ZAES7QBVGBR3FVH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8616884645184931845=="

This is a multi-part message in MIME format.
--===============8616884645184931845==
Content-Type: multipart/alternative;
 boundary="------------F70Q0R0HuUlxsNzwnH9tkLyV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F70Q0R0HuUlxsNzwnH9tkLyV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-09 15:09, Jason Matusiak wrote:
> Are there any restrictions, or known issues, with changing the sample=20
> rate on an N320 while it is running?=C2=A0 While debugging an issue in =
our=20
> application, we noticed that we can toggle between two sample rates=20
> and get the n320 to lock up.=C2=A0 What I mean is that the N320 is stil=
l=20
> responsive to commands, and seems to continuously accept the new=20
> sample rate changes, but nothing is streaming out (just the ~62B UDP=20
> packets).=C2=A0 At that point the only thing I can do is to close down =
the=20
> software for the N320 and start it back up again (a reboot isn't=20
> needed).=C2=A0 If I only toggle once every 5s, I can get it to occur, s=
o I=20
> don't think it is a matter of issuing the commands to rapidly.=C2=A0 It=
=20
> also seems random in that one time it can occur on the 10^th=20
> =C2=A0transition, and then the 148^th =C2=A0transition the next time.
>
> The really odd thing to me is that is if I do something like toggle=20
> between 3.125Msps and 100Msps, the lock-up ALWAYS (like 100/100)=20
> occurs when the command is issued to transition from the lower sample=20
> rate to the higher one. It also seems to be more prevalent when doing=20
> a larger jump (like the example above) vs a smaller just (like 3.125=20
> to 6.5), but I might be fooling myself on that one.
>
> These are N320 with master clocks of 200MHz.=C2=A0 UHD 4.1.0.5 and XG i=
mages.
>
>
That is absolutely NOT design-intent as far as I know.=C2=A0 I know that =
some=20
models have a problem changing master-clock dynamically,
 =C2=A0 but this should not be causing a master-clock change.




--------------F70Q0R0HuUlxsNzwnH9tkLyV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-09 15:09, Jason Matusiak
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB3871623AB664F6C1063167E5AF439@MN2PR12MB3871.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Are there any restrictions, or known issues, with changing the
        sample rate on an N320 while it is running?=C2=A0 While debugging=
 an
        issue in our application, we noticed that we can toggle between
        two sample rates and get the n320 to lock up.=C2=A0 What I mean i=
s
        that the N320 is still responsive to commands, and seems to
        continuously accept the new sample rate changes, but nothing is
        streaming out (just the ~62B UDP packets).=C2=A0 At that point th=
e
        only thing I can do is to close down the software for the N320
        and start it back up again (a reboot isn't needed).=C2=A0 If I on=
ly
        toggle once every 5s, I can get it to occur, so I don't think it
        is a matter of issuing the commands to rapidly.=C2=A0 It also see=
ms
        random in that one time it can occur on the 10<span><sup>th</sup>=
=C2=A0transition,
          and then the 148<span><sup>th</sup>=C2=A0transition the next ti=
me.</span></span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        The really odd thing to me is that is if I do something like
        toggle between 3.125Msps and 100Msps, the lock-up ALWAYS (like
        100/100) occurs when the command is issued to transition from
        the lower sample rate to the higher one. It also seems to be
        more prevalent when doing a larger jump (like the example above)
        vs a smaller just (like 3.125 to 6.5), but I might be fooling
        myself on that one.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
        These are N320 with master clocks of 200MHz.=C2=A0 UHD 4.1.0.5 an=
d XG
        images.=C2=A0</div>
      <br>
      <br>
    </blockquote>
    That is absolutely NOT design-intent as far as I know.=C2=A0 I know t=
hat
    some models have a problem changing master-clock dynamically,<br>
    =C2=A0 but this should not be causing a master-clock change.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------F70Q0R0HuUlxsNzwnH9tkLyV--

--===============8616884645184931845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8616884645184931845==--
