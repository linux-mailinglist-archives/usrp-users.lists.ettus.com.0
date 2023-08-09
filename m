Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5B77761AF
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 15:52:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DBDBA384AA1
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 09:52:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691589138; bh=TcVzVzA7Nz/FH3XD7WoTGdhc8GlqmZPOj1acnSomF0U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=sciVXRtmKFayTUXr7ZlL6XtE6M2q6ZamSVBtg7Chl2l4Ik8crxFr+s2uNbYtFP1oI
	 Vi8Y2DMfAyq6AlG5+dRbTbw/Mz2U9FWsK/tvqI6MhieTQbPhWqEXftimqY5BcI/tCS
	 tBd2Z8JEtUeB4d3S0rdN5UQIOncmdoKddGVntVglO5OK+/NZz/xV5p9DjSvbiwUDz5
	 +bk1JoP08Nxohs1lNF90yA6Z8fVaKPDqhRP9RcKv5owrU2TIsOAxB6LhH2E0ikLt4y
	 bmoLf5HUlMf1sZyqpxz1Bwyyb/PuuYMkAoCHi7xpRpnKAaZPT7HN9X+Bm321maXqcZ
	 L4wsZrT0hMiMA==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B15F380BF7
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 09:51:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L6cPAsVi";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-76cdf055c64so556509085a.3
        for <usrp-users@lists.ettus.com>; Wed, 09 Aug 2023 06:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691589104; x=1692193904;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QCKRDSAgOwePxpdyYglBG3VFYjXYEwFJb15ZNxrSAsg=;
        b=L6cPAsViDJ0NJId0GBAiGrcPKXmTlGhYzWMOrq/HvCHMXY2Lu+kgp/r2yOhj5S04i8
         bROpquB9diUC1E6hEnzgHTA4XCV/sDLWZl8Ubj5W4dnzluvzNtbzoXgJ23wWPdDfIkwc
         M9SK8VN2+/N4sf3A5eCvbf1j91CdGf4LOTymr6vuZ+JSQIqNWLWXQsBxn0S9q3sVvZHv
         aH8JYI6pXmRl1tu13FYIaxGbriJG9XVUUgDv46N0W90DWHBmcETp09IhnaENF9KDkDy0
         W0QApHj2e6l6pYHKpOhntVCyVsJRReM+qCi8IwE/YSlhqR/dMw7KCRU/2bcoEAdQkLAl
         x6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691589104; x=1692193904;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QCKRDSAgOwePxpdyYglBG3VFYjXYEwFJb15ZNxrSAsg=;
        b=kCPZ5Ro5bmY2uB3PD2jnOM110LOFQDgKtGQ417fC3T6LBdpp2Tpb8smPGgptHuO7Qt
         QF9jzXqCsWJOwmfWumtTX0KgpEjTfMZBmdoypu9ihh4oFvvkPZZ29OxO7ydpR/P279Lt
         5b+lzmXCjerE9Hqn09nrQWU2mkczeiTtAmn2jWelcyt7ClA8j4XO9Qcwed/XJvCz7sFI
         AGrwkjgGWdEkzFGMriC1pNis0T50zUBPH4xsmpy4ykYUaIOjrUYIP9WsV4183SbNMOwH
         PIwNtYIFig5cahUj9KDqC71HCmwG0+wYZTVJRxpkwYGlEfOF4aBdQoi/XdiTWsZLMum4
         UAZQ==
X-Gm-Message-State: AOJu0YwOLBHgwHRUnPItAIte2KPARUNMiOzEql+o+ezL1A5t7H2hWYTZ
	3aaT2AetlBadKaPTt1h9bgE=
X-Google-Smtp-Source: AGHT+IEzc6dOew+pvRaXhifUuJPa5OwEHaW1BRE9kLR8Q2hksd3mhmBL9z4FtMTFac5/GWOJ5aHpXQ==
X-Received: by 2002:a05:620a:45ac:b0:76c:b4a0:e548 with SMTP id bp44-20020a05620a45ac00b0076cb4a0e548mr3783898qkb.53.1691589103915;
        Wed, 09 Aug 2023 06:51:43 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id u18-20020a05620a121200b00767d6ec578csm4013156qkj.20.2023.08.09.06.51.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Aug 2023 06:51:43 -0700 (PDT)
Message-ID: <dad4a3e4-5816-d5bb-19f3-d5993198d936@gmail.com>
Date: Wed, 9 Aug 2023 09:51:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <JY69MVrXA1ftfNlnyzeN8KI5JuYFOwHyCm5H1oY83cU@lists.ettus.com>
 <33990667-b547-dc4b-8e98-649b560df3df@gmail.com>
 <2081896548.419499.1691397648533@mail.yahoo.com>
 <100d04b2-9cae-4fe6-e024-b68a99da766f@gmail.com>
 <612213778.469873.1691415701949@mail.yahoo.com>
 <3ea0a44a-8942-c795-764e-2e967ba1ecb4@gmail.com>
 <1345420608.1045087.1691573186750@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1345420608.1045087.1691573186750@mail.yahoo.com>
