Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A107F6E985E
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 17:35:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABED9383CAA
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 11:35:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682004949; bh=2CiXSJBN/4fg9H34rtH8esn70JDkx7sa7IY7UCdqC/o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kunzXCqj3WjFziHq7KkNi1NTW6RwqkF4Bs5rVT+vWeKgmKzFaPE93drOkstZkYTXA
	 1dHWnOtUvvUglyOR8pmVJIx3xopZ2YVJMPBUSjay9sXg8qMW95UNOtiYAGTUrKUzK5
	 OaHsNww+yvE9LaM+lLV7VrFlrpkeeb1xra73ScJ4QWuOS/2SMjveEGaEG2bsH/P0Kh
	 dIrdOsgsesNWGRsGlSjcTaoh7AGLV1iejbu2OsCnr+39QoUnwITBq6TFS10MxWbS9+
	 0ZcLZsMNn+Yh6n/1+lrzB7txnicT4mt096tj4wIItudyNsidyvk63Q/4fRYaJ1W53a
	 qTjoIjY1Rk94g==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id AD4BB383CAA
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 11:35:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LQrtmnFh";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-74e2a00d146so56812585a.2
        for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 08:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682004944; x=1684596944;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=836K0YgdMAIUrWG6ZilxlNYMii7TQEuYxUcK/07+yIQ=;
        b=LQrtmnFhLC6jYrGrdxe7j04LnGJW/9fcikxyJgi3Y0v3h8G7TXcU5pwgKP1Zxrs66o
         XEMrsuI0w7SCgfOiMUH+ik2CWYWVCmBqolbo8qbV+1BYAlrIL0SzUdt0+/RM8SxY7wRW
         0CLwferXp8VKYmg2LIAzrOHqR3l9oRLG1Bb32FMhbcmmv8bXKmM9nC8Z+RDOyTzGQuu1
         TChw43X6/2vGLqF8xTrBqUJ+9ErOS6sB1C+JPUZHKIp4qKdQNcYO9toaxq69yWKny+56
         YWqoKePZfzDM5z6e/Pc1wALFW/leEXJmhc1wXUWfKin4Q5vMPtHk49tk3eWG+8MXH5rV
         ffsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682004944; x=1684596944;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=836K0YgdMAIUrWG6ZilxlNYMii7TQEuYxUcK/07+yIQ=;
        b=BesJ4U9jJG9w9MvXniV9cqh8uz2VsNe6lrm3vvGuh/zMSc5Tgb/T3Fg+witJxsZnxY
         Yy7JsjHDfaEsOzc0Rv3RO3OMWYn59YcNf6tCl8DZ6IQtJ2oRD4EQTsEHxhWv2D8bwT2e
         AIlyYh0N3QHyxF/WNg659Egure9IXbwybxSPsf6RGP9DljrvHIWp3Q4jBkYogk1esA1U
         FuBJpDVEihX5HR4mH0+kjFIasEq4HX+XnYozRl+W/2oGi5BkyaMC1fdVN54K3eRkFWrE
         vFk2hR+SR3dbKlYOj3HZTVwwOH82Dsre3NkvxUqjNvF174/10ZvkeuJAvalT+cvaO5/o
         LKiw==
X-Gm-Message-State: AAQBX9eNLlT3i7SoZ/M3Tr9+SutxHzs6pBUo/CsyNTsNHS77UtWXgNA1
	HONC3nOh+Mgs93ZljNYRzYShla8XmH4=
X-Google-Smtp-Source: AKy350YBnn4iK7vy/7vN7E2s/q1rePuwxKW2JS3EtDUgNUe9a5vI3o9uvS+y0Y85HrYTnouG7kQA5g==
X-Received: by 2002:ac8:5701:0:b0:3bf:cea5:7004 with SMTP id 1-20020ac85701000000b003bfcea57004mr2931423qtw.51.1682004943848;
        Thu, 20 Apr 2023 08:35:43 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id p141-20020a374293000000b0074de75f783fsm519271qka.26.2023.04.20.08.35.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 08:35:43 -0700 (PDT)
Message-ID: <31d16ea1-8f7a-252b-a6b2-99a5e3c44fec@gmail.com>
Date: Thu, 20 Apr 2023 11:35:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <qHfhYWYF1uR4qSn7QPB8eeDQJncgEjTaXawCkVcsw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <qHfhYWYF1uR4qSn7QPB8eeDQJncgEjTaXawCkVcsw@lists.ettus.com>
Message-ID-Hash: R6NWZHXFVA4RBKPDYM4YLFEIZKZ2FJ7G
X-Message-ID-Hash: R6NWZHXFVA4RBKPDYM4YLFEIZKZ2FJ7G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: time tags seem don't seem to match sample count
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R6NWZHXFVA4RBKPDYM4YLFEIZKZ2FJ7G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0057170603994552648=="

