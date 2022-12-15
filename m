Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E25E64E315
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 22:30:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 822FC3842F7
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 16:30:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671139801; bh=dpGiqiESQhdxbvkwQlArGjfICKDmwPOox12R1+xq9/4=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=dZgWmvwBIi0G0vkl4T+MI/kzu/OQelYKsBbxpqwcYE0RbiqwPFhy//qqVdWY3OBxp
	 8cZoLH9JWDMjQNRuL9tvqGvG+vBNH8DNSUELtlnc+GUf62J0CI68ATfb9udsAvAs66
	 FTYd/45bpOFu0zIXNypSg87UiUv2Wdu1d0ZoVCD1Pd0g1weZxfPp5yb0GrX/drEzIu
	 OaR1DOfAMgC773YrnpYKsjka595FMyEmUOpYNYQXdsXv+EjEKfrmJfaXePJvqxsIy6
	 SthNtsopEP3EyYDJ1FxZMLGWmg/digmskOjpE16hvriTMPaSEhG+M43wKGXl7BlIsn
	 q1ld5vu5QHEdw==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 9FBB5383DD8
	for <usrp-users@lists.ettus.com>; Thu, 15 Dec 2022 16:29:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LU7UNf4H";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id r15so342089qvm.6
        for <usrp-users@lists.ettus.com>; Thu, 15 Dec 2022 13:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sg5dVL+hFkQuKx/fjsVkBY3h3iLRBJhyh7wymvkS1JU=;
        b=LU7UNf4HpEeBtBmHDdTaeaBZiQNqghLxhYTYqFT6PPr5MPkOs+8xyWL5yk47a2x7Uz
         Ide0j6s8hihfGKcMHsTQhJ6+LGEgrtOCRmQ2m+uh9UBlJOJtgCvQHdgOQcT3FKt6ABuQ
         Q/CEDEcW00yxiR1tNayylx4mDOe/jFgRGMwsLm02QZydNDrIKfvGY8++FSnKd8/LotvP
         AZmMW5EzoU7yNn2muvwZrU90oj77VUDBTc5gOdfYE+zTGUCtGJU8vesymC9sBKlh5MH2
         56tGw8glLl8wQ+748Tqx6xaQgwD4y2DhUQt583OKsjpD+yRmAxh0GN6ptHBL+P/UaJBs
         yr8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sg5dVL+hFkQuKx/fjsVkBY3h3iLRBJhyh7wymvkS1JU=;
        b=O2oez10+hGYwUIZlhyxHcZtv4/oUUK2ki6cScJTnjpXZFqjI25f8ZXqh6oGF928Lkm
         tLgt15dC1KUrQiJQDl+EOMXwvEKkJRE6y6rYxrmpTQdfXQAhThuVR3hWblTgTZCVJuH7
         CmbnZLy2Ypd1bkVCmwld2o2zo93sz2TLdsO0zpUgq4OGCpNIFnW6sIXiUpydjcuuYoFF
         ioQV8IlyT97J0N91vfkuUmacUo8eHAmcxx5+5Iv6SlOIfx33NxXRggkaHE+zaPI4loYO
         AL7Kvusez2Zy+JQEHVuD30cJ095e9vTCskc+V7LOTpfpG6FJxbmDJNMKLSdIN4H2kyOl
         pekA==
X-Gm-Message-State: ANoB5pnayGcmtV8vV0nWiiJ9BSVgrazWRm+U/oL8DDktx7yePPc7XlLj
	KDTuJE07f0VEvjThIJQMEaGEphRK+pWSwA==
X-Google-Smtp-Source: AA0mqf7hVxyndcRk8pb9WvMDXmizLVDeYEk4XwCavg3EPeLdkb2cBTQvJp7R8n7N3D4pdtEKIhJaVw==
X-Received: by 2002:a05:6214:380e:b0:4c7:6cd5:a65 with SMTP id ns14-20020a056214380e00b004c76cd50a65mr49718865qvb.51.1671139794922;
        Thu, 15 Dec 2022 13:29:54 -0800 (PST)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id n17-20020a05620a223100b006fc40dafaa2sm62071qkh.8.2022.12.15.13.29.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 13:29:54 -0800 (PST)
Message-ID: <dbc6dadf-7bd2-09d2-021e-30dfc070907b@gmail.com>
Date: Thu, 15 Dec 2022 16:29:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
References: <MAXPR01MB3565817912C65BE1ECCCD83AD6E19@MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM>
 <29cb6221-bf51-64ea-fb99-c76fa25df0f9@gmail.com>
 <MAXPR01MB3565D1511A43730C4C1AFE09D6E19@MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MAXPR01MB3565D1511A43730C4C1AFE09D6E19@MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: 2V7QLBVGHJV4CNUE66EVGAW2AJUR2IPH
X-Message-ID-Hash: 2V7QLBVGHJV4CNUE66EVGAW2AJUR2IPH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Daughter board details required
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2V7QLBVGHJV4CNUE66EVGAW2AJUR2IPH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1719687114863672736=="

This is a multi-part message in MIME format.
--===============1719687114863672736==
Content-Type: multipart/alternative;
 boundary="------------axsprRQEaRiGAZqzQYK4m9k2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------axsprRQEaRiGAZqzQYK4m9k2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/12/2022 01:20, Sivanesh Kumar K wrote:
> Hi Marcus,
>
> Thankyou for quick response .=C2=A0 I want to know how to transmit both=
=20
> wifi singal and cellular signal .=C2=A0 do you have any opensource code=
 for=20
