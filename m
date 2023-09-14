Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1E87A03B0
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 14:24:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7D223856F4
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 08:24:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694694252; bh=xWgsr0t5lTwHXHrPXk4WDiRCsWWjC+aUCpENm95p96c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KGqak8Oie7myYeISlGOyjis+T3QRiyS+/VM5GT6EO+c4eL9sGhc7PxiF8z8+NAK4R
	 gpFYNuhLtfygORI6Fc374cCRKnVrySLm4ikLJYE9gquOgvEHZln+JF2owNYe5ITqtg
	 G6KBDWbmBczQgh98r1ZpC4lrg1kj1s0wRwV+9kSB7M9iLU7BCGicdlSJpXyHifyom7
	 kGgFJFmJiE6F3DkxwP/VNOTuXk9WohxO0GJ8Dipt2Y2g2g2obGgG9v6HTFF9FA8BHI
	 i79DvobF0HFbqyTSd3HBVST6yMslpCWzLfoLik08MH0I3kCJheG7UG9sVkpUxNpdI8
	 IZM/3mTCMuM9Q==
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 17C553852C7
	for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 08:22:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="JtCD5C7h";
	dkim-atps=neutral
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2bf8b9c5ca0so13772191fa.0
        for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 05:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1694694133; x=1695298933; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mZUkobUhz5gcWdyiLtnErIYbSAinJ2Y+X4ar0XTYQCQ=;
        b=JtCD5C7hgTwiThAZtTuUwO01vViasaiR8PcM4yg4nPXdqpk3l4+x2DK9SlXeirRwrF
         UKYx0y9Kj7m7QMyJexTGM6Wg18Zsk5yz3trOaVzf3t0aClKHWiRJ1KJ0JE9qC8WZRKxp
         +NcuKWwdFRNFHnCfIc3TBdb0fwRaO8Inuf5wYVhlDCDBoOVWpmJ2Pfyi55bQFgXjPMbk
         UC7aXVnFRWjV8bFufZJwM+7xdJAl8Q/XHqxLglxALqXjkgXA1GcZQr1iarYEO68mkWQF
         6uIiXzshaDgwx/RAJ/1GPfgEjROQKa9DyPkkt+C0iou0HU2tQ88MT29St1mQi2bzR+tU
         oqZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694694133; x=1695298933;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mZUkobUhz5gcWdyiLtnErIYbSAinJ2Y+X4ar0XTYQCQ=;
        b=A2KK8QViFySG6xzlraAxrssbveh7BW1I9lnGC+iwMJ4B1BO90yZQFzRhTwyGeZ0UuC
         SqZQkh/F1E6JFxkgrNgniPUH5oXShNbvKgUFqicE68C8p/kOLlH69kqLtraBLCb2JABJ
         LK5DsqbMX8/qL8Xbxwoe6ZH+7y6nf6OTKRyb56Oxm6ESZH2SHE4BroVp0XF31OIp0BCu
         ndMNSksO9C2sMGoPAPoJ9VYMaH3DovJBj+NNo8yOM3ar4P3AQHgvpMsUpnqB6ZCNDWYL
         CoBJNtXLufHBSv1fs37p8hCQqsjty3wR5tqHcEA89NEBwT5jYo71fbKk5TR1NR06FmbH
         DhxA==
X-Gm-Message-State: AOJu0Yz1H+NQAlD+lIqzLVd3krgNCROl27hjek6+kfZmrEUYEEScYB5b
	m4SnYbo7/26ECnbeW+sjyMKzSUW6Qim43DPWHYPS7w==
X-Google-Smtp-Source: AGHT+IEdwsquKK4vr6kGZRJm5gIQmawayEbmNAyS/arLX/nwx+VB+bd/rtJ98jeMvbffXbjZxTckGA==
X-Received: by 2002:a2e:9817:0:b0:2b9:b693:c906 with SMTP id a23-20020a2e9817000000b002b9b693c906mr4587809ljj.27.1694694133685;
        Thu, 14 Sep 2023 05:22:13 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3876:a400:10fc:1619:bea3:90d1? ([2001:9e8:3876:a400:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id y15-20020a1709060a8f00b0099cb1a2cab0sm942748ejf.28.2023.09.14.05.22.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 05:22:13 -0700 (PDT)
Message-ID: <132663c8-16c6-808b-b456-10b5b1fedff8@ettus.com>
Date: Thu, 14 Sep 2023 14:22:02 +0200
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
Message-ID-Hash: NAFAPQDAV4FPAZJWSU7UYC2MHGTHUQHG
X-Message-ID-Hash: NAFAPQDAV4FPAZJWSU7UYC2MHGTHUQHG
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: How to connect usrpb210 to google cloud
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NAFAPQDAV4FPAZJWSU7UYC2MHGTHUQHG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5774955768998870245=="

This is a multi-part message in MIME format.
--===============5774955768998870245==
Content-Type: multipart/alternative;
 boundary="------------dbKPvOMULsBoWytSxuDX0fj1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------dbKPvOMULsBoWytSxuDX0fj1
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
--------------dbKPvOMULsBoWytSxuDX0fj1
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

--------------dbKPvOMULsBoWytSxuDX0fj1--

--===============5774955768998870245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5774955768998870245==--
