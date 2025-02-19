Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D556CA3AD0B
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 01:26:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2599C3864DE
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 19:26:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739924788; bh=kdT2kR8rhBYbGpxMG9E2wMJdTZg1SWknttVkuRAHOrI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=rp2fmMIx84lLTQA5wfy/hA/Q/tcEEEQyzKTeVhQB35N4WU8HG1E2bEDFRlXapBWh3
	 QCG11YITZBiZApTQG58YUgrpnagu177XoYy0ZUg8NrSTDPOY1UuLo0iE3d5LOigipU
	 ilWZ4Smd04g5znBZSU3d/6MeMOYpoqUA8RcF5Fc/AKtm7xt7BLqnhvWHR4mcSWf7CZ
	 zQGom6Pw17W6ix44hzEJgSyTBBAgAMASHwcMyUhWVQAiwyQ0geTpF7ySfkBLZ3pyME
	 a3RET8eyiTu+puVbTUuZdgikjJNCQLb6W0hWtBC9G5Ws51rGUJGhJsszyxVgZTdHBH
	 oFoeakm/59rdw==
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by mm2.emwd.com (Postfix) with ESMTPS id D0ADB3864D5
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 19:26:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=vectalabs-com.20230601.gappssmtp.com header.i=@vectalabs-com.20230601.gappssmtp.com header.b="1k93BLvp";
	dkim-atps=neutral
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30a2dfcfd83so27375951fa.1
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 16:26:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20230601.gappssmtp.com; s=20230601; t=1739924781; x=1740529581; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Zg+pkrH5Gzhnc4g55hyhUnrdVx/0PM1JHx1RLoaXQ6g=;
        b=1k93BLvpkL8O9jJJVE1+cZKycFv9w6ZvSCNpot9Fc85xBy4gogGUROdmIPnHSEzkx8
         A+t5DTfECUlvesO5lzRRxW0XJvLCZAO9PopK8FDS3mRvBf0PXm3Y6GC0yj49POvXXCz8
         Egf7SJjAs93a2zj1guevFVh9rodix4Gku7fiUyX0fN8xK6kC4l36yfOEkp4THqysVU9M
         0O7SrwnXnkhXkBriVM08AZ7cM2EN89/VFKv1NyKXr/t7vUJKdMZetItgeZWMs9cG2f3i
         L0IpQ6St8xMe7UP7mdEVVDvbZJcxn+IPw322BSdwxCcg8oR8JV46+HOLd52W8OoGoa4u
         GTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739924781; x=1740529581;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zg+pkrH5Gzhnc4g55hyhUnrdVx/0PM1JHx1RLoaXQ6g=;
        b=swBSKDhn3U1/z6of9r7l1LDnZV5Rpc9P6n8kwr5eABKya8cBCg9/nJww6+tzGlBel5
         +agiKboh2cUt0/MgIO2lwmuWCCCaK9zCZs4lYqHbhkD6W6GLAMBopwntfX/5MbVWJ/0+
         AcLw+JxNzbXXuBdEOF5gyoliVGeJYA04cNS0mIvqbf++tdWpqbEmC2dMflZBcLmkzQDX
         A1QPQStSgsuxPxRpgpp+UlfKIGPAwgHBzlA96YqL4Rn+ezFJlm3Da9hmHWx5BwiEO9jt
         9+ZlIs8bi1GRM7X8aHzKRhz1m98u9eJV8WXZPmAevMJaoET9ipvchvajJ/eIBrJAmbd/
         4T4A==
X-Gm-Message-State: AOJu0YxLt/BMcvXa/z2vsTjdq0DL/XQAoHXo2E/S2xULmPythZIl8E96
	WvSlv8cZbIInAnfJSk3g5QeBQFdKIStpC4vTYF016oCnmm8ca8NsmaHqFFtX2gdJnfwhG7K+jVv
	uC8pjpshC5on88afuhwgea60wPO7nOB849w7A7A==
X-Gm-Gg: ASbGncvQUN1RHj9/gJ0YEc2uc92eRM8lTDTDmPX4cHdCv7EjLwSLKYalcjstuask/zq
	U8XE7ONl4+5lmXH6usmP3irdV9kjofjzhiGZR+K8V/yaRLGukH9luw0aJIqPJBqquBtdrvHf9
X-Google-Smtp-Source: AGHT+IGQ8aHVdvX5B87S+Wdamxg9bqua5I7vvOjZx/AS0wTl1HMcLAnKgf10WIEnFPuWy+r6vCefhqZjJ2lKQsNS/qA=
X-Received: by 2002:a2e:95d7:0:b0:309:1b26:aecd with SMTP id
 38308e7fff4ca-30927a4aa69mr46219451fa.10.1739924781246; Tue, 18 Feb 2025
 16:26:21 -0800 (PST)
MIME-Version: 1.0
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
 <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com> <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
 <7fc34db8-89e4-4e72-beda-cbdd872e3f19@gmail.com> <CALNMZ8UYp42D=Tdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gmail.com>
 <d3a8592f-30fb-45b3-870d-95b6d1b64f2e@gmail.com>
