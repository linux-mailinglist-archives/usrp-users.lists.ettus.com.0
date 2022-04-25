Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 909BD50E189
	for <lists+usrp-users@lfdr.de>; Mon, 25 Apr 2022 15:24:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF71D385196
	for <lists+usrp-users@lfdr.de>; Mon, 25 Apr 2022 09:24:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650893055; bh=8sjvoTv8C66REp3xxBYk9dfwSMy0b3r5TegBMg0mLME=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yfSgAUNXWnOcyepxWZkK1HISVBi5UR5oT7G3VqHsTEWDQCjdS36Z0nI4YBFrkKsfq
	 YP5DT+vS+irOr9O2ZdvxNgG61LOTFywdqTlg6KIiw+uPUwTXc34/EtoyA3Uko7BEYC
	 sqEboTaIKwH7vnfDiMQpmM6lHf0zSFgfclvHuoN0NixNh3ve5h2qufQ5vMkGhXkXiF
	 Rzh5dHncGeUbbrxDREo5ivBL7ay2YktDqQJebdysaPg2emloYNmfUG1gEmWjs39jLs
	 dMg9QMWvzEOCUGzXiZYCABp49ZovCoiE+hG92chenbxQMRPyI7Ewjpi6c8P5+TeoXe
	 /eu8s85Hd6LDQ==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id CF6AA384DEA
	for <usrp-users@lists.ettus.com>; Mon, 25 Apr 2022 09:22:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PwVe1j9A";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id hh4so10218789qtb.10
        for <usrp-users@lists.ettus.com>; Mon, 25 Apr 2022 06:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=PGS8Ok8sbYoOiolaEGEGq5G6BrKavrUl6NdUjIt6lkg=;
        b=PwVe1j9A7hyG6eGyiGRh/A6eJdZJaxDa+D2TkIrj3K3kgxXnuQDoOMWp58nkPFPuFo
         lIUrWKF/sHYIEfKeb4Nu7+abkEFal7YvuS6C3KSsOIkVaTlB09P29B5ynLb2zspC8utq
         DnmiCZ3JTc3AEQWtWvx/tlCR2G7lsEyKzQOajE0anouLtsg/aijMj5jVCY7D7oKQd4XH
         wOuEWmxsSMZ9hzRXT2ua0QUURGj3CjYJ36UNVhTk/NPL5q2TDLTY6EQBYrNZ4lS6+hji
         ZpK5ptkQtoR8Kjz/c45yhuPW7Z3KjaBpoq53fGQCIZqKWBJtArwDi5ox+l+PFCZyUAgH
         QMIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=PGS8Ok8sbYoOiolaEGEGq5G6BrKavrUl6NdUjIt6lkg=;
        b=ibJTKwZyYJ0d5oBOA+mF3Y7UYPBcpdyF+y3u93u5d9iv5/LkuF4GYdN4An+/Nfd//9
         FHg2+PBgpGHOc237lI6Q6/ZG+c12dtpYmRzZsSACtZnYq0e41erx5sc3dc+hcqfvPN1f
         fqlMrPBaBraH0YyQ2CmjS20zotTB1klQHxzKjYKjEFXQAQ5iy5qeeJ7VCJdtl26P43z3
         FzQbN8FKVJ6DuTgVe5luJrWMWGYlYChHUoPF++1egFegKmIrq0W/xBPoSlp3CZOdy+6H
         D8VCsNRWC34NbT9/zyAqh1ByrCQnnLulJcCCRrLEKSieccDW/HBg0tFsriL7wpTpn/HY
         rnNA==
X-Gm-Message-State: AOAM533qyXidQ+Z2cYR90/bfldJJ10bZ9YoLAsUJ2TmP0n8viHavcDXk
	7OEhrc+Q6JFX3lltKKDbGe/KwnBzq6s=
