Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB816988A0
	for <lists+usrp-users@lfdr.de>; Thu, 16 Feb 2023 00:12:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 033DB384253
	for <lists+usrp-users@lfdr.de>; Wed, 15 Feb 2023 18:12:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676502759; bh=lQOYRc6hWFvA7X+Bbp/u7CEZAh1d7OpzGvj9KtXmhjo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EMW8Nn1gtpQ6yU5Mh3AwAzJgv3ulmweVQ+enkF4j5LCPj8Iuk/DAyML9IZmyf7Bww
	 YfjVdedCAaY4pgfGmICbe2ukN3UiBshXl5bkqv4uvENqd/LNHapUL92M5slmD3cjwL
	 grhmHd4VDX+5gX0kBan9jN8d5saNh88/rJNBhGaiFOCQ/mU/3MwhRGxs4gDv49lIgo
	 6MPzlrixB2+xMEV3/zTkmISAmqOjPM1BHqKXwvBChXAmLHGWT7ZXKNu638jynXYK0k
	 dWJPpjHzXJEaVXUAe28Qtm357UzEwttpEe9TqTP/2V6GhJ+BZ7+/ixDr8+yvjSEaMb
	 Wr+zoLAawWIOQ==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id B84B1384253
	for <usrp-users@lists.ettus.com>; Wed, 15 Feb 2023 18:12:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Jx/CA9gn";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id f21so873054ejq.8
        for <usrp-users@lists.ettus.com>; Wed, 15 Feb 2023 15:12:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l4R1/TUZiXdUXw0+aP2VtwBdivW4v8FXHpccTAkqRzc=;
        b=Jx/CA9gn8OidQa2/JkrRbWPrkdi8bKp8tK/YqYDxaVS0tynDxmSgV3Gie7hPogQzfX
         0k+B3MTilzDkjPsnNn7mQXWEPpFKyR5U4BUOsDloeMv4GfbcwhyPWBoIoCGC10vbyGxt
         mHZwgbbJo+4aGK66Sg7qqwNibdaz4Rahi6c7Xtm3rzhk4VsjQaaSruYHJKhLWPMMxI+L
         x8DXjIg/JE0aLMIAfMYt86L1IViiIsV8M72MT+FJcfPiObkrKnCkX8aBEwGpXTn150un
         8/CfYk+nwThNL0TK0G7FsX3WgIlS8WxNqDBNHDR0HycZ3sAYQDR6CCFGbrlJ+0HpYN10
         9uFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l4R1/TUZiXdUXw0+aP2VtwBdivW4v8FXHpccTAkqRzc=;
        b=fDbvJwDjvcIlx/zRIo1baCJkF6PmvwzLtqGJFTg2idHs9WDcVnKeSNrda+q6QB/Axc
         tadrvcC0pPUbMT5LLUY46+B3eey8qG9G+PSVoDjuRB6zP3jpLdPib3qRvfgnfm665EXz
         quyq1gZET671SZPt9kpQDSPtdlTUAjVbKmPAEOWuYePirsCjMPkCSbg83VGKGg+yFSxF
         o5Y3RWcoYu/5RezGL+x4Mpm5ZB4mY1y09ucm8mcmJO9Ty4rB04gY6tjhaD4cw++HVcXk
         g5V2pRuQS6N3mJ7p+2RZrE9Zn7+shtwY8C/XEFS8ZYLDdPlVVvMjq/Vbd8V3aALHRkXd
         s58g==
X-Gm-Message-State: AO0yUKUbjQ8aFX/PmoNfcDscb5sZWHFWNRZbD65VPd80HECyAi4a3UlH
	DtK1syuwDnag4QXDDO7Pk8XtOz0sTBQViWYWYXE=
X-Google-Smtp-Source: AK7set+26ruWUIqmZ7AEL9c3f4vpiuyESBfDq5xa4CNAZsoafJV3hnV6XvtrFTyDz1Uqcj7EGB2OFA==
X-Received: by 2002:a17:906:630f:b0:8aa:502c:44d4 with SMTP id sk15-20020a170906630f00b008aa502c44d4mr3736372ejc.2.1676502752283;
        Wed, 15 Feb 2023 15:12:32 -0800 (PST)
