Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4218877265C
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 15:46:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D4A0383F00
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 09:46:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691415960; bh=1xGKgRgKpXKd09v7sprP8Mnm/EqaSDqmXNZRwdXRrWs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=UmqpBL2SuMasekKUq7G0NuqX0SKpzltQqaeBIOxfWEmb1JGWLnJY05Qfx2AJmJABH
	 XxqIL82d0oyXMHP5mOtu0cdcMKi/VTZXVSOy6ohNh/U2/1SwCVmiOipHh6KvLz8Mvf
	 vHvmlNobUWUdYjav2VZ2UeEMeRHE0TLwcK/KmGPuTpnkEUnCR76UZFNE+N17kIeDVL
	 Z8jFYEEjk37SiyCzEl3npj4L9TMykPWcpejkbBS5aCXPp4FIfcf4LX52qMi0G4B9Dt
	 8XsbLy5ZBP/v8vyDxUGQ1D3ByPU2gs2Oji6kKcsYA5YBrKIKnLa0F6urbqVstZ7D9N
	 f3wF8Dw+GVZTg==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D4E4383B8C
	for <usrp-users@lists.ettus.com>; Mon,  7 Aug 2023 09:45:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KaKphB/j";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7653bd3ff2fso454976685a.3
        for <usrp-users@lists.ettus.com>; Mon, 07 Aug 2023 06:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691415944; x=1692020744;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nzmliaV1nlsdxR/H/1qMYkfF+QLiUaGM6tT4Mv13ywE=;
        b=KaKphB/jJ0tTg36Jl4vCMumN259zGDuCge+oAJ+G4pb1auiS0GxtCYXpY0DJRr7b0P
         oe/hACJv3Lp++G9xR16qT570YfXEOcpr/QplFNKUKpZMZvBxmJ50QD7RNGPF6HGX7ktb
         vFcuu/4YzQ0XrEupsbg6PCptn++BtXVqmD0AeZfTZhLSx4ekYzsAR3bPP/iucm3Y+77g
         CsMuIFskEsNWXisJVIcaMeP8EJmPSna9cdxsD3L5EkdYoaFODDlQTTVO5bPiGth6Qj49
         3NmzNbHCVVAznsobY7MJ6VMvC4pglMEynztIh9YQDQbjQpOEpfsjeBevxbyAlK3bWdB1
         6Lxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691415944; x=1692020744;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nzmliaV1nlsdxR/H/1qMYkfF+QLiUaGM6tT4Mv13ywE=;
        b=Gys52CfmaiRKkWToJFlO296NYaQcvVa+pjDBtKwDorVzG1XmHSyY91vEK7xQs8JfRn
         HvgI7atpWsVtn0etJuvC3oKuJLIekhQ+GuwLHqrU0l1e/FHgPhwIJw3edyA0id4SqpPZ
         cemW43oZJk5PDZ2apRISEMywTNIThs3u9SA+VS4q7opwMNNN1yo52syF80187AZAwILG
         rLJDXQuFzCW6R6B+sMyxcW6rVCxS1JmTOYUuKzGSf2g5sk+dbAiJaaAhbhnnFg6We0Ch
         v2kWQ9FFTJw6uJX8qXFw2DPyOJCfvm49f6pBkW5to/QcZC/N19n+//USQ/1xB9QiEuLM
         o/Bw==
X-Gm-Message-State: AOJu0YwarkCd83L8fJLWey4mGtkFbt1Se6ybtEvVCyKqY3GQyodm/hfP
	ty5c1iPpbVJ8TfVhxiAiUuNG2CYSFiM=
X-Google-Smtp-Source: AGHT+IHkz+/yUIwb6VKJBuvSsnTdqDn1TjspuSuGm3eOxRbnt0tjxiKfaBP3L+J0WbMUfypJIH+92A==
X-Received: by 2002:a05:620a:4686:b0:769:87c8:28bb with SMTP id bq6-20020a05620a468600b0076987c828bbmr13139394qkb.13.1691415944277;
        Mon, 07 Aug 2023 06:45:44 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id pj47-20020a05620a1daf00b00767cd2dbd82sm2608140qkn.15.2023.08.07.06.45.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 06:45:44 -0700 (PDT)