This is a multi-part message in MIME format.
--===============0057170603994552648==
Content-Type: multipart/alternative;
 boundary="------------ni7VDZ02SFRiwRxM9EXX0wdN"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ni7VDZ02SFRiwRxM9EXX0wdN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20/04/2023 10:30, jason@gardettoengineering.com wrote:
>
> Thank you Marcus, that is helpful.
>
> I have restricted my testing to just an N320, and only freq changes=20
> for now.=C2=A0 I have run across something else that is odd though (but=
 has=20
> major ramifications for my blocks).=C2=A0 Most of the time there are no=
=20
> drops and everything is fine, but here is an example of what I=20
> occasionally see:
>
>  *
>
>     I have an N320 running at 100Msps at freq X, all is running smoothl=
y
>
>  *
>
>     I issue a freq change command, and based on time tags, see that it
>     occurred 10.2s after the last time tag (for example)
>
>  *
>
>     When I see the new time tag, I count the number of samples between
>     them as see that I have 1020.2e6 samples
>
>  *
>
>     But if I compute what I would have expected, it should be 1020e6
>     samples
>
>  *
>
>     That means that I have more samples than I would have expected
>     (200 in this example).=C2=A0 I didn't drop samples, I gained some?=C2=
=A0
>     That doesn't seem right.
>
> A third anomaly I see is that I go through the steps above, but=20
> compute that I am missing 7 samples.=C2=A0 But if I am watching the scr=
een,=20
> I don't see any overflows printed.=C2=A0 Since it is such a small numbe=
r,=20
> it makes me feel like it is a rounding error somewhere.=C2=A0 But if I =
make=20
> that assumption and ignore it, what is the threshold for when it is no=20
> longer rounding errors, but is an actual drop?=C2=A0 Is there any way t=
o=20
> get the O/D flags into the stream from the USRP source block within=20
> gnuradio?
>
> TIA
>
>
This question straddles the boundary between UHD and Gnu Radio.

In Gnu Radio tags arrive with an offset value that tells you which=20
sample within the buffer that was handed to you by the
 =C2=A0 scheduler the tag applies to.=C2=A0 If you aren't accounting for =
that,=20
this may be the cause of the occasional confusion?

I'd suggest clarifying the tag behavior on the Gnu Radio mailing list.



--------------ni7VDZ02SFRiwRxM9EXX0wdN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20/04/2023 10:30,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:jason@gardetto=
engineering.com">jason@gardettoengineering.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:qHfhYWYF1uR4qSn7QPB8eeDQJncgEjTaXawCkVcsw@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Thank you Marcus, that is helpful.</p>
      <p>I have restricted my testing to just an N320, and only freq
        changes for now.=C2=A0 I have run across something else that is o=
dd
        though (but has major ramifications for my blocks).=C2=A0 Most of=
 the
        time there are no drops and everything is fine, but here is an
        example of what I occasionally see:</p>
      <ul>
        <li>
          <p>I have an N320 running at 100Msps at freq X, all is running
            smoothly</p>
        </li>
        <li>
          <p>I issue a freq change command, and based on time tags, see
            that it occurred 10.2s after the last time tag (for example)<=
/p>
        </li>
        <li>
          <p>When I see the new time tag, I count the number of samples
            between them as see that I have 1020.2e6 samples</p>
        </li>
        <li>
          <p>But if I compute what I would have expected, it should be
            1020e6 samples</p>
        </li>
        <li>
          <p>That means that I have more samples than I would have
            expected (200 in this example).=C2=A0 I didn't drop samples, =
I
            gained some?=C2=A0 That doesn't seem right.</p>
        </li>
      </ul>
      <p>A third anomaly I see is that I go through the steps above, but
        compute that I am missing 7 samples.=C2=A0 But if I am watching t=
he
        screen, I don't see any overflows printed.=C2=A0 Since it is such=
 a
        small number, it makes me feel like it is a rounding error
        somewhere.=C2=A0 But if I make that assumption and ignore it, wha=
t is
        the threshold for when it is no longer rounding errors, but is
        an actual drop?=C2=A0 Is there any way to get the O/D flags into =
the
        stream from the USRP source block within gnuradio?</p>
      <p>TIA</p>
      <br>
    </blockquote>
    This question straddles the boundary between UHD and Gnu Radio.<br>
    <br>
    In Gnu Radio tags arrive with an offset value that tells you which
    sample within the buffer that was handed to you by the<br>
    =C2=A0 scheduler the tag applies to.=C2=A0 If you aren't accounting f=
or that,
    this may be the cause of the occasional confusion?<br>
    <br>
    I'd suggest clarifying the tag behavior on the Gnu Radio mailing
    list.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------ni7VDZ02SFRiwRxM9EXX0wdN--

--===============0057170603994552648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0057170603994552648==--