Message-ID-Hash: VBKY36QQFICXZPUTYIOWZ5H4MQQUWDAF
X-Message-ID-Hash: VBKY36QQFICXZPUTYIOWZ5H4MQQUWDAF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VBKY36QQFICXZPUTYIOWZ5H4MQQUWDAF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4773821348289166514=="

This is a multi-part message in MIME format.
--===============4773821348289166514==
Content-Type: multipart/alternative;
 boundary="------------TWvLKes7aNN2PY4N11YLTgEV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------TWvLKes7aNN2PY4N11YLTgEV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/08/2023 05:26, zhou wrote:
> Thanks Marcus.
> I find that it is easier to choose target RF at which DSP freq is=20
> zero, then avoid DC in data allocation in baseband.
>
> Anyway, what do "lowest offset" and "corrected " mean in the=20
> calibration file? some example lines as below. I am uinsg step size 1MH=
z.
> TX DC: 1020.000000 MHz: lowest offset -92.824059 dB, corrected=20
> 35.168568 dB
> TX DC: 1021.001221 MHz: lowest offset -90.716408 dB, corrected=20
> 32.376762 dB
> TX DC: 1022.002442 MHz: lowest offset -91.902306 dB, corrected=20
> 34.561279 dB
>
> Kind regards,
> Hongwei
>
I don't know.=C2=A0 One could look at the code to get an idea.

>
>
> On Monday, 7 August 2023 at 14:46:35 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 07/08/2023 09:41, zhou via USRP-users wrote:
> Thanks for your quick response, Marcus.
>
> On the 2nd question, I mean, when LO is different from the target RF=20
> freq, DSP will make up the difference. LO leak will become a spurious=20
> signal at DSP freq. Can this LO leak be compensated in USRP? if yes, ho=
w?
>
> If you move the LO leakage out of the passband of your application=20
> sample rate, it won't be bothersome.
>
>
>
>> Thanks.
>>
>>
>> On Monday, 7 August 2023 at 14:11:08 BST, Marcus D. Leech=20
>> <patchvonbraun@gmail.com> <mailto:patchvonbraun@gmail.com> wrote:
>>
>> On 07/08/2023 04:40, zhou via USRP-users wrote:
>> Hi,
>>
>> I have a question regarding USRP calibration. I am using X310 and UHD=20
>> 4.4.
>> To save calibration time, the step size is set to be 5MHz and the=20
>> freq range is [600MHz, 6GHz].
>> My questions are:
>> 1. will the compensation be made at these discrete frequencies only,=20
>> or interpolation will be applied to frequencies which are between the=20
>> steps?
>> Interpolation is applied.
>>
>>> 2. how to compensate DC offset in case there is DSP freq?
>> The DC offset compensation is applied based on the *analog* frequency=20
>> setting of the RF PLL.=C2=A0 The DSP component
>> =C2=A0 is "perfect" from a offset and balance perspective.
>>
>>
>>
>>>
>>> Thanks,
>>> Hongwei
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-us=
ers@lists.ettus.com>
>>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mai=
lto:usrp-users-leave@lists.ettus.com>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com=20
>> <mailto:usrp-users@lists.ettus.com>
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
>> <mailto:usrp-users-leave@lists.ettus.com>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-use=
rs@lists.ettus.com>
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mail=
to:usrp-users-leave@lists.ettus.com>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------TWvLKes7aNN2PY4N11YLTgEV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/08/2023 05:26, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1345420608.1045087.1691573186750@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp364c7bb5yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Thanks Marcus.</div>
        <div dir=3D"ltr" data-setdir=3D"false">I find that it is easier t=
o
          choose target RF at which DSP freq is zero, then avoid DC in
          data allocation in baseband.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Anyway, what do "<span><sp=