Message-ID: <3ea0a44a-8942-c795-764e-2e967ba1ecb4@gmail.com>
Date: Mon, 7 Aug 2023 09:45:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <JY69MVrXA1ftfNlnyzeN8KI5JuYFOwHyCm5H1oY83cU@lists.ettus.com>
 <33990667-b547-dc4b-8e98-649b560df3df@gmail.com>
 <2081896548.419499.1691397648533@mail.yahoo.com>
 <100d04b2-9cae-4fe6-e024-b68a99da766f@gmail.com>
 <612213778.469873.1691415701949@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <612213778.469873.1691415701949@mail.yahoo.com>
Message-ID-Hash: RGHL7JRWFYIR2IVHCCVESK7PCFYFOZIZ
X-Message-ID-Hash: RGHL7JRWFYIR2IVHCCVESK7PCFYFOZIZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RGHL7JRWFYIR2IVHCCVESK7PCFYFOZIZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4318984752234291689=="

This is a multi-part message in MIME format.
--===============4318984752234291689==
Content-Type: multipart/alternative;
 boundary="------------lOatbxr8rwHg1yMQSpC0J0PX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lOatbxr8rwHg1yMQSpC0J0PX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/08/2023 09:41, zhou via USRP-users wrote:
> Thanks for your quick response, Marcus.
>
> On the 2nd question, I mean, when LO is different from the target RF=20
> freq, DSP will make up the difference. LO leak will become a spurious=20
> signal at DSP freq. Can this LO leak be compensated in USRP? if yes, ho=
w?
>
If you move the LO leakage out of the passband of your application=20
sample rate, it won't be bothersome.


> Thanks.
>
>
> On Monday, 7 August 2023 at 14:11:08 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
> On 07/08/2023 04:40, zhou via USRP-users wrote:
> Hi,
>
> I have a question regarding USRP calibration. I am using X310 and UHD 4=
.4.
> To save calibration time, the step size is set to be 5MHz and the freq=20
> range is [600MHz, 6GHz].
> My questions are:
> 1. will the compensation be made at these discrete frequencies only,=20
> or interpolation will be applied to frequencies which are between the=20
> steps?
> Interpolation is applied.
>
>> 2. how to compensate DC offset in case there is DSP freq?
> The DC offset compensation is applied based on the *analog* frequency=20
> setting of the RF PLL.=C2=A0 The DSP component
> =C2=A0 is "perfect" from a offset and balance perspective.
>
>
>
>>
>> Thanks,
>> Hongwei
>>
>>
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
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------lOatbxr8rwHg1yMQSpC0J0PX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 07/08/2023 09:41, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:612213778.469873.1691415701949@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp66d139c6yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your quick
          response, Marcus.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">On the 2nd question, I mea=
n,
          when LO is different from the target RF freq, DSP will make up
          the difference. LO leak will become a=C2=A0<span><span
style=3D"font-size:11.0pt;font-family:Calibri,sans-serif;mso-fareast-font=
-family:=E7=AD=89=E7=BA=BF;mso-fareast-theme-font:minor-fareast;mso-ligat=
ures:standardcontextual;mso-ansi-language:EN-GB;mso-fareast-language:EN-U=
S;mso-bidi-language:AR-SA">spurious
              signal at DSP freq. Can this LO leak be compensated in
              USRP? if yes, how?=C2=A0</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span
style=3D"font-size:11.0pt;font-family:Calibri,sans-serif;mso-fareast-font=
-family:=E7=AD=89=E7=BA=BF;mso-fareast-theme-font:minor-fareast;mso-ligat=
ures:standardcontextual;mso-ansi-language:EN-GB;mso-fareast-language:EN-U=
S;mso-bidi-language:AR-SA"><br>
            </span></span></div>
      </div>
    </blockquote>
    If you move the LO leakage out of the passband of your application
    sample rate, it won't be bothersome.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:612213778.469873.1691415701949@mail.yahoo.com">
      <div class=3D"ydp66d139c6yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><span><span
