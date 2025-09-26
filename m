Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F00BA2FF9
	for <lists+usrp-users@lfdr.de>; Fri, 26 Sep 2025 10:46:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27967386475
	for <lists+usrp-users@lfdr.de>; Fri, 26 Sep 2025 04:46:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758876387; bh=gG2F/dL+l+H8OIRxhEoNT0aNpCU8lT3jSU7s8GB3alg=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0PtaldhPK9kF+zIk6T/XxhiFnxBaEFsoZvPOcjxAONfUl49hyhX0PFeyCUhiyCrxS
	 iONnf1iUk7q3mfSnzT7hubh1zkWyZHMMumcWOTGlOdexrrii6gkHJ3gyfsVAluMoVS
	 Qd624RwapIHjigiyp8uo+U6mTh9ozGSpncrpOqdpwCIXqs2DWjyuIh/SFontpCm3WY
	 yTMAYgwu3QtLq+acv8VwjbBEbWbP9ydk9rcrfjYbB4nYFSiuVeNIVpOKEu5mr2DY/O
	 xYSo8GB6USnk5yWUhvyY218TzKz4yLMpL5En6MTgnUTju9HHACSrXWe7HTWFOUQsLw
	 CUdCyc1RK4arg==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 12D303854B5
	for <usrp-users@lists.ettus.com>; Fri, 26 Sep 2025 04:45:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="AdakgbpI";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b2e173b8364so314184466b.1
        for <usrp-users@lists.ettus.com>; Fri, 26 Sep 2025 01:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1758876344; x=1759481144; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EsHe81fDelBLtXg2nNQiBeV4fbX/VMkV+LCKKFvo7bU=;
        b=AdakgbpIY9XSEoHGX/yx/FWQD3rIcGJnpUr1JAzGbcUAjmOltQgQjuF8w+aTsXDyO0
         00zi/YfOH82ysw2ps4Xr4Nn/RntJ6geK4O2qfyIHIhXL4/5g4CH3qcqqLBq5Q3MiRwHe
         eWy/P1HNMynR96zW5DxV0/AzpmMHKbW0RMstpfWn6f27TsyMAshYFMaXMOtlfVr9hSRn
         O4s+HDRPuuzU8XjVRLPPjum/YvWBxg3ZT2q4J8r+kc4fvs+rkSn9TUlLUlzgPHmAgkl7
         TFeVLMUOmKz751hIgZL/LQ73dn9A4D8k4gC70FHtaSQ4YyFyN3ltscHFuMUSeEf7e03p
         t5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758876344; x=1759481144;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EsHe81fDelBLtXg2nNQiBeV4fbX/VMkV+LCKKFvo7bU=;
        b=h1Dck409sdH7eJihta31aSm915ba42PxZfZKR9EyPWbN++sZcD0j/nhKT69vE6zP9C
         pZ2PJ04OTH5k9QDX2Ti7U1C0nyFPmJK63rV10Mzpm7BA7MPywVJ8DwIdjf9FjlQK+bRN
         wCLu2FU8vMjoTnXUr+8pH7cAYYcNRVCdRnDf5ikK/R9h06DBOzSW4Yg0VVVRdaWZxluq
         bJk69p+A+RjogYi8TnrLy7sDTYFCI8cPGxcr74fvW2sBgXPm5nNhNiYb8WnY9exvPpgG
         aHe87TGb9uciJhiwuqrlH0skeryOBtsAgzrHb5GIOACoLtoG2uSJUWjmYk3KY1UQT5FG
         1R9Q==
X-Gm-Message-State: AOJu0YyhgQUOnqK5JRamrfkoTlUJBUQwKs+qasGAg/+mugcB5xPT8DmP
	B12pcFVs/7IkN+dakzhgWcJ8Ykij4/PNs4MkP4n6uqiRvXbzzaaWUetoeV+Cq1wo7638CTXJwga
	5y5PjNqqZ0heoO++r1IRNC3C/MP5SCSH/TEBq2wJLKt02ppsJyDRXqenW61h8
X-Gm-Gg: ASbGncvfvzlKe9G9gyubmwXk9l7yg0UtrtLc/yr2FBM2whDJ56PyepuCT3/lsssfTZo
	PuIEsgt4Ll0BhAW74qYxg4xgaQZjupSdpWAZWAmG8GlYnFUW15dZ6rfLfcO6fIDRGhScj9/wVmn
	mayOJ6eSGuBSIBAAg6MdOA/6qP6tP2I05bJTc/Sj+93cIpk1xwQSjVcqd5nsl/wliX6rOW3NuJc
	KHwOMY4J6PtkMHIckqSQ8/YhTwOOqxGmze0CU8=
X-Google-Smtp-Source: AGHT+IGrGeHdBOw5Wa5pIYBnHEozSycU+pVdPt9m+ehZMZUnFBY+XaxdDdl7H9XRcYFKIsigPO60jpEgMsGCfYbv01U=
X-Received: by 2002:a17:907:9305:b0:b10:9e5d:d173 with SMTP id
 a640c23a62f3a-b34be3ebc89mr709011266b.41.1758876343519; Fri, 26 Sep 2025
 01:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <2NEluc1tYIOusdJUrnT7I2xvRdbF4q5gyr6vn00sc@lists.ettus.com>
