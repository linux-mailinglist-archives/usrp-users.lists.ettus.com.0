Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A1A93B378
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2024 17:16:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16FF2385ACA
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2024 11:16:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721834198; bh=SJrTOaWZQbJGVs9Wrz8dFXbX7kErOGyC3hhhLpFBfOw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=V7Bq1R4/gNMB4/l03ZSa9GlFpt5HokcSm+NkP81JtvaxUL/vBD7+KGjFUbiUvZORK
	 lD+/X2gcgJ4R9r4B5K4ik06MCQa6KpepFSm4+LeA7E5CeByqgaGNLzw6hrEp7vh4v7
	 kN5Hbkh+npOSDn93JMPYbRahGS/6NWOXCD3M6marqrtiBjQzSQVjdSeWEhQfD2bSlV
	 qQybuCjjO1sYaNNCd6KHKP4uOLB28n//snD/uzCiZmtPOockRlna0ycO0yq32WSIYT
	 Sj+dZq/PN8vaBU7s5pfeKoT8xrZYVc87ZyV6UuZaZlJMqzQ5D/pKtXtFvbZfV+EBev
	 5z/Uv89P9vpbw==
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by mm2.emwd.com (Postfix) with ESMTPS id BCB9B38596B
	for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2024 11:16:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="zghNrlM0";
	dkim-atps=neutral
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-427b4c621b9so47232755e9.1
        for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2024 08:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721834174; x=1722438974; darn=lists.ettus.com;
        h=in-reply-to:content-language:references:to:from:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4f+1AtslxwjTpbEAR1QQjwcSiXEDv6bMD7erBpHkbOI=;
        b=zghNrlM0kNexWprKBlXnT5pASdBSNIhneqHIOgg/WXPLBRHXbS1VTr0M9NGYZS3lYJ
         GZBdcD2Vp7rIvUFwKaBA44n0Ktvlhx69JzN1j0JvvR5uUspZh0lx4npJqWaNigX9YMmU
         byXJW17TBTiNkBOuN3p5xLa/GD6lUcPLLkB+aoaPfFCB1gg+R/LbcX031Z3V0rwZe+2S
         OwlTMV77fn0SL5jtaGHRuPvqtDN75dOMdrOP4x5wQ6oFg0GCLkD1SCew4K2reYn748Kv
         GzmnbZdXzes6tUscUHZSkVWG3gv7Omg+WZyEs6kkvVooq+DApbT4NmkcWs9xGYfXfQiH
         eFQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721834174; x=1722438974;
        h=in-reply-to:content-language:references:to:from:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4f+1AtslxwjTpbEAR1QQjwcSiXEDv6bMD7erBpHkbOI=;
        b=ljkHOXBnkIDK38kwu620RwmlpBeDoqVD+Hp+oGZdVNYfAEYvoNPirjOmT++17XXC0Q
         5nF4TS2tE0LstxilT7mhU68kFfirrgblhJSDap0tuTexOJsnRKIyzzgofOpfSg1e8bAQ
         yUcwf/xg3XnqgB+NiW2pCHzivdP56n4Oy/xRLHTLT1BbiBwPBRKijytLwugdfTVU+NBy
         61QizBsttcJmw7N2zh5Nc0xvUWh7bZzu62xhz7l65tFkrIm+JS9NrjCgdoD1tsD0TpyW
         weDUJpOQ9Uibv2zF2gCu7EkfMQ0mf89yJ3sfh5o4OssUPPmjRRcJlWGtjfwSdXAYJZvI
         0GHg==
X-Gm-Message-State: AOJu0YzKHW3nK0e7MIFa3xmpgyH+haVebeLZjSTO5GDVsfTMdH1jHXBf
	qBi8vjQdApn6YUJro5+ySBtW09cOEIoFcd8UzsKl0MTlghseYfSQiL5tFRKHH7bKiIdX0nJ4NwL
	d7KA=
X-Google-Smtp-Source: AGHT+IF9UV7XbRfU5NBLLMchqSnUlyQWUig0O8OUBU9Yb++a/VXWTu7PmzNkCGuSOBr8HE/CWfitdA==
X-Received: by 2002:a05:600c:4583:b0:426:5f8f:51a4 with SMTP id 5b1f17b1804b1-427f9555df7mr17145315e9.12.1721834173494;
        Wed, 24 Jul 2024 08:16:13 -0700 (PDT)
