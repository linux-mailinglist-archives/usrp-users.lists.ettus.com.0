Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6417A03AE
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 14:23:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9918838563E
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 08:23:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694694195; bh=bcjEO6FuY+u31Yc7K/X0yuKSdJn65wZNgfbgaVafMm8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Dvx7wh43CAp5/su6YlaapSFUmwuHkMTiUlxaGzqwV8mG+k67V3jdINjtwlCL/5p/k
	 SQf12eYqdEulfeub8lY1qBA5FXjL60GaS2l573RYB7/GfnXW3Cvvn8uGgo+crdR31G
	 /5RwvjWkAoVya8+mV1tDjouoy1iwciODXMbNHBBcGxzcqGYxQ5xAASIQEa7FYOSaOx
	 5A0XF9GJa0wSin26d4HohVdlXWmy3Ryz12y3cA2tKq7fFXoqHAJ6IfwZ7diMX7U8Uv
	 AwySKxkXFA+Gp2jMs3twnqvusljswna7C+fvMxWNUrgOHElsWOcJFAPuCbEYFf5mpF
	 tLnZgwCgCxAPA==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 605C73852BC
	for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 08:22:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Llm/7g+F";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-9ad8bba8125so125329566b.3
        for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 05:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1694694133; x=1695298933; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BVPJP7oCcs1sgc26Ob2pR8W5Soj5NN5KGAZoZ7RV+nI=;
        b=Llm/7g+F/LyU7GXSGPsp3ipo+JeiOoaEXqvA4PInrFvrIgRPtAy0pGzlZzD5w2B0d8
         RJezMfzOS3b1yJZiBwJJW63t6gUregXcM3q3qpR1Zjlr/BN7Ok35x3H7V2ygh9vcK1DU
         ppBsjw/pZ+Bypk4boc5U0LQ92nKp1E9Tlv8tdimCcooI45tcCnPZEsSeOkG2R1r5LbzR
         IuDEPtF0ISnBBOIuuLJM6mgrX380EUgOnS2npyqQl35O3woqnrXAn+WoF5RGjqSQCajJ
         RGEfBfI23eGmAONbon+dqTp7zt6W++oqxYlH3O36O80ZcVff4itjgiMyzJtnaRTuskBI
         N+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694694133; x=1695298933;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BVPJP7oCcs1sgc26Ob2pR8W5Soj5NN5KGAZoZ7RV+nI=;
        b=nLPZcX93J1qAXERen0JGTYvaIADnIWuNZBYgJ0vaPbRZ/mIQnZXL8iCQspFTJ1XhVI
         b6U8fqzO8aAYQdz9KyszBmZ2GEynWLpqsFbvFKW6x6PkzJ8HiRPAYM2MPfnRDLO5G0l9
         FUmXi5fcyU8GnUc2SUhCLkgd7ie/2LjzvEjBDFBwq8STAkII8wfMY4bOjZtvsMxp1aYz
         2uUpaPtTZJ0xg6lAM7YDGoY9b6jLZUOga50zjMXdY3WbCRv3mPo6W6aPQ/LgCju/WnOS
         Mmr/YvvmZMBflmjCEn0ZyCb2ABKJbBVr5u9JPZ514Qz6lYzRTzj8asyhnsRFBRK9WF0G
         okyg==
X-Gm-Message-State: AOJu0YxAA0uI90byA9ZpGmbdq0lt5HdOHvynJ77yer/reeJ6M784HJLx
	KCMyNHAY7v2pYQiducvESiDKetLH