an
              style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue,
              Helvetica, Arial, sans-serif;">lowest offset</span></span>"
          and "<span><span style=3D"color: rgb(0, 0, 0); font-family:
              Helvetica Neue, Helvetica, Arial, sans-serif;">corrected "
              mean in the calibration file? some example lines as below.
              I am uinsg step size 1MHz.</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div>TX DC: 1020.000000 MHz: lowest offset -92.824059 dB,
              corrected 35.168568 dB</div>
            <div>TX DC: 1021.001221 MHz: lowest offset -90.716408 dB,
              corrected 32.376762 dB</div>
            <div>TX DC: 1022.002442 MHz: lowest offset -91.902306 dB,
              corrected 34.561279 dB</div>
            <div><br>
            </div>
          </div>
          Kind regards,</div>
        <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
    </blockquote>
    I don't know.=C2=A0 One could look at the code to get an idea.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1345420608.1045087.1691573186750@mail.yahoo.com">
      <div class=3D"ydp364c7bb5yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp6c76d6a5yahoo_quoted_1606445450"
        class=3D"ydp6c76d6a5yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Monday, 7 August 2023 at 14:46:35 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp6c76d6a5yiv9951984819">
              <div>
                <div class=3D"ydp6c76d6a5yiv9951984819moz-cite-prefix">On
                  07/08/2023 09:41, zhou via USRP-users wrote:<br
                    clear=3D"none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div style=3D"font-family:Helvetica Neue, Helvetica,
                  Arial, sans-serif;font-size:13px;"
                  class=3D"ydp6c76d6a5yiv9951984819ydp66d139c6yahoo-style=
-wrap">
                  <div dir=3D"ltr">Thanks for your quick response, Marcus=
.</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">On the 2nd question, I mean, when LO i=
s
                    different from the target RF freq, DSP will make up
                    the difference. LO leak will become a=C2=A0<span><spa=
n
                        style=3D"font-size:11.0pt;font-family:Calibri,
                        sans-serif;">spurious signal at DSP freq. Can
                        this LO leak be compensated in USRP? if yes,
                        how?=C2=A0</span></span></div>
                  <div dir=3D"ltr"><span><span
                        style=3D"font-size:11.0pt;font-family:Calibri,
                        sans-serif;"><br clear=3D"none">
                      </span></span></div>
                </div>
                If you move the LO leakage out of the passband of your
                application sample rate, it won't be bothersome.
                <div id=3D"ydp6c76d6a5yiv9951984819yqtfd80726"
                  class=3D"ydp6c76d6a5yiv9951984819yqt0494357912"><br
                    clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <div style=3D"font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;"
                      class=3D"ydp6c76d6a5yiv9951984819ydp66d139c6yahoo-s=
tyle-wrap">
                      <div dir=3D"ltr"><span><span
                            style=3D"font-size:11.0pt;font-family:Calibri=
,
                            sans-serif;">Thanks.</span></span></div>
                      <div dir=3D"ltr"><span><span
                            style=3D"font-size:11.0pt;font-family:Calibri=
,
                            sans-serif;"><br clear=3D"none">
                          </span></span></div>
                      <div dir=3D"ltr"><span><span
                            style=3D"font-size:11.0pt;font-family:Calibri=
,
                            sans-serif;">=C2=A0</span></span></div>
                      <div><br clear=3D"none">
                      </div>
                    </div>
                    <div
                      id=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyahoo_quot=
ed_2142999335"
class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyahoo_quoted">
                      <div style=3D"font-family:'Helvetica Neue',
                        Helvetica, Arial,
                        sans-serif;font-size:13px;color:#26282a;">
                        <div> On Monday, 7 August 2023 at 14:11:08 BST,
                          Marcus D. Leech <a shape=3D"rect"
                            href=3D"mailto:patchvonbraun@gmail.com"
                            class=3D"ydp6c76d6a5yiv9951984819moz-txt-link=
-rfc2396E"
                            rel=3D"nofollow" target=3D"_blank"
                            moz-do-not-send=3D"true">&lt;patchvonbraun@gm=
ail.com&gt;</a>
                          wrote: </div>
                        <div><br clear=3D"none">
                        </div>
                        <div>
                          <div
                            id=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1=
566047874">
                            <div>
                              <div
                                class=3D"ydp6c76d6a5yiv9951984819ydpdb288=
40fyiv1566047874moz-cite-prefix">On
                                07/08/2023 04:40, zhou via USRP-users
                                wrote:<br clear=3D"none">
                              </div>
                              <blockquote type=3D"cite"> </blockquote>
                            </div>
                            <div>
                              <div style=3D"font-family:Helvetica Neue,
                                Helvetica, Arial,
                                sans-serif;font-size:13px;"
class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047874ydpf6d16e8dyahoo=
-style-wrap">
                                <div dir=3D"ltr">Hi,</div>
                                <div dir=3D"ltr"><br clear=3D"none">
                                </div>
                                <div dir=3D"ltr">I have a question
                                  regarding USRP calibration. I am using
                                  X310 and UHD 4.4.</div>
                                <div dir=3D"ltr">To save calibration time=
,
                                  the step size is set to be 5MHz and
                                  the freq range is [600MHz, 6GHz].</div>
                                <div dir=3D"ltr">My questions are:</div>
                                <div dir=3D"ltr">1. will the compensation
                                  be made at these discrete frequencies
                                  only, or interpolation will be applied
                                  to frequencies which are between the
                                  steps?</div>
                              </div>
                              Interpolation is applied.<br clear=3D"none"=