In-Reply-To: <d3a8592f-30fb-45b3-870d-95b6d1b64f2e@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 19 Feb 2025 10:26:09 +1000
X-Gm-Features: AWEUYZmnd6LHC0nxIAGwCSU0KnsAyBDxdQ-VgKSBglKJ42fLfAyHeEKifMr6gDc
Message-ID: <CALNMZ8XRt+4iLNhb7fV5DiLrFz+pqNc33F=A4JGJEDykSq4QvQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: FXPNP2YF4IJUKEGP7GUB5AZYBJOPWUKQ
X-Message-ID-Hash: FXPNP2YF4IJUKEGP7GUB5AZYBJOPWUKQ
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FXPNP2YF4IJUKEGP7GUB5AZYBJOPWUKQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3982449393191598848=="

--===============3982449393191598848==
Content-Type: multipart/alternative; boundary="00000000000085c66e062e73ce95"

--00000000000085c66e062e73ce95
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I thought your name sounded familiar! =F0=9F=99=82

Overall the X310+UBX-160 appears to be a good fit to our requirements.  My
original question was really about ensuring that our host PC & network
interface have sufficient bandwidth to ingest the IQ data from a pair of
UBX-160s.  It would be nice (although not essential) if we could run one
channel at 100 Msps, and the other at 200 Msps, to reduce the bandwidth
requirements on the backend hardware.



On Wed, 19 Feb 2025 at 10:17, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 18/02/2025 19:13, Brendan Horsfield wrote:
>
> Thanks for the suggestion about the noise source -- that's what I would
> normally do.  Unfortunately I haven't actually purchased the hardware yet
> -- I was hoping to clarify this issue before raising a purchase order.
>
> Perhaps I should follow this up with one of the application engineers at
> NI?  They might have access to an X310+UBX-160 system that they can use t=
o
> answer my question directly.
>
> Thanks again for your help in this matter.
>
> Regards,
> Brendan.
>
> I actually do work for NI on USRP devices (on a very very very part-time
> basis).  My X310 is currently elsewhere, and not populated
>   with a UBX-160.
>
>
>
>
> On Wed, 19 Feb 2025 at 09:55, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 18/02/2025 18:45, Brendan Horsfield wrote:
>>
>> Yes, I assumed that was the case.  However, it is not clear from the X30=
0
>> documentation how sharp those filters are.  Can you tell me how wide the
>> transition band is at the lower sample rates?
>>
>> To give you some context, I would like to use an X300 (or X310) with a
>> UBX-160 daughterboard to digitise the entire 2.4 GHz Wi-Fi band, which i=
s
>> 83.5 MHz wide.  Ideally I would like to use a sample rate of 100 Msps to
>> minimise the data rate between the USRP and the host PC.  However, befor=
e I
>> do this I need to be certain that the usable bandwidth at this sample ra=
te
>> will be greater than 83.5 MHz.  Is this information documented somewhere=
?
>>
>>
>> It somewhat depends on the decimation.  If the decimation has a factor o=
f
>> two or 4, the edge roll-off is fairly sharp.  Otherwise,
>>   there's a half-band filter in-place that causes a less-desirable
>> pass-band.
>>
>> But I don't know, precisely, what the transition band is in the "nicer"
>> filter shapes.
>>
>>
>> If you have an X310+UBX-160, you can always just use a noise source, and
>> measure it yourself to see if it's appropriate for
>>   your application.
>>
>>
>>
>>
>> On Tue, 18 Feb 2025 at 23:11, Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> There will always be some edge roll off. Decimation includes filtering
>>> and those filters cannot be infinitely steep.
>>> Sent from my iPhone
>>>
>>> > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield <
>>> brendan.horsfield@vectalabs.com> wrote:
>>> >
>>> > =EF=BB=BF
>>> > Hi All,
>>> >
>>> > I have a question about the usable bandwidth of the X300 USRP /
>>> UBX-160 daughterboard combo at sampling rates below 200 Msps:
>>> >
>>> > As I understand it, the UBX-160 receiver has an analog (hardware)
>>> filter before the ADC that limits the usable bandwidth to 160 MHz, whil=
e
>>> the ADC runs at 200 Msps.  Therefore the usable bandwidth is around 80%=
 of
>>> the sample rate.
>>> >
>>> > My question is:  What is the usable bandwidth at lower sampling
>>> rates?  Does the 80% factor always apply?
>>> >
>>> > For example, if I set the decimation factor to 4, so that my sampling
>>> rate is 50 Msps, does this mean that the usable bandwidth will be 40 MH=
z?
>>> >
>>> > Thanks & Regards,
>>> > Brendan.
>>> >
>>> > _______________________________________________
>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>>
>