Received: from ?IPV6:2001:16b8:cc60:7a00:10fc:1619:bea3:90d1? ([2001:16b8:cc60:7a00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427f9413823sm33541245e9.47.2024.07.24.08.16.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 08:16:13 -0700 (PDT)
Message-ID: <b4b95a49-869d-4b5e-a2ea-9d8cfc7cf650@ettus.com>
Date: Wed, 24 Jul 2024 17:16:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
To: usrp-users@lists.ettus.com, "Dr. Scott Best" <scott_best@sibersci.com>
References: <5f14a3e6-a2aa-4a58-9e00-7c2466e5971b@gmail.com>
 <d53b4426-7d8a-4549-8d71-7fc02b1cf997@gmail.com>
 <86a13c1b-8c99-40fc-a9da-a38c31363baa@gmail.com>
 <CAFOi1A7excS7e9c783gyAiLEEWD+HRTLo3bcde-KzLtNn_taqg@mail.gmail.com>
 <58132b9fac598e8a38c35a5746ad8cc6@mail.gmail.com>
 <PH0PR04MB831190051D0B634193CC1CA1F3AA2@PH0PR04MB8311.namprd04.prod.outlook.com>
 <779cbed1-f197-4ac8-a708-da790f13aadd@ettus.com>
Content-Language: en-US
In-Reply-To: <779cbed1-f197-4ac8-a708-da790f13aadd@ettus.com>
Message-ID-Hash: OCEZIAXCH6GYMIS7RMDJBNABP222OSAS
X-Message-ID-Hash: OCEZIAXCH6GYMIS7RMDJBNABP222OSAS
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Where can I download the "NI-USRP Configuration Utility" for Windows 10 x64
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OCEZIAXCH6GYMIS7RMDJBNABP222OSAS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8693040480289754204=="

This is a multi-part message in MIME format.
--===============8693040480289754204==
Content-Type: multipart/alternative;
 boundary="------------S8huEhWDxj680eXwIhhFSmyx"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------S8huEhWDxj680eXwIhhFSmyx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

(just to be clear: you can probably do what you want to do with that tool=
, but with other=20
tools, for the N320. I don't know exactly what you're planning to do, but=
 if you could=20
reply to the list what you're currently facing, this might be quickly res=
olvable, without=20
downloading a 6GB installer image)

On 24.07.24 17:12, Marcus M=C3=BCller wrote:
>
> Note that while I've never used it, I don't think it'll work with the N=
320; IIRC it is a=20
> gen2-device wrapper around what you do with usrp_burn_mb_eeprom, usrp2_=
card_burner, and=20
> uhd_image_loader.
>
> Best,
> Marcus
>
> On 24.07.24 15:36, Martin Anderseck wrote:
>>
>> The NI-USRP configuration utility should be part of the NI-USRP tool c=
hain:
>>
>> https://www.ni.com/en/support/downloads/drivers/download.ni-usrp.html#=
484354
>>
>> /Martin
>>
>>
>> INTERNAL - NI CONFIDENTIAL
>>
>> *From:*Dr. Scott Best via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Wednesday, July 24, 2024 2:03 PM
>> *To:* martin.braun@ettus.com
>> *Cc:* usrp-users@lists.ettus.com
>> *Subject:* [USRP-users] Where can I download the "NI-USRP Configuratio=
n Utility" for=20
>> Windows 10 x64
>> *Importance:* High
>>
>> Dear Martin,
>>
>> I have an n200 and a pair of n320s that I am working on using for a pr=
oject.=C2=A0 I watched=20
>> a recent YouTube movie about using the =E2=80=9CNI-USRP Configuration =
Utility=E2=80=9D for Windows 10 x=20
>> 64 for this purpose.=C2=A0 I have been unable to find a URL to downloa=
d a copy of this handy=20
>> utility, so can you provide me with the download location?
>>
>> Thanks in advance for your timely assistance.
>>
>> Respectfully,
>>
>> Scott
>>
>> Dr. Scott Best
>>
>> Chief Technology Officer
>>
>> *SiberSci, LLC*
>>
>> 1-270-228-4901=C2=A0 office
>>
>> scott_best@sibersci.com e-mail
>>
>> https://sibersci.com <http://www.sibersci.com/>
>>
>> Notice: This e-mail is intended solely for use of the individual or en=
tity to which it=20
>> is addressed and may contain information that is proprietary, privileg=
ed, company=20
>> confidential and/or exempt from disclosure under applicable law. If th=
e reader is not=20
>> the intended recipient or agent responsible for delivering the message=
 to the intended=20
>> recipient, you are hereby notified that any dissemination, distributio=
n or copying of=20
>> this communication is strictly prohibited. If this communication has b=
een transmitted=20
>> from a U.S. location it may also contain data subject to the Internati=
onal Traffic in=20
>> Arms Regulations or U.S. Export Administration Regulations and cannot =
be disseminated,=20
>> distributed or copied to foreign nationals, residing in the U.S. or ab=
road, without the=20
>> prior approval of the U.S. Department of State or appropriate export l=
icensing=20
>> authority. If you have received this communication in error, please no=
tify the sender=20
>> by reply e-mail or collect telephone call and delete or destroy all co=
pies of this=20
>> e-mail message, any physical copies made of this e-mail message and/or=
 any file=20
>> attachment(s).
>>
>> National Instruments Dresden GmbH; Gesch=C3=A4ftsf=C3=BChrer (Managing=
 Directors): Sabrina=20
>> Gilman, Kathleen Heard Spurck, Carl Schumacher; Sitz (Registered Offic=
e): Dresden; HRB=20
>> (Commercial Register No.): 22081; Registergericht (Registration Court)=
: Dresden
>>
>> This email and any attachments are intended only for the person to who=
m this email is=20
>> addressed and may contain confidential and/or privileged information. =
If you received=20
>> this email in error, please do not disclose the contents to anyone, bu=
t notify the=20
>> sender by return email and delete this email (and any attachments) fro=
m your system.
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------S8huEhWDxj680eXwIhhFSmyx
Content-Type: multipart/related;
 boundary="------------Dx5Ihq00uIFulR8JLItnFtns"

--------------Dx5Ihq00uIFulR8JLItnFtns
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>(just to be clear: you can probably do what you want to do with
      that tool, but with other tools, for the N320. I don't know
      exactly what you're planning to do, but if you could reply to the
      list what you're currently facing, this might be quickly
      resolvable, without downloading a 6GB installer image)<br>
    </p>
    <div class=3D"moz-cite-prefix">On 24.07.24 17:12, Marcus M=C3=BCller =
wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:779cbed1-f197-4ac8-a708-da790f13aadd@ettus.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Note that while I've never used it, I don't think it'll work
        with the N320; IIRC it is a gen2-device wrapper around what you
        do with usrp_burn_mb_eeprom, usrp2_card_burner, and
        uhd_image_loader. <br>
      </p>
      <p>Best,<br>
        Marcus<br>
      </p>
      <div class=3D"moz-cite-prefix">On 24.07.24 15:36, Martin Anderseck
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:PH0PR04MB831190051D0B634193CC1CA1F3AA2@PH0PR04MB8311.namprd04=
.prod.outlook.com">
        <meta http-equiv=3D"Content-Type"
          content=3D"text/html; charset=3DUTF-8">
        <meta name=3D"Generator"
          content=3D"Microsoft Word 15 (filtered medium)">
        <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
        <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Aptos;}@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
        <div class=3D"WordSection1">
          <p class=3D"MsoNormal"><span
              style=3D"font-size:11.0pt;mso-fareast-language:EN-US"
              lang=3D"EN-US">The NI-USRP configuration utility should be
              part of the NI-USRP tool chain:<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:11.0pt;mso-fareast-language:EN-US"
              lang=3D"EN-US"><a
href=3D"https://www.ni.com/en/support/downloads/drivers/download.ni-usrp.=
html#484354"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://www.ni.com/en/support/downloads/drivers/download.ni-usrp.html#484=
354</a><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:11.0pt;mso-fareast-language:EN-US"
              lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:11.0pt;mso-fareast-language:EN-US"
              lang=3D"EN-US">/Martin<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:11.0pt;mso-fareast-language:EN-US"
              lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
          <div><br>
            <p
style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;font=
-style:normal;font-weight:normal;text-decoration:none;"
              align=3D"Left"> INTERNAL - NI CONFIDENTIAL<br>
            </p>
            <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
              <p class=3D"MsoNormal"><b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"
                    lang=3D"EN-US">From:</span></b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"
                  lang=3D"EN-US"> Dr. Scott Best via USRP-users <a
                    class=3D"moz-txt-link-rfc2396E"
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true">&lt;usrp-users@lists.ettus.c=
om&gt;</a>
                  <br>
                  <b>Sent:</b> Wednesday, July 24, 2024 2:03 PM<br>
                  <b>To:</b> <a
class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
                    href=3D"mailto:martin.braun@ettus.com"
                    moz-do-not-send=3D"true">martin.braun@ettus.com</a><b=
r>
                  <b>Cc:</b> <a
class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true">usrp-users@lists.ettus.com</=
a><br>
                  <b>Subject:</b> [USRP-users] Where can I download the
                  "NI-USRP Configuration Utility" for Windows 10 x64<br>
                  <b>Importance:</b> High<o:p></o:p></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">Dear Martin,</span><span lang=3D"EN-US"><o:p=
></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">=C2=A0</span><span lang=3D"EN-US"><o:p></o:p=
></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">I have an n200 and a pair of n320s that I am
              working on using for a project.=C2=A0 I watched a recent
              YouTube movie about using the =E2=80=9CNI-USRP Configuratio=
n
              Utility=E2=80=9D for Windows 10 x 64 for this purpose.=C2=A0=
 I have
              been unable to find a URL to download a copy of this handy
              utility, so can you provide me with the download location?<=
/span><span
              lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">=C2=A0</span><span lang=3D"EN-US"><o:p></o:p=
></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">Thanks in advance for your timely assistance=
.</span><span
              lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">=C2=A0</span><span lang=3D"EN-US"><o:p></o:p=
></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">Respectfully,</span><span lang=3D"EN-US"><o:=
p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">=C2=A0</span><span lang=3D"EN-US"><o:p></o:p=
></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">Scott</span><span lang=3D"EN-US"><o:p></o:p>=
</span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">=C2=A0</span><span lang=3D"EN-US"><o:p></o:p=
></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">Dr. Scott Best</span><span lang=3D"EN-US"><o=
:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">Chief Technology Officer</span><span
              lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><b><span
style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#C00000"
                lang=3D"EN-US">SiberSci, LLC</span></b><span lang=3D"EN-U=
S"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">1-270-228-4901=C2=A0 office</span><span
              lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US"><a href=3D"mailto:scott_best@sibersci.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
scott_best@sibersci.com</a>=C2=A0
              e-mail</span><span lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US"><a href=3D"http://www.sibersci.com/"
                moz-do-not-send=3D"true">https://sibersci.com</a></span><=
span
              lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"
            style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">=
<span
style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;col=
or:#212121"
              lang=3D"EN-US"><img style=3D"width:3.3541in;height:1.743in"
                id=3D"Picture_x0020_1"
                src=3D"cid:part1.eztPMZBL.pqHj36gO@ettus.com" class=3D""
                width=3D"322" height=3D"167" border=3D"0"></span><span
              lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"
            style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">=
<span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">=C2=A0</span><span
style=3D"font-family:&quot;Times New Roman&quot;,serif;color:black"
              lang=3D"EN-US">Notice: This e-mail is intended solely for
              use of the individual or entity to which it is addressed
              and may contain information that is proprietary,
              privileged, company confidential and/or exempt from
              disclosure under applicable law. If the reader is not the
              intended recipient or agent responsible for delivering the
              message to the intended recipient, you are hereby notified
              that any dissemination, distribution or copying of this
              communication is strictly prohibited. If this
              communication has been transmitted from a U.S. location it
              may also contain data subject to the International Traffic
              in Arms Regulations or U.S. Export Administration
              Regulations and cannot be disseminated, distributed or
              copied to foreign nationals, residing in the U.S. or
              abroad, without the prior approval of the U.S. Department
              of State or appropriate export licensing authority. If you
              have received this communication in error, please notify
              the sender by reply e-mail or collect telephone call and
              delete or destroy all copies of this e-mail message, any
              physical copies made of this e-mail message and/or any
              file attachment(s).</span><span lang=3D"EN-US"><o:p></o:p><=
/span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"
              lang=3D"EN-US">=C2=A0</span><span lang=3D"EN-US"><o:p></o:p=
></span></p>
          <div>
            <blockquote
style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5=
.0pt">
              <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:=
p></span></p>
            </blockquote>
          </div>
        </div>
        National Instruments Dresden GmbH; Gesch=C3=A4ftsf=C3=BChrer (Man=
aging
        Directors): Sabrina Gilman, Kathleen Heard Spurck, Carl
        Schumacher; Sitz (Registered Office): Dresden; HRB (Commercial
        Register No.): 22081; Registergericht (Registration Court):
        Dresden<br>
        <br>
        This email and any attachments are intended only for the person
        to whom this email is addressed and may contain confidential
        and/or privileged information. If you received this email in
        error, please do not disclose the contents to anyone, but notify
        the sender by return email and delete this email (and any
        attachments) from your system.=C2=A0 <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"tru=
e">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users-leave@lists.ettus.com"
        moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
    </blockquote>
  </body>
</html>
--------------Dx5Ihq00uIFulR8JLItnFtns
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Id: <part1.eztPMZBL.pqHj36gO@ettus.com>
Content-Transfer-Encoding: base64

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

--------------Dx5Ihq00uIFulR8JLItnFtns--

--------------S8huEhWDxj680eXwIhhFSmyx--

--===============8693040480289754204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8693040480289754204==--
