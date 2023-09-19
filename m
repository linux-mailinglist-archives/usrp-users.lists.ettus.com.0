Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 400067A67A1
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 17:10:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C69C385C4A
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 11:10:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695136225; bh=ZRnhoB25HNC+5xvy87mrHgcUD6byxq8O9JfmdTrdyeM=;
	h=Date:To:References:From:In-Reply-To:Reply-To:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uXX5Gg9hrQKlkGm45BwwcEx1ljJu6+S3pyq1IKjoBD4EHKioldC7AWnuKHDAgqoY1
	 uSkfp8psCUno6ZuFZfpfY3LjgjtpK3Lk+YWfGfwBfnZqJgK9p4GzL/3xPxioMdfyED
	 iNj+faElood2SDL92DFWwFk1t/cqBFXIr5Ffs2pyhucNSDdUCtpr4W3Iffr2SC5ADu
	 4QYUSc3q3m8inVIX2ZTXz1Tr/ajbHsTKcNJl6abo4+2zPAXxrb7Tpmsolj0QPYbhT9
	 N2nOkaHW27K1D3viU+sv6eO1Qk61jVAS4FjwpuNelu+rY0PMeX1xFSH6glndNXo6bj
	 pwbdB77TIKpbw==
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by mm2.emwd.com (Postfix) with ESMTPS id A00653859CA
	for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 11:09:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="py12Vb0o";
	dkim-atps=neutral
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2b703a0453fso96574011fa.3
        for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 08:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1695136172; x=1695740972; darn=lists.ettus.com;
        h=in-reply-to:from:reply-to:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+yGl1UnTPi4CKsDIURcp2qLko7KlHuLkMxCDrWEhn+o=;
        b=py12Vb0o2aVzlp+tFtohHhv30ZRZBX93W3dSx62fiYezgm1kiW8GKpEuuL6Rr/vKMB
         Dtyz/0ZtCIKZoojMyiOcKDN37J938PjTU+KersqClRcpVPyRh1kqf72SuNkOahiKSF8b
         C5zaFVruJuxVowu8d8YyUCa6iyNgjqGgybX0DCCfKvfjZU7Db+tQjR40aAJDcETZz6jt
         4Bl/2DVXWcv8gWSF//tgiWRkJPJYNbxIEDqsAN6LVaarRDtbAEZxnCcnDJB6ZBiWNFVR
         3NxjPwDxyC11aDo0Xk1cvCEQccUC3FzpeqXfDG0wUpvMiVyKeR4fwYfjGJJYBYJQXNnk
         RQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695136172; x=1695740972;
        h=in-reply-to:from:reply-to:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+yGl1UnTPi4CKsDIURcp2qLko7KlHuLkMxCDrWEhn+o=;
        b=j60stewi7e0NVcXZK4YNujO4AN5Ho8ZM/kTfh268NaknrQH/AaaS/nG2hpshBdcGIa
         u1iB2188sUtNt1ANDFs14vNoPtv7bwB3TcbcttrlEsa1gMHCkeAsQp2jQV2l65ygGNMb
         gvPaXX55vlTIbysec9xcTz7nNvL3n+U+UP2gMSzMWDh/i3ScR3OATxoFbN3s29hIndqP
         cdc/LJOz1d9jrqx733yIDCaTEm/39bGL3fMQPbs54SaQzRT4f7xmGoV5/o4721dqvkbE
         dkrqGLj6ZVRA1VqvGv86uvZiVZOJsQ6X7hLvAdF+HfpWTxuuHu4xJxMO1ASZgXdkiuI1
         Xghg==
X-Gm-Message-State: AOJu0Yx7GooWL70JQvoO7aZuEgCkyE+lFlPvzlrNf2i+MmqZAWfIx8b3
	WECfn4MvadoEPnVI0DRwJ8GFxeEY
