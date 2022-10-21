Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0167B6076F2
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 14:34:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7625C380097
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 08:34:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666355651; bh=/N2PqW3sUi5kGduxzl0YslHBm743PcjgD8DlPI1S6kQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Wfy9bba0vTzqioyeYlP7nEPcMqEw4zS6Book2Y+fmS5vvQo5AfIXUyCS4Ld6Q8WsL
	 vA0eMBto4nLLjNMADDuoRMOGcRpQuXRXoN4ev6AhL2kZSye3lZbsJfZfheGCZBjcFN
	 BdG9Clh2cVRbJxc+9FD0z5LGfjZcfOFkybwPPJvfCZODIfMI7eWrAYjidu0a7c0yBh
	 JWvkVUcLpzvxBvofRdw1gJowCK4vjKffTCbLYEGi1fclFyEd28fu5amBkVeT38X/Hp
	 BMR7UOHZn6jNWP7jXWJJyhQ5H6UM/GunEisDugs41ml54Ij+nw0lskkI5b5nTTm6Vb
	 VTRR3AdMzFrsw==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 231DF380EDD
	for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 08:25:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lAzt7Qo2";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id x13so1842652qkg.11
        for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 05:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tiSOTF/QWmyyy0f1urkoaYXg/AXLvE+41UG+kMxgDb0=;
        b=lAzt7Qo2oAHCrcRh7ySvPJvr/Uz8vDt7o/m7rxiVE+4qHfugjRlX4M4DnsRmIO/JhS
         /PLze3KC5Qmi65F6C+ixuKDsDYoAC/ZR4MSFH+h5stXvbD3+5InvjunEna3R79pmyYoq
         rg5as1b08CBGTTNEWXtk5/rK/64Tg0SHFUnOfGoLXJgS+lUF/HXckGJPKhnTHsFj25+7
         evqxw7pPpFDJVb8PnUQunjXm17CHJVYpO82+G4Qnut9IRl7cfXjZkkRgN2o8coJCmMik
         Hlt+RxvJldSoBf84671CWCLPGmlshhOVR5sudUG2hpBtPDSF2VXKIpnraGp3jX7ek6kQ
         h/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tiSOTF/QWmyyy0f1urkoaYXg/AXLvE+41UG+kMxgDb0=;
        b=nywzXRPjIHXkeYZa2dxqTiZg/Ehfvo6dyRQJnZk8q0DjHS5j58CKLkfrZx9qyooqAq
         vhnU5oy855uxoKUTgO+kDUpyrV0OUOoS4uS2RlwhNxHQ93OpLfTrvqVxZHpY6N059Ysd
         VVFBj1lpCJ03m0ODeOLSFlqGeMUyAVvznzAb1cmdXr3y9i6qyRX4onON+MQAd9feqOdn
         KkDoteS8ayYuDOswy1+UBHt9BLhQlYAETPy9y+k9ZsZYr/PhC/tgCnqOJRuAEXhJO0d7
         dxoJhSw31IsRXYzRKDRixjFpG/sEHEjuM6kDfb/58xzTL+VhKNftOyWLARoieUcOPOc4
         6Rsw==
X-Gm-Message-State: ACrzQf0QAmOTSmI6zcoY8QqQFlDoUCIE8pdgNLgwQWj73OspRNXYD36H
	Kp7zi2ytaQui4bEDoiby1J1L+gTb+uY=
X-Google-Smtp-Source: AMsMyM5hJXgxVzeyB/Z2s6Xm8kb9HNjTDDFkeoELREx/OJ/2aKdR78nv5aMsbADI6zxpaSPhJ4tfZQ==
X-Received: by 2002:a05:620a:2a02:b0:6ee:7de4:9690 with SMTP id o2-20020a05620a2a0200b006ee7de49690mr13695871qkp.172.1666355119400;
        Fri, 21 Oct 2022 05:25:19 -0700 (PDT)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id s3-20020a05620a29c300b006d1d8fdea8asm9926224qkp.85.2022.10.21.05.25.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 05:25:19 -0700 (PDT)
Message-ID: <5b16e804-70c7-4dee-4eef-26cd0075d82d@gmail.com>
Date: Fri, 21 Oct 2022 08:25:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <rZiEySXywiyNnVKI0FUQjzk0UMFynHph7bILViKQQ@lists.ettus.com>
 <CAHPxm4=obSCO2wfq6ySUZLT-ChyH6zJLmr6eRLEExobNm0xELw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHPxm4=obSCO2wfq6ySUZLT-ChyH6zJLmr6eRLEExobNm0xELw@mail.gmail.com>
Message-ID-Hash: QQO7TGPDRODUFW4UWDXXFAJSHPIWPDOG
X-Message-ID-Hash: QQO7TGPDRODUFW4UWDXXFAJSHPIWPDOG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B205mini-i issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QQO7TGPDRODUFW4UWDXXFAJSHPIWPDOG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0759932859814541998=="

This is a multi-part message in MIME format.
--===============0759932859814541998==
Content-Type: multipart/alternative;
 boundary="------------C1IiZIg10ODuRZj96vsJsAvV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C1IiZIg10ODuRZj96vsJsAvV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-21 01:22, Paul Chang wrote:
> I have exchanged three cables and two computers.
> How to solve this problem?
>
If you have another B205 on the same computer/cable/software=20
configuration that works, then I'd suggest
 =C2=A0 e-mail support@ettus.com and arrange for an RMA.


>
> <paul@haleytech.com> =E6=96=BC 2022=E5=B9=B410=E6=9C=8819=E6=97=A5 =E9=80=
=B1=E4=B8=89 =E4=B8=8A=E5=8D=8810:44=E5=AF=AB=E9=81=93=EF=BC=9A
>
>     How to solve this problem? Another USRP B205 without this error.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------C1IiZIg10ODuRZj96vsJsAvV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-21 01:22, Paul Chang wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHPxm4=3DobSCO2wfq6ySUZLT-ChyH6zJLmr6eRLEExobNm0xELw@mail.gm=
ail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I have exchanged three cables and two computers.=C2=
=A0=C2=A0
        <div>How to solve this problem?=C2=A0=C2=A0<br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    If you have another B205 on the same computer/cable/software
    configuration that works, then I'd suggest<br>
    =C2=A0 e-mail <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:su=
pport@ettus.com">support@ettus.com</a> and arrange for an RMA.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAHPxm4=3DobSCO2wfq6ySUZLT-ChyH6zJLmr6eRLEExobNm0xELw@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">&lt;<a
            href=3D"mailto:paul@haleytech.com" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">paul@haleytech.com</a>&gt; =E6=
=96=BC
          2022=E5=B9=B410=E6=9C=8819=E6=97=A5 =E9=80=B1=E4=B8=89 =E4=B8=8A=
=E5=8D=8810:44=E5=AF=AB=E9=81=93=EF=BC=9A<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <p>How to solve this problem? Another USRP B205 without this
            error.</p>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
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

--------------C1IiZIg10ODuRZj96vsJsAvV--

--===============0759932859814541998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0759932859814541998==--
