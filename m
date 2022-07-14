Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDCE57564F
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 22:24:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ACC95383FD1
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 16:24:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657830290; bh=V/Dm82UyG3zveegIfn9AcQ2zu0dwRupzWX7oMuE85vI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GXVnlIJtbHs84UrqATifnL+PsstJOnn7cfFZYBVvdirrJSwLOJptqZjcnWL8uOPLe
	 pKRwTPm7PpzLXr68h2TpW47kfs29Hy35/OxNQr6yCqCLmXbPECPxhuVhg3qjMLTlc+
	 CV+EWqO6SEcWAgU+0KvcZlQ2JuN2fpOkVBu1CiDcf8BPMoa4vA170I6WQRqguP1bVJ
	 iFud1wvO1VO2yhH02QbhEn8qhry1zklc5zWVfAfg1bZr2q8ymmE9YnLDJvS4c2QkR6
	 fMkZRDSWMNGfRFl7SbIoKbMN+uQ+iMGYNr6pGSPQ5Q6UPPRQDdphXArIDOdTzvenha
	 2oWRFN/Erh/Lg==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id F352B380DE8
	for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 16:23:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nREuByNP";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id b2so2121966qkk.3
        for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 13:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=FwQFVC/ZuuEZRfzzrQDT8ZFL+VFSIMI3S4JluzpVadA=;
        b=nREuByNPF8PjZnsA0eaZZqAQMqplpfMnuKSQLeMS+ZV7L5fpX4KBbIsHgv7DenOuZW
         T8wJonOG8H+q+q2gpmcFEsk+VhlIZ33eNBPT0HAPOy6YZOT+9YcWCo8ezhkzgYa4+4up
         WLlKFjHS/0xVtNAjBY8wTt47WKmvykUrsQQfYh2YDYaBOMHIJDXAkeOVp6wKYZPw08W+
         Da7PUQzkdV0gNH6+6+y24UutFPXz46qm/fRnalN2RV44+jXFsBrCWZ8cz6p6Ui+3F6xW
         nJbtuepWb8JQfcxgBXp+MO6KANit0t/Pmr85FzhTEjkS7Ne7Uw0QaSu8JTTTP1pDQ6Ls
         SJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=FwQFVC/ZuuEZRfzzrQDT8ZFL+VFSIMI3S4JluzpVadA=;
        b=wWW7WLiY07tXqxz/fYuCN/j94FZ9MpTZ7AFUObf9G05HGAIOg7ubwYLTIgfy1B678I
         yqyI4KBCkulRqFmqfv86I2ww4pxRBWUR0ZrdQ6CcxudwFalae5mzmObWNY97myvTFOeD
         d60+nYtDsrg8ykJvQOKoU0QFp36XXjTIaMkZ0K51i8K8t1e3NWuT0/4kpNU7ChfR1Yhk
         TWk7bnrxUEyyIfmM/UQ83Sx459BDTUZQxp88ihzB6nr4a3cE6tIKWf5xQkSQSlLm1Hh3
         IgME5USSsnitGPXQEl517qKH/d+RdaGuYKaw6zRASf7p6gxVb3cS1r13Vw+Lvj4dLzjp
         BqVA==
X-Gm-Message-State: AJIora9S6NQfyO8O4WwoL0gmozGFkLPT46174fwJ3hUWdQJJM6klyswP
	YoBfcNz/GPLw7BwBYt5IclcM/gpWQ8s=
X-Google-Smtp-Source: AGRyM1tCwtXf57ySsMYAPfxVV0cDDnVkwvE2H4De/17qWb0QsaV6VrdC/fDHjJJDqTSMhUFmgOXtqg==
X-Received: by 2002:a05:620a:1b8d:b0:6b5:c56f:ec78 with SMTP id dv13-20020a05620a1b8d00b006b5c56fec78mr2452706qkb.362.1657830222111;
        Thu, 14 Jul 2022 13:23:42 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id cm17-20020a05622a251100b00304f3e320f2sm2367792qtb.4.2022.07.14.13.23.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 13:23:41 -0700 (PDT)
Message-ID: <3c5ed3e4-8df8-e0b6-0d03-14e790e19c25@gmail.com>
Date: Thu, 14 Jul 2022 16:23:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB387160D39097A5A043F6B443AF889@MN2PR12MB3871.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB387160D39097A5A043F6B443AF889@MN2PR12MB3871.namprd12.prod.outlook.com>
Message-ID-Hash: JVQMYJLWJRERS47HWBGSFD7TAGS7ABBX
X-Message-ID-Hash: JVQMYJLWJRERS47HWBGSFD7TAGS7ABBX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: weird usrp coredump
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JVQMYJLWJRERS47HWBGSFD7TAGS7ABBX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8194672251051210360=="

This is a multi-part message in MIME format.
--===============8194672251051210360==
Content-Type: multipart/alternative;
 boundary="------------kvndbgLBsPEkxYzRL1rTO92n"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------kvndbgLBsPEkxYzRL1rTO92n
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-14 08:25, Jason Matusiak wrote:
> Trying to run a C++ based flowgraph and occasionally getting a=20
> segfault/coredump.=C2=A0 Finally, was able to capture the stack trace, =
and=20
> I am not sure what to make of it.=C2=A0 I //think// that this is all UH=
D,=20
> and not my app, but I find that hard to believe.=C2=A0 Here is that cor=
e=20
> dump, any thoughts on what is causing this and if there is any way for=20
> more to gracefully recover from it?=C2=A0 This was using a single N320,=
=20
> gnuradio v3.8, and UHD 4.1.0.5.
>
I have not had any other reports.

One of the things about C/C++ (which you likely know) is that it's=20
relatively easy for an application to corrupt heap or stack that some=20
library relies on,and then something inside
 =C2=A0 the library takes a left turn that it wouldn't otherwise take--th=
is=20
can make it *appear* that the library is the culprit, but it may well=20
have been the calling application, often
 =C2=A0 thousands of instructions ago...


--------------kvndbgLBsPEkxYzRL1rTO92n
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-14 08:25, Jason Matusiak
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB387160D39097A5A043F6B443AF889@MN2PR12MB3871.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Trying to run a C++ based flowgraph and occasionally getting a
        segfault/coredump.=C2=A0 Finally, was able to capture the stack
        trace, and I am not sure what to make of it.=C2=A0 I //think// th=
at
        this is all UHD, and not my app, but I find that hard to
        believe.=C2=A0 Here is that core dump, any thoughts on what is
        causing this and if there is any way for more to gracefully
        recover from it?=C2=A0 This was using a single N320, gnuradio v3.=
8,
        and UHD 4.1.0.5.<br>
        <br>
      </div>
    </blockquote>
    I have not had any other reports.<br>
    <br>
    One of the things about C/C++ (which you likely know) is that it's
    relatively easy for an application to corrupt heap or stack that
    some library relies on,and then something inside<br>
    =C2=A0 the library takes a left turn that it wouldn't otherwise
    take--this can make it *appear* that the library is the culprit, but
    it may well have been the calling application, often<br>
    =C2=A0 thousands of instructions ago...<br>
    <br>
    <br>
  </body>
</html>

--------------kvndbgLBsPEkxYzRL1rTO92n--

--===============8194672251051210360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8194672251051210360==--