style=3D"font-size:11.0pt;font-family:Calibri,sans-serif;mso-fareast-font=
-family:=E7=AD=89=E7=BA=BF;mso-fareast-theme-font:minor-fareast;mso-ligat=
ures:standardcontextual;mso-ansi-language:EN-GB;mso-fareast-language:EN-U=
S;mso-bidi-language:AR-SA">Thanks.</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span
style=3D"font-size:11.0pt;font-family:Calibri,sans-serif;mso-fareast-font=
-family:=E7=AD=89=E7=BA=BF;mso-fareast-theme-font:minor-fareast;mso-ligat=
ures:standardcontextual;mso-ansi-language:EN-GB;mso-fareast-language:EN-U=
S;mso-bidi-language:AR-SA"><br>
            </span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span
style=3D"font-size:11.0pt;font-family:Calibri,sans-serif;mso-fareast-font=
-family:=E7=AD=89=E7=BA=BF;mso-fareast-theme-font:minor-fareast;mso-ligat=
ures:standardcontextual;mso-ansi-language:EN-GB;mso-fareast-language:EN-U=
S;mso-bidi-language:AR-SA">=C2=A0</span></span></div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydpdb28840fyahoo_quoted_2142999335"
        class=3D"ydpdb28840fyahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Monday, 7 August 2023 at 14:11:08 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydpdb28840fyiv1566047874">
              <div>
                <div class=3D"ydpdb28840fyiv1566047874moz-cite-prefix">On
                  07/08/2023 04:40, zhou via USRP-users wrote:<br
                    clear=3D"none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div style=3D"font-family:Helvetica Neue, Helvetica,
                  Arial, sans-serif;font-size:13px;"
                  class=3D"ydpdb28840fyiv1566047874ydpf6d16e8dyahoo-style=
-wrap">
                  <div dir=3D"ltr">Hi,</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">I have a question regarding USRP
                    calibration. I am using X310 and UHD 4.4.</div>
                  <div dir=3D"ltr">To save calibration time, the step siz=
e
                    is set to be 5MHz and the freq range is [600MHz,
                    6GHz].</div>
                  <div dir=3D"ltr">My questions are:</div>
                  <div dir=3D"ltr">1. will the compensation be made at
                    these discrete frequencies only, or interpolation
                    will be applied to frequencies which are between the
                    steps?</div>
                </div>
                Interpolation is applied.<br clear=3D"none">
                <br clear=3D"none">
                <blockquote type=3D"cite">
                  <div style=3D"font-family:Helvetica Neue, Helvetica,
                    Arial, sans-serif;font-size:13px;"
                    class=3D"ydpdb28840fyiv1566047874ydpf6d16e8dyahoo-sty=
le-wrap">
                    <div dir=3D"ltr">2. how to compensate DC offset in
                      case there is DSP freq?</div>
                  </div>
                </blockquote>
                The DC offset compensation is applied based on the
                *analog* frequency setting of the RF PLL.=C2=A0 The DSP
                component<br clear=3D"none">
                =C2=A0 is "perfect" from a offset and balance perspective=
.
                <div id=3D"ydpdb28840fyiv1566047874yqtfd26387"
                  class=3D"ydpdb28840fyiv1566047874yqt4666739767"><br
                    clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <div style=3D"font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;"
                      class=3D"ydpdb28840fyiv1566047874ydpf6d16e8dyahoo-s=
tyle-wrap">
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
                      class=3D"ydpdb28840fyiv1566047874moz-mime-attachmen=
t-header"></fieldset>
                    <pre class=3D"ydpdb28840fyiv1566047874moz-quote-pre">=
_______________________________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@li=
sts.ettus.com" class=3D"ydpdb28840fyiv1566047874moz-txt-link-abbreviated =
moz-txt-link-freetext" rel=3D"nofollow" target=3D"_blank" moz-do-not-send=
=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" class=3D"ydpdb28840fyiv1566047874moz-txt-link-a=
bbreviated moz-txt-link-freetext" rel=3D"nofollow" target=3D"_blank" moz-=
do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydpdb28840fyqt4666739767"
              id=3D"ydpdb28840fyqtfd44997">______________________________=
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
    <br>
  </body>
</html>

--------------lOatbxr8rwHg1yMQSpC0J0PX--

--===============4318984752234291689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4318984752234291689==--
