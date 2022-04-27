Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C93B35122B5
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 21:27:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA9E338454C
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 15:27:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651087677; bh=xZWtE0eCPLQO4HluuMXnDLVF/+jPdV07BZXbReQAVbg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uCBQhU26+imnD1SgFZdMC5tL8nmOWeDdN6AVqde40VL1TKe8Z8Uo8no3FErnceZBx
	 x858+Id7J8E440Eqtu8wwEAROxdok9Wlxi57gpErtmcOLdg55lkBwpCM2SfvwBbSLF
	 6aT4Xh1JCU5nftaob9oAoK3otMG00TObleaodweBY2NhBNDSAYXEgI7ymiAqWQLHYw
	 FVjUfoOk1bvYF20OQ0iU8BLhyx/CiBvzu+oMlgMKdijUsVxn6VjPXZ9cLVwRh/JX9a
	 RHeaQ/O5dV47xv49WNBKdvyGU2/k8yMhBe4UsvJgvFTMsn3RHpPT5H2edS1m1SwD/E
	 TWEyUAFm0WnLA==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id E33BA384713
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 15:26:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="P0W7BWWV";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id t16so1900375qtr.9
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 12:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=VJLo6SW/WRsLr9eWI9AoO3QvOjG44Luo9sAkMBpqWXc=;
        b=P0W7BWWVw2IGjee4P6yT3aMFtQmZW3J/3slVenTv/jTrb5jxNZekmyDVjNAhSKJnT+
         ZvJnwuBvHFLhDM7PX/S8zFzt/z6pDi6uLpCzy8XNKsXhwm7BYR4rax0+cG6/FKLOmQWH
         vCyZT7HFexiTsihxl7x0FM8tfT0dZ8tG9ja4Nchq5lB9xebYdVq8TZ5MEZkVKHcseKYC
         eXLKYsP+yNntrQN2EhyP8jTcvWQn44wVugmA/LbAfKr0YxU0z5tW4zDhyynC+ci1H74Z
         6ZaEmmoDLUt3EfnfxKHcLD3VS8nY7RwMCd05dhjm4xJeSCXY4HzO3vbsnOcynkhSm2bA
         Bw6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=VJLo6SW/WRsLr9eWI9AoO3QvOjG44Luo9sAkMBpqWXc=;
        b=VYgqu7C4ZLEh4pWnbiE+1M+3eXwao9Ry+Pphb2lF67YHpZKOtdcvUhgbSGvGnZwR6A
         MDvwFyyJpnnnRGdvnw/Er8jRVEYIbscJMvLKfbLF2cwwy1JxmY91cwKtjozjjfAkPeFm
         k6i0PCu4udBKdrkwTMadVOGq0V27jaRUHrMIRIxGobbuYL1w3akEl+4OI2hV7sr9IwIE
         55JCVjHqHY7fsKglOOZV1ZXm+9n0zRBlc0H8OvZnAARqLxPPeQM4R+fde3UrYCYo7wDd
         SqR88dngL0NkT0EzmbVCsQ3euwlWObaYWqWD9LMNie7kPAl9gVYLN/C3tIWH2GQNIXQt
         34BQ==
X-Gm-Message-State: AOAM530vaH0iQsW78ZyxidlPx8KxB8/C6JwOnmBFqVcUgHRfRxPuLUdr
	p3HZGNhyjDmKyW22gvHESAgZ/oPsDag=
X-Google-Smtp-Source: ABdhPJwuiybnSTnNVAxhvDQbWlQ4cn6jjNvXZtyoXbH1HM4s6u92O/KU6VbOilui7zHKtKZvVmLeiw==
X-Received: by 2002:ac8:5c07:0:b0:2f1:fe44:e72b with SMTP id i7-20020ac85c07000000b002f1fe44e72bmr20213394qti.319.1651087602239;
        Wed, 27 Apr 2022 12:26:42 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id j64-20020a375543000000b0069f16d1fb73sm8547699qkb.119.2022.04.27.12.26.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 12:26:41 -0700 (PDT)
Message-ID: <196b97b5-4555-0527-f983-3cb2074f71df@gmail.com>
Date: Wed, 27 Apr 2022 15:26:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <a10bc1673342466f9c2a166280d57643@lanl.gov>
 <6b538660-e051-c354-a9c3-a1fbde33e591@gmail.com>
 <d1678769adce4396b232ed2653d02014@lanl.gov>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <d1678769adce4396b232ed2653d02014@lanl.gov>
Message-ID-Hash: QGWKLCZHOE2XHINVVGCITCHA6ULXZNSD
X-Message-ID-Hash: QGWKLCZHOE2XHINVVGCITCHA6ULXZNSD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: sychronous receiving from multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QGWKLCZHOE2XHINVVGCITCHA6ULXZNSD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4228870517666907538=="

This is a multi-part message in MIME format.
--===============4228870517666907538==
Content-Type: multipart/alternative;
 boundary="------------QKU9GvfqiHadMPK00qzJtIao"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QKU9GvfqiHadMPK00qzJtIao
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-27 15:13, Caffrey, Michael Paul via USRP-users wrote:
>
> That is a good question and I should have included that I can run the=20
> program over and over and the 1^st attempt always succeeds and=20
> subsequent fail. I do not reboot or reset the e320=E2=80=99s in any way=
=20
> outside of the python example.
>
>
OK, so how is "first time" defined?=C2=A0=C2=A0 First time after rebootin=
g your=20
computer?=C2=A0 First time after rebooting the E320?=C2=A0=C2=A0 You run =
the program=20
once and it never succeeds again, no
 =C2=A0 matter what you do?=C2=A0=C2=A0 I want to understand what the bou=
ndary=20
condition is that causes it to start working again...



--------------QKU9GvfqiHadMPK00qzJtIao
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-27 15:13, Caffrey, Michael
      Paul via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:d1678769adce4396b232ed2653d02014@lanl.gov">
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
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
        <p class=3D"MsoNormal">That is a good question and I should have
          included that I can run the program over and over and the 1<sup=
>st</sup>
          attempt always succeeds and subsequent fail. I do not reboot
          or reset the e320=E2=80=99s in any way outside of the python ex=
ample.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <br>
      </div>
    </blockquote>
    OK, so how is "first time" defined?=C2=A0=C2=A0 First time after rebo=
oting
    your computer?=C2=A0 First time after rebooting the E320?=C2=A0=C2=A0=
 You run the
    program once and it never succeeds again, no<br>
    =C2=A0 matter what you do?=C2=A0=C2=A0 I want to understand what the =
boundary
    condition is that causes it to start working again...<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------QKU9GvfqiHadMPK00qzJtIao--

--===============4228870517666907538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4228870517666907538==--