> WIFI signal generation .
>
> Regards,
> Sivaneshkumar K
>
There are various packages out there, some of them based on Gnu=20
Radio.=C2=A0=C2=A0=C2=A0 I have no personal experience with them, and
 =C2=A0 a post to the discuss-gnuradio mailing list might be useful.

Nearly everything you might find is intended for developers with some=20
background in DSP design.=C2=A0 There's nothing out there
 =C2=A0 that is intended for end-users, per se.


>
> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* 15 December 2022 11:33
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Daughter board details required
> On 15/12/2022 00:58, Sivanesh Kumar K wrote:
>> Hi All,
>>
>> I want to know what are the daughter board supporting usrp B210.
>>
>> Regards,
>> Sivaneshkumar K
>> Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including=20
>> any attachments, is for the sole use of the intended recipient(s) and=20
>> may contain proprietary confidential or privileged information or=20
>> otherwise be protected by law. Any unauthorized review, use,=20
>> disclosure or distribution is prohibited. If you are not the intended=20
>> recipient, please notify the sender and destroy all copies and the=20
>> original message.
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-use=
rs@lists.ettus.com>
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mail=
to:usrp-users-leave@lists.ettus.com>
> The USRP B2xx series don't use daughterboards.=C2=A0 They're integrated=
=20
> units on a single PCB.=C2=A0=C2=A0=C2=A0 The use the ADI
> =C2=A0 AD936x series integrated RF front end (RFFE) chips.
>
>
> Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including=20
> any attachments, is for the sole use of the intended recipient(s) and=20
> may contain proprietary confidential or privileged information or=20
> otherwise be protected by law. Any unauthorized review, use,=20
> disclosure or distribution is prohibited. If you are not the intended=20
> recipient, please notify the sender and destroy all copies and the=20
> original message.=20

--------------axsprRQEaRiGAZqzQYK4m9k2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/12/2022 01:20, Sivanesh Kumar K
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MAXPR01MB3565D1511A43730C4C1AFE09D6E19@MAXPR01MB3565.INDPRD01=
.PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);"
          class=3D"elementToProof">Hi Marcus,</span></div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);"
          class=3D"elementToProof"><br>
        </span></div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);"
          class=3D"elementToProof">Thankyou for quick response .=C2=A0 I =
want
          to know how to transmit both wifi singal and cellular signal
          .=C2=A0 do you have any opensource code for WIFI signal generat=
ion
          .</span></div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);"
          class=3D"elementToProof"><br>
        </span></div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);"
          class=3D"elementToProof">Regards,</span></div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);"
          class=3D"elementToProof">Sivaneshkumar K<br>
        </span></div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);"><br>
        </span></div>
    </blockquote>
    There are various packages out there, some of them based on Gnu
    Radio.=C2=A0=C2=A0=C2=A0 I have no personal experience with them, and=
<br>
    =C2=A0 a post to the discuss-gnuradio mailing list might be useful.<b=
r>
    <br>
    Nearly everything you might find is intended for developers with
    some background in DSP design.=C2=A0 There's nothing out there<br>
    =C2=A0 that is intended for end-users, per se.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:MAXPR01MB3565D1511A43730C4C1AFE09D6E19@MAXPR01MB3565.INDPRD01=
.PROD.OUTLOOK.COM">
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);">
        </span></div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);"><br>
        </span></div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> 15 December 2022 11:33<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: Daughter board details
          required</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"x_moz-cite-prefix">On 15/12/2022 00:58, Sivanesh
          Kumar K wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
          <div class=3D"x_elementToProof"><span
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0);
              background-color:rgb(255,255,255)">Hi All,</span></div>
          <div class=3D"x_elementToProof"><span
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0);
              background-color:rgb(255,255,255)"><br>
            </span></div>
          <div class=3D"x_elementToProof"><span
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0);
              background-color:rgb(255,255,255)">I want to know what are
              the daughter board supporting usrp B210.</span></div>
          <div class=3D"x_elementToProof"><span
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0);
              background-color:rgb(255,255,255)"><br>
            </span></div>
          <div class=3D"x_elementToProof"><span
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0);
              background-color:rgb(255,255,255)">Regards,</span></div>
          <div class=3D"x_elementToProof"><span
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0);
              background-color:rgb(255,255,255)">Sivaneshkumar K<br>
            </span></div>
          Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message,
          including any attachments, is for the sole use of the intended
          recipient(s) and may contain proprietary confidential or
          privileged information or otherwise be protected by law. Any
          unauthorized review, use, disclosure or distribution is
          prohibited. If you are not the intended recipient, please
          notify the sender and destroy all copies and the original
          message.
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
        The USRP B2xx series don't use daughterboards.=C2=A0 They're
        integrated units on a single PCB.=C2=A0=C2=A0=C2=A0 The use the A=
DI<br>
        =C2=A0 AD936x series integrated RF front end (RFFE) chips.<br>
        <br>
        <br>
      </div>
      Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message,
      including any attachments, is for the sole use of the intended
      recipient(s) and may contain proprietary confidential or
      privileged information or otherwise be protected by law. Any
      unauthorized review, use, disclosure or distribution is
      prohibited. If you are not the intended recipient, please notify
      the sender and destroy all copies and the original message.
    </blockquote>
    =C2=A0=C2=A0=C2=A0 <br>
  </body>
</html>

--------------axsprRQEaRiGAZqzQYK4m9k2--

--===============1719687114863672736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1719687114863672736==--