X-Google-Smtp-Source: AGHT+IHPUpNDyRt62gk2SitCA2ACfjpzsIlal0u7YFhBszOU+KWNbUcNvnU82WpYPxM9Wl0qnTrj8g==
X-Received: by 2002:a17:907:7816:b0:9a6:572f:597f with SMTP id la22-20020a170907781600b009a6572f597fmr4705170ejc.38.1694694133065;
        Thu, 14 Sep 2023 05:22:13 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3876:a400:10fc:1619:bea3:90d1? ([2001:9e8:3876:a400:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id l13-20020a170906078d00b009a193a5acffsm913750ejc.121.2023.09.14.05.20.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 05:20:41 -0700 (PDT)
Message-ID: <9c9fb59d-9975-fe81-91b9-6f1aec34f7fc@ettus.com>
Date: Thu, 14 Sep 2023 14:20:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BMXPR01MB3558BDD10C2CA34EE1843FAED6F7A@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
 <d2078af4-c806-ade1-ab94-4951616ff704@ettus.com>
 <BMXPR01MB3558895614CC5B0EFBD54F48D6F7A@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <BMXPR01MB3558895614CC5B0EFBD54F48D6F7A@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: 3TDXFG3KV74MWTWOOENKOKMCOXHXPCBE
X-Message-ID-Hash: 3TDXFG3KV74MWTWOOENKOKMCOXHXPCBE
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: How to connect usrpb210 to google cloud
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3TDXFG3KV74MWTWOOENKOKMCOXHXPCBE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4953946704593434796=="

This is a multi-part message in MIME format.
--===============4953946704593434796==
Content-Type: multipart/alternative;
 boundary="------------40fe3KpdzUNN0dhmSk62saez"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------40fe3KpdzUNN0dhmSk62saez
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

It will not connect to the cloud at all. Simple as that. Your gNB needs t=
o run locally, as=20
it probably contains the PHY, which needs to talk to USRP directly. The U=
SRP doesn't "get=20
an IP address". Nothing like that exists for these devices =E2=80=93 they=
 are but sampling=20
devices, not remote radio units. Your PC, together with the USRP, forms t=
he radio unit.


Best,

Marcus


On 14.09.23 14:04, Sivanesh Kumar K wrote:
> Hi marcus,
>
> I am trying to test 5g by using usrpb210 in gtp platform. so, i deploye=
d core and gnb in=20
> cloud .
>
> for example i am opening cloud in local host via vpn and connecting usr=
p b210 in local host.
>
>
>
> how usrp will connect to cloud platform . i think its possible to commu=
nicate each other=20
> via ip address
>
>
> how will get usrpb210 ip address . if possible, give the command .
>
> -----------------------------------------------------------------------=
-------------------
> *From:* Marcus M=C3=BCller <marcus.mueller@ettus.com>
> *Sent:* 14 September 2023 15:51
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] [USRP-users] Re: How to connect usrpb210 to googl=
e cloud
> /CAUTION EXTERNAL MAIL WARNING://This message has originated from an ex=
ternal source.=20
> Use proper judgment and caution when opening attachments, clicking link=
s, or responding=20
> to this email and report this mail (using the applicable "Report Mail" =
buttons) if you=20
> believe it includes malicious content or is a phishing attempt./
> /
>
> /
>
> Hi Sivanesh,
>
>
> this is a bit confusing: Google Cloud runs on Google's datacenters. You=
r USRP is=20
> connected to your PC, not to google's datacenter. So, long story short:=
 you need to do=20
> initial signal processing on your PC, then can transfer signal, or data=
, very likely at=20
> a starkly reduced data rate, to the cloud, for further processing, if t=
hat's what you=20
> want. I'm really not sure what you want, though:
>
>
> On 14.09.23 11:48, Sivanesh Kumar K wrote:
>> After connecting usrp in local mechicne which as google cloud , usrp i=
s not detecting
>
> I'm sorry, English isn't my first language (I guess it isn't yours, eit=
her!), and I=20
> really don't understand what you're telling us here. Could you please e=
laborate what=20
> **exactly** you're trying to do, and on which machine?
>
>
>
> Best regards,
> Marcus
>
> Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including a=
ny attachments,=20
> is for the sole use of the intended recipient(s) and may contain propri=
etary=20
> confidential or privileged information or otherwise be protected by law=
. Any=20
> unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the=20
> intended recipient, please notify the sender and destroy all copies and=
 the original=20
> message.=20
--------------40fe3KpdzUNN0dhmSk62saez
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>It will not connect to the cloud at all. Simple as that. Your gNB
      needs to run locally, as it probably contains the PHY, which needs
      to talk to USRP directly. The USRP doesn't "get an IP address".
      Nothing like that exists for these devices =E2=80=93 they are but s=
ampling
      devices, not remote radio units. Your PC, together with the USRP,
      forms the radio unit.<br>
    </p>
    <p><br>
    </p>
    <p>Best,</p>
    <p>Marcus</p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 14.09.23 14:04, Sivanesh Kumar K
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BMXPR01MB3558895614CC5B0EFBD54F48D6F7A@BMXPR01MB3558.INDPRD01=
.PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hi marcus,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I am trying to test 5g by using usrpb210 in gtp platform. so, i
        deployed core and gnb in cloud .</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        for example i am opening cloud in local host via vpn and
        connecting usrp b210 in local host.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        how usrp will connect to cloud platform . i think its possible
        to communicate each other via ip address<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        how will get usrpb210 ip address . if possible, give the command
        .<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          M=C3=BCller <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:m=
arcus.mueller@ettus.com">&lt;marcus.mueller@ettus.com&gt;</a><br>
          <b>Sent:</b> 14 September 2023 15:51<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [EXTERNAL] [USRP-users] Re: How to connect
          usrpb210 to google cloud</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div style=3D"background-color:#FFEB9C; margin:1"><font size=3D"4=
"
            face=3D"Calibri"><font size=3D"3" color=3D"#000000"><i>CAUTIO=
N
                EXTERNAL MAIL WARNING:</i></font><font size=3D"3"
              color=3D"#FF0000"><i> This message has originated from an
                external source. Use proper judgment and caution when
                opening attachments, clicking links, or responding to
                this email and report this mail (using the applicable
                "Report Mail" buttons) if you believe it includes
                malicious content or is a phishing attempt.</i></font></f=
ont></div>
        <i><br>
          <br>
        </i>
        <div>
          <p>Hi Sivanesh,</p>
          <p><br>
          </p>
          <p>this is a bit confusing: Google Cloud runs on Google's
            datacenters. Your USRP is connected to your PC, not to
            google's datacenter. So, long story short: you need to do
            initial signal processing on your PC, then can transfer
            signal, or data, very likely at a starkly reduced data rate,
            to the cloud, for further processing, if that's what you
            want. I'm really not sure what you want, though:</p>
          <p><br>
          </p>
          <div class=3D"x_moz-cite-prefix">On 14.09.23 11:48, Sivanesh
            Kumar K wrote:<br>
          </div>
          <blockquote type=3D"cite">
            <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
            <div class=3D"x_elementToProof"
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
            </div>
          </blockquote>
          <blockquote type=3D"cite">
            <div class=3D"x_elementToProof"
              style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              After connecting usrp in local mechicne which as google
              cloud , usrp is not detecting
              <br>
            </div>
          </blockquote>
          <p>I'm sorry, English isn't my first language (I guess it
            isn't yours, either!), and I really don't understand what
            you're telling us here. Could you please elaborate what
            **exactly** you're trying to do, and on which machine?</p>
          <p><br>
          </p>
          <p><br>
          </p>
          <p>Best regards,<br>
            Marcus<br>
          </p>
        </div>
      </div>
      Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message,
      including any attachments, is for the sole use of the intended
      recipient(s) and may contain proprietary confidential or
      privileged information or otherwise be protected by law. Any
      unauthorized review, use, disclosure or distribution is
      prohibited. If you are not the intended recipient, please notify
      the sender and destroy all copies and the original message.
    </blockquote>
  </body>
</html>

--------------40fe3KpdzUNN0dhmSk62saez--

--===============4953946704593434796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4953946704593434796==--