X-Google-Smtp-Source: ABdhPJwAwNRN20CfXoUoN6qlZVqJdQ8cDdl2VnqaeUn6CBAInQPitIN5kdPZNvvA4+PI+Ah0EDk1iw==
X-Received: by 2002:a05:622a:18a3:b0:2f1:f958:38cc with SMTP id v35-20020a05622a18a300b002f1f95838ccmr11748171qtc.171.1650892933237;
        Mon, 25 Apr 2022 06:22:13 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id o4-20020ae9f504000000b0069e75e7387fsm4856259qkg.43.2022.04.25.06.22.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 06:22:12 -0700 (PDT)
Message-ID: <43af8d65-36f8-7cfb-f5d0-561fb647288b@gmail.com>
Date: Mon, 25 Apr 2022 09:22:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?B?U2tvcnN0YWQsIErDuHJu?= <jsk@nkom.no>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <OL1P279MB008348E9ECCB13A1DEABCA68A0E59@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
 <84e4af31-2c42-34c7-a918-dfdce959bf82@gmail.com>
 <OL1P279MB0083C96415D5C8DD456F99C9A0F89@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <OL1P279MB0083C96415D5C8DD456F99C9A0F89@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Message-ID-Hash: 624HQQOI2CUXAJ7ZC4MXPKLQ2EVMV7FS
X-Message-ID-Hash: 624HQQOI2CUXAJ7ZC4MXPKLQ2EVMV7FS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 USB - serial problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/624HQQOI2CUXAJ7ZC4MXPKLQ2EVMV7FS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7630730563026432789=="

This is a multi-part message in MIME format.
--===============7630730563026432789==
Content-Type: multipart/alternative;
 boundary="------------eavqVVuXeQe0PUNA2vEUGAGG"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------eavqVVuXeQe0PUNA2vEUGAGG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-25 09:20, Skorstad, J=C3=B8rn wrote:
>
>     Tested now with two different chip types, both worked fine here. Th=
anks for the quick response and solution!
>
I can only take credit for raising the issue.=C2=A0 R&D at Ettus did the=20
fix.=C2=A0 I'm happy that it works for you!


> The latest UHD 4.2 image for the E310 now includes those drivers.=C2=A0=
=20
> Please try it out and let us know.=C2=A0 We did test two different type=
s of=20
> USB serial devices and they worked--
> =C2=A0 the CP2101 and FTDI types.
>

--------------eavqVVuXeQe0PUNA2vEUGAGG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-25 09:20, Skorstad, J=C3=B8=
rn
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB0083C96415D5C8DD456F99C9A0F89@OL1P279MB0083.NORP279.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML-forh=C3=A5ndsformatert Tegn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTML-forhndsformatertTegn
	{mso-style-name:"HTML-forh=C3=A5ndsformatert Tegn";
	mso-style-priority:99;
	mso-style-link:HTML-forh=C3=A5ndsformatert;
	font-family:Consolas;
	mso-fareast-language:EN-US;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <pre>Tested now with two different chip types, both worked fine=
 here. Thanks for the quick response and solution!</pre>
        </blockquote>
      </div>
    </blockquote>
    I can only take credit for raising the issue.=C2=A0 R&amp;D at Ettus =
did
    the fix.=C2=A0 I'm happy that it works for you!<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB0083C96415D5C8DD456F99C9A0F89@OL1P279MB0083.NORP279.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <pre><o:p></o:p></pre>
          <pre><o:p>=C2=A0</o:p></pre>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"mso-fareast-language:NO-BOK">The latest UHD 4.2 imag=
e
            for the E310 now includes those drivers.=C2=A0 Please try it =
out
            and let us know.=C2=A0 We did test two different types of USB
            serial devices and they worked--<br>
            =C2=A0 the CP2101 and FTDI types.<br>
            <br>
            <o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------eavqVVuXeQe0PUNA2vEUGAGG--

--===============7630730563026432789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7630730563026432789==--