In-Reply-To: <2NEluc1tYIOusdJUrnT7I2xvRdbF4q5gyr6vn00sc@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 26 Sep 2025 10:45:32 +0200
X-Gm-Features: AS18NWAR48cZ7UmpuRvijQs5C1rgF3ZkUTBUYB4GucwJ5hvUfb6LI6r-ktbknQU
Message-ID: <CAFOi1A7MRh8V93FfFK9a1_5f5yGWvabGm4nPO081m-CCibB5eA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: T2P6FCMWFXXFPOCNGH6ECETYWCEMHNUE
X-Message-ID-Hash: T2P6FCMWFXXFPOCNGH6ECETYWCEMHNUE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Started RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T2P6FCMWFXXFPOCNGH6ECETYWCEMHNUE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6798992589558557079=="

--===============6798992589558557079==
Content-Type: multipart/alternative; boundary="000000000000a8daac063fb04f7f"

--000000000000a8daac063fb04f7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The device manual is probably the best place to start reading (
https://files.ettus.com/manual/page_usrp_x4xx.html). As for your example,
streaming 2 Gsps through GNU Radio (or any other software) is tricky. I
would expect your session to cough up a lot of errors/warnings about being
unable to keep up (like, UUUUUUUUU.... or OOOOOOOOO...).

The RF settings also don't match up. Your MCR is 2 Gsps, which will let the
converters run at 4 GHz (
https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for_the_US=
RP_X440#X440_Supported_Master_Clock_Rates_.28MCR.29).
So your first Nyquist zone is < 2 GHz. But both your center frequency and
sine wave frequency are at 1 GHz, so you've moved your signal out of that
zone.

I would suggest starting with much, much lower rates until you see the
signal that you expect (start with 125 Msps). You can scale up rates as you
go. If you're in the few-hundred-megasamples range, your computer should be
able to keep up.

Best of luck,

---M

On Fri, Sep 26, 2025 at 9:39=E2=80=AFAM Peter Gu via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I was able to set the MCR via device args in RFNoC Graph. I got it from a=
n
> example=E2=80=A6however i found nothing in the documentation
> <https://wiki.gnuradio.org/index.php?title=3DRFNoC_Graph_(Device)> about
> that. Am I looking into the wrong specs or is the idea to look into the c
> code?
>
>
> Moreover, with Ch0 bandwidth also set to 1.6GHz now, I still cannot detec=
t
> the cosine signal in loopback mode=E2=80=A6did i still miss something?
>
> Best,
>
> Peter
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a8daac063fb04f7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The device manual is probably the best place to start=
 reading (<a href=3D"https://files.ettus.com/manual/page_usrp_x4xx.html">ht=
tps://files.ettus.com/manual/page_usrp_x4xx.html</a>). As for your example,=
 streaming 2 Gsps through GNU Radio (or any other software) is tricky. I wo=
uld expect your session to cough up a lot of errors/warnings about being un=
able to keep up (like, UUUUUUUUU.... or OOOOOOOOO...).</div><div><br></div>=
<div>The RF settings=C2=A0also don&#39;t match up. Your MCR is 2 Gsps, whic=
h will let the converters run at 4 GHz (<a href=3D"https://kb.ettus.com/Abo=
ut_Sampling_Rates_and_Master_Clock_Rates_for_the_USRP_X440#X440_Supported_M=
aster_Clock_Rates_.28MCR.29">https://kb.ettus.com/About_Sampling_Rates_and_=
Master_Clock_Rates_for_the_USRP_X440#X440_Supported_Master_Clock_Rates_.28M=
CR.29</a>). So your first Nyquist zone is &lt; 2 GHz. But both your center =
frequency and sine wave frequency are at 1 GHz, so you&#39;ve moved your si=
gnal out of that zone.</div><div><br></div><div>I would suggest starting wi=
th much, much lower rates until you see the signal that you expect (start w=
ith 125 Msps). You can scale up rates as you go. If you&#39;re in the few-h=
undred-megasamples range, your computer should be able to keep up.</div><di=
v><br></div><div>Best of luck,</div><div><br></div><div>---M</div></div><br=
><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Sep 26, 2025 at 9:39=E2=80=AFAM Peter Gu via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><p>I was able to set the MCR via device args in RFNoC Graph. I got it fr=
om an example=E2=80=A6however i found nothing in the <a href=3D"https://wik=
i.gnuradio.org/index.php?title=3DRFNoC_Graph_(Device)" title=3D"documentati=
on" target=3D"_blank">documentation</a> about that. Am I looking into the w=
rong specs or is the idea to look into the c code? </p><p><br></p><p>Moreov=
er, with Ch0 bandwidth also set to 1.6GHz now, I still cannot detect the co=
sine signal in loopback mode=E2=80=A6did i still miss something?</p><p>Best=
,</p><p>Peter</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a8daac063fb04f7f--

--===============6798992589558557079==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6798992589558557079==--