Received: from ?IPV6:2001:9e8:385e:6800:998f:ca6a:6065:3212? ([2001:9e8:385e:6800:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id k2-20020a50ce42000000b004acbecf091esm60737edj.17.2023.02.15.15.12.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 15:12:31 -0800 (PST)
Message-ID: <5584c7d7-e966-75c9-7e06-162e35f5bee5@ettus.com>
Date: Thu, 16 Feb 2023 00:12:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: usrp-users@lists.ettus.com
References: <CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmail.com>
 <f711c1ef-6b87-3f56-d9ce-9855009f7836@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <f711c1ef-6b87-3f56-d9ce-9855009f7836@gmail.com>
Message-ID-Hash: 4Y6J2ALKCDNVXAOE6J4CCKBPUMHMBLCV
X-Message-ID-Hash: 4Y6J2ALKCDNVXAOE6J4CCKBPUMHMBLCV
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about USRP SDR devices
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4Y6J2ALKCDNVXAOE6J4CCKBPUMHMBLCV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2471069070288550640=="

This is a multi-part message in MIME format.
--===============2471069070288550640==
Content-Type: multipart/alternative;
 boundary="------------DxV3uz7NyYmUTyav44HLUxNv"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DxV3uz7NyYmUTyav44HLUxNv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

On 15.02.23 18:22, Marcus D. Leech wrote:

>>  *
>>
>>
>>  *
>>
>>     2)Is UHD able to be run on an Android device and control a USRP SD=
R (using USB OTG,
>>     for example)? If not, are there other ways to have an Androidapp c=
ontrol the USRP
>>     SDR in real time?
>>
> There is no port of UHD to Android that I know of.
>
There is one =E2=80=93 at the very least the one done by Basti Bloessl fo=
r his GNU Radio on=20
Android work. I also think Tom Rondeau had something similar demoed befor=
e, but that is so=20
long ago that I'd neither trust my memory nor assume it's still useful.

>>  *
>>
>>     3) Custom B200 firmware: if I program the FPGA over USB (using Xil=
inx HW manager),
>>     will the image persist if I turnoff power to device (I.e.disconnec=
t USB)? In other
>>     words, is there a FLASH or some other persistent storage on-board =
to hold on to
>>     user-defined FPGA firmware after power-down?
>>
> There's insufficient FLASH onboard the B2xx devices to support a persis=
tent FPGA image.

Corollary: short of leading to electrical damage somehow, it's hard to pe=
rmanently brick=20
that device.

Best regards,
Marcus
--------------DxV3uz7NyYmUTyav44HLUxNv
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi,</p>
    <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0" style=3D"m=
argin:0px;padding:0px;white-space:pre-wrap;vertical-align:baseline;font-k=
erning:none;background-color:transparent;color:windowtext" lang=3D"EN-US"=
>On 15.02.23 18:22, Marcus D. Leech wrote:<span class=3D"gmail-TextRun gm=
ail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;font-size:11=
pt;line-height:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_=
MSFontService,sans-serif;font-variant-ligatures:none" lang=3D"EN-US"><spa=
n class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"ma=
rgin:0px;padding:0px">
</span></span></p>
    <blockquote type=3D"cite"
      cite=3D"mid:f711c1ef-6b87-3f56-d9ce-9855009f7836@gmail.com">
      <blockquote type=3D"cite"
cite=3D"mid:CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmai=
l.com">
        <div dir=3D"ltr">
          <div>
            <ul class=3D"gmail-BulletListStyle1 gmail-SCXW76715474
              gmail-BCX0" role=3D"list"
style=3D"margin:0px;padding:0px;overflow:visible;font-family:verdana;colo=
r:rgb(0,0,0);font-size:14.6667px">
              <li role=3D"listitem" class=3D"gmail-OutlineElement gmail-L=
tr
                gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px 0px 0p=
x
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
                <br>
              </li>
              <li role=3D"listitem" class=3D"gmail-OutlineElement gmail-L=
tr
                gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px 0px 0p=
x
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
                <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0=
