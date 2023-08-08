Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AD97746BA
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 21:00:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8295C384A83
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 15:00:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691521223; bh=q88Tj5xBzO6B0JRsQ25gIKqDdxDDpedXibSjf+6iPOY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=y21ahlqRtG1RihpoB0Z1uskeSUyGivtGojssDjrrfUOi84wyTatTsdIX6wEETzA5S
	 tsnDmB5VOCkyjAcoIuAbxAAtGddzoMaomqKgrOCJKM9lOsUzMxsLet+8S20F0/AfvB
	 bCnNiDQVvstYi1fM/9DM+9k6Tj42y7ZUC9W+7XOoDfivhXJSGFIyt0lqkaUNuQYJnM
	 w4x2zDwuiqg3ywfCgIYS5pnyvQVGsLkQiqdkrUQDgPA9yq7VAcZ4ZYmC+sHYLi2Cyf
	 +ZZFpAsSdyYAnCqRrgjT8Nkhl5+PEnirLnmf79TnrqdTVk/YuVjc1TjbTcDw2tIfuk
	 lsUbfyTEIy6Ag==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id D43E0384054
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 14:59:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dIbsuyIT";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-63d0d38ff97so970766d6.1
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 11:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691521188; x=1692125988;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0qVutBxAtEPlus+5nVFkVsBb6Wwtziqi9tgMT9ZKb64=;
        b=dIbsuyITUxKmt4KB3RWYXCtELhsgR57chXXv58UIMyjrLGggalEcMsndngBY6Ok8b6
         5J9cWZuzz+CuItTrm/ovSukQk0ocgjaraTHzc6iuBEaoRWRLdrs2AmoWBcSMb1piPGWE
         SP/7CW90XAM2bywLEzm7P4YF0ZRYIhSHCUhwB49FQolkqA3OJDTVk2Whz4otxceGJPFy
         IaovfFkCdlfAsYWlpjmWylTRfIlQnC9OcHbPxx++4+QDl25B+AQzgz4lKvgSB4XewpSf
         +Z6OEtHtr2reGXVSNYRNi7ASFvaMEJQDTvcizpxOEdHNCGF3nT/ZM4VWZVdKRibKS7Z6
         JWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691521188; x=1692125988;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0qVutBxAtEPlus+5nVFkVsBb6Wwtziqi9tgMT9ZKb64=;
        b=SP7ExxXuQisxEk8UVoO6/PC3TRzbMlFUsWbmwbDbXOtmbopN+Mb5eeWykgOA9V+GwT
         nqGbdFSMF44bbwzPV0rD8G3Yw17Ls33ZOZ7LmqvmOGCUxJtl2vTVEmMr3BzedgpzIcdB
         JuOVw5i0252XdUy6iufhOjyWJTPe5PVN2ykVPfgLDKHf3Wl/pz9aNpK/IvNQGIpqMpLj
         KCHxFffqu21G7mznfhvFqKYPb86Gbws8pc/7MdVmK0ghNZSz2YWVCbmnWMxT7OKXsBcw
         v67zemCZt1bpavdH8mzVjf9Lt8WymboJvhQVZ+42klNMAU7vCX6JxvNg8sAQQ3bju3hQ
         BcfA==
X-Gm-Message-State: AOJu0YwITJhwW5seGFui+1Sqsq6BwQ5abr6qjnrwqgVOMlrzuc3xZF/R
	/XRlL2qmhvck0o+PZhhV/+/Rj5JKKws=
X-Google-Smtp-Source: AGHT+IGIZ+JEsqY5iOiWjbMq/jsv1uaXH+VxsyIGcyIME48kscEs3YDfAplBIvglsfOLX/BbkkxZFA==
X-Received: by 2002:a05:6214:2463:b0:63c:b668:9016 with SMTP id im3-20020a056214246300b0063cb6689016mr16383458qvb.27.1691521188176;
        Tue, 08 Aug 2023 11:59:48 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id p28-20020a05620a113c00b0076cb1eff83csm3492081qkk.5.2023.08.08.11.59.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 11:59:47 -0700 (PDT)
Message-ID: <d380b63c-f2b5-bc2f-f5e9-38edd7f6398f@gmail.com>
Date: Tue, 8 Aug 2023 14:59:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Michelle Salehi <herrmlm@hotmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <LV3P220MB1054372917627DB02D39F676AE0DA@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
 <5662b3fd-6aee-4484-0f8c-5817914152a5@gmail.com>
 <LV3P220MB10541A236C81327E29B9449CAE0DA@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <LV3P220MB10541A236C81327E29B9449CAE0DA@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
Message-ID-Hash: JCGW3KFP4UWYGEF7C7LRLAPRWYAEEQWU
X-Message-ID-Hash: JCGW3KFP4UWYGEF7C7LRLAPRWYAEEQWU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Advice on transmitting trigger signal before pulse frequency on ettus x310 and GNU radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JCGW3KFP4UWYGEF7C7LRLAPRWYAEEQWU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7790814523778662678=="

This is a multi-part message in MIME format.
--===============7790814523778662678==
Content-Type: multipart/alternative;
 boundary="------------e5RaA1tkTGWKA0KrDz33Cy4j"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------e5RaA1tkTGWKA0KrDz33Cy4j
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/08/2023 14:52, Michelle Salehi wrote:
> Thank you, I saw that.=C2=A0 In the past I have been able to customize =
my=20
> codes with python.=C2=A0 =C2=A0Would I be able to program the pins with=
 the=20
> Python API?
>
> Thank you!
> Michelle
> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, August 8, 2023 1:44 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Advice on transmitting trigger signal=20
> before pulse frequency on ettus x310 and GNU radio
> On 08/08/2023 14:42, Michelle Salehi wrote:
>> Hi, I have a pulse frequency setup in GNU radio to transmit through=20
>> an ettus x310.=C2=A0 I need to add a TTL signal right before the pulse=
s=20
>> and have it turned off right after the pulse.=C2=A0 What is the best w=
ay=20
>> to send this type of trigger signal on an ettus x310?
>>
>> Thanks for your help,
>> Michelle
>>
I believe that gr-uhd exposes the entirety of the GPIO interface, and=20
the UHD straight-Python interface does also.


--------------e5RaA1tkTGWKA0KrDz33Cy4j
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/08/2023 14:52, Michelle Salehi
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:LV3P220MB10541A236C81327E29B9449CAE0DA@LV3P220MB1054.NAMP220.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Thank you, I saw that.=C2=A0 In the past I have been able to
        customize my codes with python.=C2=A0 =C2=A0Would I be able to pr=
ogram the
        pins with the Python API?=C2=A0=C2=A0</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Thank you!</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Michelle</div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Tuesday, August 8, 2023 1:44 PM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: Advice on transmitting
          trigger signal before pulse frequency on ettus x310 and GNU
          radio</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"x_moz-cite-prefix">On 08/08/2023 14:42, Michelle
          Salehi wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Hi, I have a pulse frequency setup in GNU radio to transmit
            through an ettus x310.=C2=A0 I need to add a TTL signal right
            before the pulses and have it turned off right after the
            pulse.=C2=A0 What is the best way to send this type of trigge=
r
            signal on an ettus x310?</div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Thanks for your help,</div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Michelle</div>
          <br>
        </blockquote>
      </div>
    </blockquote>
    I believe that gr-uhd exposes the entirety of the GPIO interface,
    and the UHD straight-Python interface does also.<br>
    <br>
    <br>
  </body>
</html>

--------------e5RaA1tkTGWKA0KrDz33Cy4j--

--===============7790814523778662678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7790814523778662678==--