X-Google-Smtp-Source: AGHT+IHR26RP3V6ZeL0/1JdSOxPvx8LopMcRDET+ToPqu0lyDRupmZvP7gNZq5s+GuNYdCJqGFRLvA==
X-Received: by 2002:a05:651c:19ab:b0:2bf:f6b6:6c31 with SMTP id bx43-20020a05651c19ab00b002bff6b66c31mr8580855ljb.41.1695136171791;
        Tue, 19 Sep 2023 08:09:31 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3861:1900:10fc:1619:bea3:90d1? ([2001:9e8:3861:1900:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id rn5-20020a170906d92500b0099bd5d28dc4sm7884030ejb.195.2023.09.19.08.09.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 08:09:31 -0700 (PDT)
Message-ID: <1cbaa09d-dd40-6971-0f86-c4e011eb7c7c@ettus.com>
Date: Tue, 19 Sep 2023 17:09:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Jeyakumar K-[BL.EN.P2VLD22009]"
 <bl.en.p2vld22009@bl.students.amrita.edu>,
 usrp-users <usrp-users@lists.ettus.com>
References: <MA0PR01MB92187ECC43DC43A0A4050C2FB6E8A@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
 <MA0PR01MB92187E3CD217ED05912CBA5BB6F1A@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
 <MA0PR01MB9218A5503D87BFF14F28AB9AB6FAA@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
 <98489dd8-4111-17f3-61ea-e8a8afa180de@ettus.com>
 <PN0PR01MB92248D33F5DFAB4404C266DEB6FAA@PN0PR01MB9224.INDPRD01.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <PN0PR01MB92248D33F5DFAB4404C266DEB6FAA@PN0PR01MB9224.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: UOGEXYG4CGVLL4WBKU6XZDDFTOA5TZUV
X-Message-ID-Hash: UOGEXYG4CGVLL4WBKU6XZDDFTOA5TZUV
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Reply-To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: USRP codebase walkthrough/understanding
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UOGEXYG4CGVLL4WBKU6XZDDFTOA5TZUV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6348817757837202565=="

This is a multi-part message in MIME format.
--===============6348817757837202565==
Content-Type: multipart/alternative;
 boundary="------------lPVtCvEQBzFUfoHmH0oh5vOI"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lPVtCvEQBzFUfoHmH0oh5vOI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Jeyakumar,


I don't really think that you need to be thinking in terms of "adding val=
ue" yet; defining=20
the problem you want to solve, however, is paramount.


 > Hence if someone can join via google meet or teams and help me provide=
 a boot start in=20
understanding the code, I should be able to pick it up from there for the=
 rest of year.


I don't want to disappoint you, but you're asking a lot there.

At this point, I'd very strongly advise anyone willing to have a call wit=
h you to ask you=20
to very closely define what you want to do. Having a call about a nearly =
20-year-large=20
code base without knowing what you are looking to do is for all practical=
 purposes a waste=20
of time.


 > Regarding AI capabilities, I agree with your comments. I shall add mor=
e to this once I=20
understand the existing codebase.


OK, here it's no longer my "underdefined term usage" meter; here it's my =
"I have advised=20
students before, and you're trying to bullshit yourself into thinking you=
 can skip the=20
task of understanding the problem you're solving" meter that shows large =
readings. In my=20
humble experience, that is a very good predictor for trouble in the month=
s to come.
You need to know what you want to do, before you start a project. It's no=
t the existing=20
code base defines what you aim to achieve! At least find an example of wh=
at you'd want to=20
do, and we could discuss whether this would be possible. Since "AI" posit=
ively tells me=20
nothing, I sadly can't even give you a rough direction.


Best,
Marcus


On 19.09.23 16:31, Jeyakumar K-[BL.EN.P2VLD22009] wrote:
> Hi Marcus,
>
> Thank you so much for the response.
>
> First I need to understand the current codebase so that I can add furth=
er value. I had=20
> been assigned/taken-up this as my current project as part of academics.
> Hence if someone can join via google meet or teams and help me provide =
a boot start in=20
> understanding the code, I should be able to pick it up from there for t=
he rest of year.
>
> Regarding AI capabilities, I agree with your comments. I shall add more=
 to this once I=20
> understand the existing codebase.
> Many thanks for your valuable time & support !
>
> Thanks
> Jeyakumar
> -----------------------------------------------------------------------=
-------------------
> *From:* Marcus M=C3=BCller <marcus.mueller@ettus.com>
> *Sent:* 19 September 2023 17:14
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: USRP codebase walkthrough/understanding
>
> Hi Jeyakumar,
>
>
> obviously, we'd point you to the same resources on the Ettus knowledge =
base that you've=20
> already read, probably. So, um, can you maybe phrase this in a less ope=
n-ended way? What=20
> do you need help with?
>
>
> Also: "Add AI capabilities", that makes my "underdefined term usage" me=
ter have very=20
> high readings. Please try to also narrow down what you want this to mea=
n!
>
>
> Best,
> Marcus
>
>
> On 19.09.23 09:37, Jeyakumar K-[BL.EN.P2VLD22009] via USRP-users wrote:
>> Dear all,
>>
>> Do we have any videos or can someone help me with a code walk through =
of USRP github=20
>> codebase.
>>
>> I have taken this project as my final year MTech project and would lik=
e to add AI=20
>> capabilities after understanding the code.
>>
>> Many thanks for your support.
>>
>> Thanks
>> Jeyakumar K
>>
>> ----------------------------------------------------------------------=
--------------------
>> *From:* Jeyakumar K-[BL.EN.P2VLD22009] <bl.en.p2vld22009@bl.students.a=
mrita.edu>=20
>> <mailto:bl.en.p2vld22009@bl.students.amrita.edu>
>> *Sent:* 12 September 2023 11:25
>> *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
>> <usrp-users@lists.ettus.com> <mailto:usrp-users@lists.ettus.com>
>> *Subject:* Re: Help to build and push bitstream to FPGA of USRP codeba=
se
>> Can someone please help here.
>>
>> Thanks
>> Jeyakumar
>> ----------------------------------------------------------------------=
--------------------
>> *From:* Jeyakumar K-[BL.EN.P2VLD22009]
>> *Sent:* 05 September 2023 21:37
>> *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
>> <usrp-users@lists.ettus.com> <mailto:usrp-users@lists.ettus.com>
>> *Subject:* Help to build and push bitstream to FPGA of USRP codebase
>> Dear Users,
>>
>> I tried my best following the instructions provided in build manual bu=
t the build=20
>> failed with several attempts.
>>
>> As part of my final year major project, I have expressed interest to w=
ork on ettus fpga=20
>> open source git reporsitory for USRP hardware build on FPA and add mor=
e features.
>>
>> Hence can anyone guide me to understand source code at high level and =
how to build them=20
>> in vivado. I really appreciate all your support !
>>
>> Thanks
>> Jeyakumar
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-use=
rs@lists.ettus.com>
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mail=
to:usrp-users-leave@lists.ettus.com>
--------------lPVtCvEQBzFUfoHmH0oh5vOI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Jeyakumar,</p>
    <p><br>
    </p>
    <p>I don't really think that you need to be thinking in terms of
      "adding value" yet; defining the problem you want to solve,
      however, is paramount.</p>
    <p><br>
    </p>
    <p>&gt; Hence if someone can join via google meet or teams and help
      me provide a boot start in understanding the code, I should be
      able to pick it up from there for the rest of year.<br>
    </p>
    <p><br>
    </p>
    <p>I don't want to disappoint you, but you're asking a lot there.</p>
    <p>At this point, I'd very strongly advise anyone willing to have a
      call with you to ask you to very closely define what you want to
      do. Having a call about a nearly 20-year-large code base without
      knowing what you are looking to do is for all practical purposes a
      waste of time.</p>
    <p><br>
    </p>
    <p>&gt; Regarding AI capabilities, I agree with your comments. I
      shall add more to this once I understand the existing codebase.</p>
    <p><br>
    </p>
    <p>OK, here it's no longer my "underdefined term usage" meter; here
      it's my "I have advised students before, and you're trying to
      bullshit yourself into thinking you can skip the task of
      understanding the problem you're solving" meter that shows large
      readings. In my humble experience, that is a very good predictor
      for trouble in the months to come.<br>
      You need to know what you want to do, before you start a project.
      It's not the existing code base defines what you aim to achieve!
      At least find an example of what you'd want to do, and we could
      discuss whether this would be possible. Since "AI" positively
      tells me nothing, I sadly can't even give you a rough direction.<br=
>
    </p>
    <p><br>
    </p>
    <p>Best,<br>
      Marcus<br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 19.09.23 16:31, Jeyakumar
      K-[BL.EN.P2VLD22009] wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PN0PR01MB92248D33F5DFAB4404C266DEB6FAA@PN0PR01MB9224.INDPRD01=
.PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hi Marcus,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Thank you so much for the response.=C2=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        First I need to understand the current codebase so that I can
        add further value. I had been assigned/taken-up this as my
        current project as part of academics.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hence if someone can join via google meet or teams and help me
        provide a boot start in understanding the code, I should be able
        to pick it up from there for the rest of year.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Regarding AI capabilities, I agree with your comments. I shall
        add more to this once I understand the existing codebase.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Many thanks for your valuable time &amp; support !</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Thanks</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Jeyakumar</div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          M=C3=BCller <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:m=
arcus.mueller@ettus.com">&lt;marcus.mueller@ettus.com&gt;</a><br>
          <b>Sent:</b> 19 September 2023 17:14<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: USRP codebase
          walkthrough/understanding</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <p>Hi Jeyakumar,</p>
        <p><br>
        </p>
        <p>obviously, we'd point you to the same resources on the Ettus
          knowledge base that you've already read, probably. So, um, can
          you maybe phrase this in a less open-ended way? What do you
          need help with?
          <br>
        </p>
        <p><br>
        </p>
        <p>Also: "Add AI capabilities", that makes my "underdefined term
          usage" meter have very high readings. Please try to also
          narrow down what you want this to mean!</p>
        <p><br>
        </p>
        <p>Best,<br>
          Marcus</p>
        <p><br>
        </p>
        <div class=3D"x_moz-cite-prefix">On 19.09.23 09:37, Jeyakumar
          K-[BL.EN.P2VLD22009] via USRP-users wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Dear all,</div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Do we have any videos or can someone help me with a code
            walk through of USRP github codebase.</div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            I have taken this project as my final year MTech project and
            would like to add AI capabilities after understanding the
            code.</div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Many thanks for your support.</div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Thanks</div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Jeyakumar K</div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
          <div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font
              style=3D"font-size:11pt; color:rgb(0,0,0)" face=3D"Calibri,
              sans-serif"><b>From:</b> Jeyakumar K-[BL.EN.P2VLD22009]
              <a class=3D"x_moz-txt-link-rfc2396E"
                href=3D"mailto:bl.en.p2vld22009@bl.students.amrita.edu"
                moz-do-not-send=3D"true">
                &lt;bl.en.p2vld22009@bl.students.amrita.edu&gt;</a><br>
              <b>Sent:</b> 12 September 2023 11:25<br>
              <b>To:</b> <a class=3D"x_moz-txt-link-abbreviated
                moz-txt-link-freetext"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true">
                usrp-users@lists.ettus.com</a> <a
                class=3D"x_moz-txt-link-rfc2396E"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true">
                &lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Subject:</b> Re: Help to build and push bitstream to
              FPGA of USRP codebase</font>
            <div>=C2=A0</div>
          </div>
          <div dir=3D"ltr">
            <div class=3D"x_x_elementToProof"
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              Can someone please help here.</div>
            <div class=3D"x_x_elementToProof"
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              <br>
            </div>
            <div class=3D"x_x_elementToProof"
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              Thanks</div>
            <div class=3D"x_x_elementToProof"
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              Jeyakumar</div>
            <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%"=
>
            <div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font
                style=3D"font-size:11pt; color:rgb(0,0,0)" face=3D"Calibr=
i,
                sans-serif"><b>From:</b> Jeyakumar K-[BL.EN.P2VLD22009]<b=
r>
                <b>Sent:</b> 05 September 2023 21:37<br>
                <b>To:</b> <a class=3D"x_moz-txt-link-abbreviated
                  moz-txt-link-freetext"
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true">
                  usrp-users@lists.ettus.com</a> <a
                  class=3D"x_moz-txt-link-rfc2396E"
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true">
                  &lt;usrp-users@lists.ettus.com&gt;</a><br>
                <b>Subject:</b> Help to build and push bitstream to FPGA
                of USRP codebase</font>
              <div>=C2=A0</div>
            </div>
            <div dir=3D"ltr">
              <div class=3D"x_x_x_elementToProof"
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Dear Users,</div>
              <div class=3D"x_x_x_elementToProof"
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_x_elementToProof"
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                I tried my best following the instructions provided in
                build manual but the build failed with several attempts.<=
/div>
              <div class=3D"x_x_x_elementToProof"
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_x_elementToProof"
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                As part of my final year major project, I have expressed
                interest to work on ettus fpga open source git
                reporsitory for USRP hardware build on FPA and add more
                features.</div>
              <div class=3D"x_x_x_elementToProof"
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_x_elementToProof"
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Hence can anyone guide me to understand source code at
                high level and how to build them in vivado. I really
                appreciate all your support !</div>
              <div class=3D"x_x_x_elementToProof"
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_x_elementToProof"
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Thanks</div>
              <div class=3D"x_x_x_elementToProof"
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Jeyakumar</div>
            </div>
          </div>
          <br>
          <fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
          <pre class=3D"x_moz-quote-pre">________________________________=
_______________
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated moz-txt=
-link-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-sen=
d=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated mo=
z-txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz=
-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------lPVtCvEQBzFUfoHmH0oh5vOI--

--===============6348817757837202565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6348817757837202565==--