>
                              <br clear=3D"none">
                              <blockquote type=3D"cite">
                                <div style=3D"font-family:Helvetica Neue,
                                  Helvetica, Arial,
                                  sans-serif;font-size:13px;"
class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047874ydpf6d16e8dyahoo=
-style-wrap">
                                  <div dir=3D"ltr">2. how to compensate D=
C
                                    offset in case there is DSP freq?</di=
v>
                                </div>
                              </blockquote>
                              The DC offset compensation is applied
                              based on the *analog* frequency setting of
                              the RF PLL.=C2=A0 The DSP component<br
                                clear=3D"none">
                              =C2=A0 is "perfect" from a offset and balan=
ce
                              perspective.
                              <div
                                id=3D"ydp6c76d6a5yiv9951984819ydpdb28840f=
yiv1566047874yqtfd26387"
class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047874yqt4666739767"><=
br
                                  clear=3D"none">
                                <br clear=3D"none">
                                <br clear=3D"none">
                                <blockquote type=3D"cite">
                                  <div style=3D"font-family:Helvetica
                                    Neue, Helvetica, Arial,
                                    sans-serif;font-size:13px;"
class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047874ydpf6d16e8dyahoo=
-style-wrap">
                                    <div dir=3D"ltr"><br clear=3D"none">
                                    </div>
                                    <div dir=3D"ltr">Thanks,</div>
                                    <div dir=3D"ltr">Hongwei</div>
                                    <div dir=3D"ltr"><br clear=3D"none">
                                    </div>
                                    <div dir=3D"ltr"><br clear=3D"none">
                                    </div>
                                  </div>
                                  <br clear=3D"none">
                                  <fieldset
class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047874moz-mime-attachm=
ent-header"></fieldset>
                                  <pre class=3D"ydp6c76d6a5yiv9951984819y=
dpdb28840fyiv1566047874moz-quote-pre">___________________________________=
____________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@li=
sts.ettus.com" class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047874m=
oz-txt-link-abbreviated ydp6c76d6a5yiv9951984819moz-txt-link-freetext moz=
-txt-link-freetext" rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D=
"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv=
1566047874moz-txt-link-abbreviated ydp6c76d6a5yiv9951984819moz-txt-link-f=
reetext moz-txt-link-freetext" rel=3D"nofollow" target=3D"_blank" moz-do-=
not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
                                </blockquote>
                                <br clear=3D"none">
                              </div>
                            </div>
                          </div>
                          <div
                            id=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyqtf=
d44997"
class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyqt4666739767">______________=
_________________________________<br
                              clear=3D"none">
                            USRP-users mailing list -- <a shape=3D"rect"
                              href=3D"mailto:usrp-users@lists.ettus.com"
                              class=3D"ydp6c76d6a5yiv9951984819moz-txt-li=
nk-freetext
                              moz-txt-link-freetext" rel=3D"nofollow"
                              target=3D"_blank" moz-do-not-send=3D"true">=
usrp-users@lists.ettus.com</a><br
                              clear=3D"none">
                            To unsubscribe send an email to <a
                              shape=3D"rect"
                              href=3D"mailto:usrp-users-leave@lists.ettus=
.com"
class=3D"ydp6c76d6a5yiv9951984819moz-txt-link-freetext
                              moz-txt-link-freetext" rel=3D"nofollow"
                              target=3D"_blank" moz-do-not-send=3D"true">=
usrp-users-leave@lists.ettus.com</a><br
                              clear=3D"none">
                          </div>
                        </div>
                      </div>
                    </div>
                    <br clear=3D"none">
                    <fieldset
                      class=3D"ydp6c76d6a5yiv9951984819moz-mime-attachmen=
t-header"></fieldset>
                    <pre class=3D"ydp6c76d6a5yiv9951984819moz-quote-pre">=
_______________________________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@li=
sts.ettus.com" class=3D"ydp6c76d6a5yiv9951984819moz-txt-link-abbreviated =
moz-txt-link-freetext" rel=3D"nofollow" target=3D"_blank" moz-do-not-send=
=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" class=3D"ydp6c76d6a5yiv9951984819moz-txt-link-a=
bbreviated moz-txt-link-freetext" rel=3D"nofollow" target=3D"_blank" moz-=
do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydp6c76d6a5yqt0494357912"
              id=3D"ydp6c76d6a5yqtfd44154">______________________________=
_________________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollo=
w"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"tru=
e"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------TWvLKes7aNN2PY4N11YLTgEV--

--===============4773821348289166514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4773821348289166514==--
