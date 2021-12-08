Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E86BC46D7AB
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 17:03:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62831384765
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 11:03:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oYwDXu1H";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 3EADD3846D2
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 11:02:28 -0500 (EST)
Received: by mail-qt1-f174.google.com with SMTP id p19so2554313qtw.12
        for <usrp-users@lists.ettus.com>; Wed, 08 Dec 2021 08:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=9zlm7AYpXVWCzWGJMNHUSwDUx9W26WWQiBad7HSkMYg=;
        b=oYwDXu1HrM3HuacluJOttX7sIiSZzn4Aq+lBDdhRUnKfkuY9I3brhau7toiNZtqgpK
         9CFwsflXSUbxhTJB9TXNgjnt4wUWeKq50eophxty3jkG+eiqadUdWsctuYM24VjmUA8q
         CJRhRBQx2KDo/Ru457E5/VGmApVdJwH5G4dGs93i0Kd+ZKzrCpyxPdzOAgNJ3K2mqeM/
         70v0hQqnDAldv8jFTScQ3Em5XBWWrnJcAcPEzJroRn7kSV+vi3Gmiz+QtuX2DhlY0wev
         cEW2JkFvhmRVwliDGJTpJHPkF9zj6rFoXw7DQpQtkoyTxUBLLUuOCmb5sIPd73nrRNq1
         XIBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=9zlm7AYpXVWCzWGJMNHUSwDUx9W26WWQiBad7HSkMYg=;
        b=pQpMN/q63JWGcTbEICUMFtJ7+kRAm0BKSGdMMDJbOqBPWkqLwDXyt2FmvX43zyQhJ0
         xLUVLgyd/rj2ga4U8sB/bODt2E2b1Xiq9jDqvw9Mg7hnqyhTWtMXHD50uDNbWCKY5sw0
         a5O5nN4t2D5yfFUTm6c5n10V2zmuPqoNasDkkQ5vMrTNMJixrgwoyQKLnNRDkVzXq1DU
         mIXf9gYktX7cxlaSnHnciqfNJByZuRrRvMgputndxRdQLJxYH8xxyPkUZVc0WuCsKHJF
         RO0UQLQJY3yQVcpVbalgr0MEv43TawR4nGRj40Ah19jfKsJTtg1v2QFkLlqGA3YnFijR
         dWzw==
X-Gm-Message-State: AOAM530VhbNS5JKm6Mt28Df6CNZ3wnQ1kJoF5FeQMSzlpcu5fk6Rb2x9
	YMojoUGHeXs9GzedXlCD+s8=
X-Google-Smtp-Source: ABdhPJyUZaD2RD/1iBhb9gkAZlX8B+UQK7kIDpQW57UiPOdaWRs4nG68A7SO5UEBoz4Vs2OiHUaWCQ==
X-Received: by 2002:ac8:7d47:: with SMTP id h7mr9221298qtb.486.1638979348514;
        Wed, 08 Dec 2021 08:02:28 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id a17sm1610167qkp.108.2021.12.08.08.02.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 08:02:27 -0800 (PST)
Message-ID: <a2256403-9562-27c3-f50e-bd221a684014@gmail.com>
Date: Wed, 8 Dec 2021 11:02:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: zeyuan.li@zengyi-tech.com, 'Michael Dickens' <michael.dickens@ettus.com>
References: <00f301d7c978$ef03a150$cd0ae3f0$@zengyi-tech.com>
 <e2940e0e-515d-a2ac-96a1-5d97c503fa6a@gmail.com>
 <018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com>
 <cf1cae96-1611-bcc4-9bd3-b62e6d809ab6@gmail.com>
 <01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com>
 <a607d825-1dba-d69b-4520-be2a17e4a2a5@gmail.com>
 <007601d7cae0$bd7649d0$3862dd70$@zengyi-tech.com>
 <ebb155d7-5462-260b-016f-3aa0a469dd52@gmail.com>
 <00c401d7cb01$d9ee5500$8dcaff00$@zengyi-tech.com>
 <4f7665d5-76b9-d6ae-c16d-e80c49fee5e7@gmail.com>
 <CAGNhwTMZyxqyA-FJC7Xb-g--QR4kWSy7Yjy-dmYxe0nuBN9_oQ@mail.gmail.com>
 <00bb01d7ea5f$f907a720$eb16f560$@zengyi-tech.com>
 <815c8938-9ece-3cf3-ff13-11834c9d51f7@gmail.com>
 <01a301d7ec02$0612e3f0$1238abd0$@zengyi-tech.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <01a301d7ec02$0612e3f0$1238abd0$@zengyi-tech.com>
Message-ID-Hash: 54P6OND2VVDJYCRP7XUR57YGKTJOFJI5
X-Message-ID-Hash: 54P6OND2VVDJYCRP7XUR57YGKTJOFJI5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: 'USRP list' <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogUmU6IOetlOWkjTogUmU6IOetlOWkjTogUmU6IOetlOWkjTog562U5aSNOiBSZTog562U5aSNOiBSZTogSG93IHRvIHVzZSBFeHRlcm5hbCBMTyBvbiBOMzEwIGRldmljZT8=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/54P6OND2VVDJYCRP7XUR57YGKTJOFJI5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6474084416087436202=="

This is a multi-part message in MIME format.
--===============6474084416087436202==
Content-Type: multipart/alternative;
 boundary="------------09VfGVI7JM1LHm3qRbZWlBh5"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------09VfGVI7JM1LHm3qRbZWlBh5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-08 02:05, zeyuan.li@zengyi-tech.com wrote:
>
> I do not set TX or RX.This is my python code.Please give me some=20
> suggestions.
>
> Thinks.
>
>
Ah, you're using Gnu Radio.=C2=A0 I'll have to think about how to meet th=
e=20
constraints of external-LO use when using Gnu Radio.

Has anyone else done this?


--------------09VfGVI7JM1LHm3qRbZWlBh5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-08 02:05,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zeyuan.li@zeng=
yi-tech.com">zeyuan.li@zengyi-tech.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:01a301d7ec02$0612e3f0$1238abd0$@zengyi-tech.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}span.EmailStyle18
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US">I do
            not set TX or RX.This is my python code.Please give me some
            suggestions.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US">Thinks.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
          <br>
        </div>
      </div>
    </blockquote>
    Ah, you're using Gnu Radio.=C2=A0 I'll have to think about how to mee=
t
    the constraints of external-LO use when using Gnu Radio.<br>
    <br>
    Has anyone else done this?<br>
    <br>
    <br>
  </body>
</html>
--------------09VfGVI7JM1LHm3qRbZWlBh5--

--===============6474084416087436202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6474084416087436202==--