" style=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:bas=
eline;font-kerning:none;background-color:transparent;color:windowtext" la=
ng=3D"EN-US"><span class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BCX0" =
style=3D"margin:0px;padding:0px;font-size:11pt;line-height:19.425px;font-=
family:Calibri,Calibri_EmbeddedFont,Calibri_MSFontService,sans-serif;font=
-variant-ligatures:none" lang=3D"EN-US"><span class=3D"gmail-NormalTextRu=
n gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px">2)Is UH=
D able to be run on an Android device and control a USRP SDR  (using USB =
OTG, for example)? If not, are there other ways to </span><span class=3D"=
gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;pa=
dding:0px">have an </span></span><span class=3D"gmail-TextRun gmail-SCXW7=
6715474 gmail-BCX0" style=3D"margin:0px;padding:0px;font-size:11pt;line-h=
eight:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_MSFontSer=
vice,sans-serif;font-variant-ligatures:none" lang=3D"EN-US"><span class=3D=
"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;p=
adding:0px">Android</span><span class=3D"gmail-NormalTextRun gmail-SCXW76=
715474 gmail-BCX0" style=3D"margin:0px;padding:0px"> app control the USRP=
 SDR in real time?</span></span><span class=3D"gmail-EOP gmail-SCXW767154=
74 gmail-BCX0" style=3D"margin:0px;padding:0px;font-size:11pt;line-height=
:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_MSFontService,=
sans-serif">=C2=A0</span></p>
              </li>
            </ul>
          </div>
        </div>
      </blockquote>
      There is no port of UHD to Android that I know of.<br>
      <br>
    </blockquote>
    <p>There is one =E2=80=93 at the very least the one done by Basti Blo=
essl
      for his GNU Radio on Android work. I also think Tom Rondeau had
      something similar demoed before, but that is so long ago that I'd
      neither trust my memory nor assume it's still useful.<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:f711c1ef-6b87-3f56-d9ce-9855009f7836@gmail.com">
      <blockquote type=3D"cite"
cite=3D"mid:CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmai=
l.com">
        <div dir=3D"ltr">
          <div>
            <ul class=3D"gmail-BulletListStyle1 gmail-SCXW76715474
              gmail-BCX0" role=3D"list"
style=3D"margin:0px;padding:0px;overflow:visible;font-family:verdana;colo=
r:rgb(0,0,0);font-size:14.6667px">
              <li role=3D"listitem" class=3D"gmail-OutlineElement gmail-L=
tr
                gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px 0px 0p=
x
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
                <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0=
" style=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:bas=
eline;font-kerning:none;background-color:transparent;color:windowtext" la=
ng=3D"EN-US"><span class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BCX0" =
style=3D"background-color:transparent;color:windowtext;font-size:11pt;mar=
gin:0px;padding:0px;line-height:19.425px;font-family:Calibri,Calibri_Embe=
ddedFont,Calibri_MSFontService,sans-serif;font-variant-ligatures:none" la=
ng=3D"EN-US"><span class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-=
BCX0" style=3D"margin:0px;padding:0px">3) Custom B200 firmware: if I prog=
ram the FPGA over USB (using Xilinx HW manager), will the image persist i=
f I </span><span class=3D"gmail-NormalTextRun gmail-SpellingErrorV2Themed=
 gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;backgroun=
d-repeat:repeat-x;background-position:0% 100%;border-bottom:1px solid tra=
nsparent">turn</span><span class=3D"gmail-NormalTextRun gmail-SCXW7671547=
4 gmail-BCX0" style=3D"margin:0px;padding:0px"> off power to </span><span=
 class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"mar=
gin:0px;padding:0px">device (</span><span class=3D"gmail-NormalTextRun gm=
ail-ContextualSpellingAndGrammarErrorV2Themed gmail-SCXW76715474 gmail-BC=
X0" style=3D"margin:0px;padding:0px;background-repeat:repeat-x;background=
-position:0% 100%;border-bottom:1px solid transparent">I.e.</span><span c=
lass=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margi=
n:0px;padding:0px"> disconnect USB)? In other words, is there </span><spa=
n class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"ma=
rgin:0px;padding:0px">a FLASH or some other persistent storage on-board t=
o hold on to user-defined FPGA firmware after power-down?</span></span><s=
pan class=3D"gmail-EOP gmail-SCXW76715474 gmail-BCX0" style=3D"background=
-color:transparent;color:windowtext;font-size:11pt;margin:0px;padding:0px=
;line-height:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_MS=
FontService,sans-serif">=C2=A0</span>
</p>
              </li>
            </ul>
          </div>
        </div>
      </blockquote>
      There's insufficient FLASH onboard the B2xx devices to support a
      persistent FPGA image.<br>
    </blockquote>
    <p>Corollary: short of leading to electrical damage somehow, it's
      hard to permanently brick that device.</p>
    Best regards,<br>
    Marcus<br>
  </body>
</html>

--------------DxV3uz7NyYmUTyav44HLUxNv--

--===============2471069070288550640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2471069070288550640==--