--00000000000085c66e062e73ce95
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I thought your name sounded familiar!=C2=A0=F0=9F=99=82<di=
v><br></div><div>Overall the X310+UBX-160 appears to be a good fit to our r=
equirements.=C2=A0 My original question was really about ensuring that our =
host PC &amp; network interface have sufficient bandwidth to ingest the IQ =
data from a pair of UBX-160s.=C2=A0 It would be nice (although not essentia=
l) if we could run one channel at 100 Msps, and the other at 200 Msps, to r=
educe the bandwidth requirements on the backend hardware.</div><div><br></d=
iv><div>=C2=A0=C2=A0</div></div><br><div class=3D"gmail_quote gmail_quote_c=
ontainer"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 10:1=
7, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 18/02/2025 19:13, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Thanks for the suggestion about the noise source --
        that&#39;s what I would normally=C2=A0do.=C2=A0 Unfortunately I hav=
en&#39;t
        actually purchased the hardware yet -- I was hoping to clarify
        this issue before raising a purchase order.
        <div><br>
        </div>
        <div>Perhaps I should follow this up with one of the application
          engineers at NI?=C2=A0 They might have access to an X310+UBX-160
          system that they can use to answer my question directly.</div>
        <div><br>
        </div>
        <div>Thanks again for your help in this matter.</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Brendan.</div>
      </div>
    </blockquote>
    I actually do work for NI on USRP devices (on a very very very
    part-time basis).=C2=A0 My X310 is currently elsewhere, and not populat=
ed<br>
    =C2=A0 with a UBX-160.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>=C2=A0 =C2=A0</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 09:55,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 18/02/2025 18:45, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Yes, I assumed that was the case.=C2=A0 Howe=
ver,
                it is not clear from the X300 documentation how sharp
                those filters are.=C2=A0 Can you tell me how wide the
                transition band is at the lower sample rates?
                <div><br>
                </div>
                <div>To give you some context, I would like to use an
                  X300 (or X310) with a UBX-160 daughterboard to
                  digitise the entire 2.4 GHz Wi-Fi band, which is 83.5
                  MHz wide.=C2=A0 Ideally I would like to use a sample rate
                  of 100 Msps to minimise the data rate between the USRP
                  and the host PC.=C2=A0 However, before I do this I need t=
o
                  be certain that the usable bandwidth at this sample
                  rate will be greater than 83.5 MHz.=C2=A0 Is this
                  information documented somewhere?=C2=A0=C2=A0</div>
                <div><br>
                </div>
                <div><br>
                </div>
              </div>
            </blockquote>
            It somewhat depends on the decimation.=C2=A0 If the decimation
            has a factor of two or 4, the edge roll-off is fairly
            sharp.=C2=A0 Otherwise,<br>
            =C2=A0 there&#39;s a half-band filter in-place that causes a
            less-desirable pass-band.<br>
            <br>
            But I don&#39;t know, precisely, what the transition band is in
            the &quot;nicer&quot; filter shapes.<br>
            <br>
            <br>
            If you have an X310+UBX-160, you can always just use a noise
            source, and measure it yourself to see if it&#39;s appropriate
            for<br>
            =C2=A0 your application.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>=C2=A0</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 18 Feb 2025 a=
t
                  23:11, Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun=
@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">There
                  will always be some edge roll off. Decimation includes
                  filtering and those filters cannot be infinitely
                  steep. <br>
                  Sent from my iPhone<br>
                  <br>
                  &gt; On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfie=
ld
                  &lt;<a href=3D"mailto:brendan.horsfield@vectalabs.com" ta=
rget=3D"_blank">brendan.horsfield@vectalabs.com</a>&gt;
                  wrote:<br>
                  &gt; <br>
                  &gt; =EF=BB=BF<br>
                  &gt; Hi All,<br>
                  &gt; <br>
                  &gt; I have a question about the usable bandwidth of
                  the X300 USRP / UBX-160 daughterboard combo at
                  sampling rates below 200 Msps:<br>
                  &gt; <br>
                  &gt; As I understand it, the UBX-160 receiver has an
                  analog (hardware) filter before the ADC that limits
                  the usable bandwidth to 160 MHz, while the ADC runs at
                  200 Msps.=C2=A0 Therefore the usable bandwidth is around
                  80% of the sample rate.<br>
                  &gt; <br>
                  &gt; My question is:=C2=A0 What is the usable bandwidth a=
t
                  lower sampling rates?=C2=A0 Does the 80% factor always
                  apply?=C2=A0 <br>
                  &gt; <br>
                  &gt; For example, if I set the decimation factor to 4,
                  so that my sampling rate is 50 Msps, does this mean
                  that the usable bandwidth will be 40 MHz?<br>
                  &gt; <br>
                  &gt; Thanks &amp; Regards,<br>
                  &gt; Brendan.<br>
                  &gt; <br>
                  &gt; _______________________________________________<br>
                  &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  &gt; To unsubscribe send an email to <a href=3D"mailto:us=
rp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.et=
tus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000085c66e062e73ce95--

--===============3982449393191598848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3982449393191598848==--
