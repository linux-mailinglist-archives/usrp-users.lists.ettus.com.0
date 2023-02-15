Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F686988B9
	for <lists+usrp-users@lfdr.de>; Thu, 16 Feb 2023 00:21:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 346D4384809
	for <lists+usrp-users@lfdr.de>; Wed, 15 Feb 2023 18:21:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676503279; bh=OJib9RxJohPWvN8n/KLMpmsa/vVIxSjLiL/B25fDxIc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OuAiv67XUzqQ9rioN3OttJ7Cr/Ilj7DuY1gk5VvbthaKFAUn3IReXCNajVEz143Hg
	 Lu20rsD9iHrMWm8QdyO+Ze0OoAhV95p8k7I07cpFj9IofyZvA4TrHUwCFlZJsreV+l
	 iZGkapNqDzNZNphjTXVGN6JRnwba5PM6tnUVomBkZPU/1sulmtyOM298Q8SQBYH+oK
	 gWEoXqkJ1jcFy9ommQVQK4nXDjyHblOSzuQvI2sompOKoU1g0ewwI0Qfv5TIzUc8Zo
	 S5AYMP98/qDzmwJ3jcS+nTPgvNTkWvAi4OfipV5+nbhkhEfEq62Zzf4zU/oPPpPNiB
	 AzFezK02i0o9Q==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 8ED26383E73
	for <usrp-users@lists.ettus.com>; Wed, 15 Feb 2023 18:20:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S/guNNA3";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id j5so212794qvi.3
        for <usrp-users@lists.ettus.com>; Wed, 15 Feb 2023 15:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W/3Un6ru2cFypc80ZjCdfc4ViSlS+j42adyhfNA1rpw=;
        b=S/guNNA3f45SJsc2bF7NvXglkVpGbc0q+Rc2VegAncJONLvtlAozdCEOemVlmSX87g
         o5evv9RWyC3ifQ5cSry7uGZJ3vcrgInKBmGeT4+/KNguB280NeiaAyr8Vfzk3nksZo/W
         yeuI2CpB3TxbOA3yWC2EQaNEiQ1yeGWK+8k39HnNm2/ybfBcOfpDpgjH7X8b2erVRTbF
         Vi18Oa7AX/DI0Xm0Z42yo4S+K3GiLCIOxv0aoMcme9hlPpsDtDCLIDoy5bjkH+G4N4QS
         cfdb//GB+NW9Zme6Vq3K4mtlAg2yV5G4ICiviyDBVKT4Nb2L0/zpgpZtmXygaYGCYnCE
         2CAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W/3Un6ru2cFypc80ZjCdfc4ViSlS+j42adyhfNA1rpw=;
        b=hULEtWNok8ejIw3D3BxYlaiVIefcE5bBAXUBFiln7Tw4jQjhBWvtotPeY2Wc1Cv3eT
         9bbE+sLeD43BIJUal9Wj9mygyE3zgfe4Y4H3O3F8djBSsT47X9yjlv5+cb8d1MdaijTA
         uoCRmjzbqpyKKJ/MV1Bbdx+f4DrtdUMIpZwt4nv4A2qkSmj7WmZAC5z9h8RHOiMZi46w
         QdUzoiekSbPciCTeLWHJBtfgPowyGCMLQDxP+HgKL7CWNUGh023hLrYhrsukdO6+LcnC
         ngDIsARSrycE3hocfm7UN2vK459NqLMEgMSwRKQcNwloa2+By2nJ/XsNWQI3b6n8K4bc
         zrLQ==
X-Gm-Message-State: AO0yUKVJCsYVhOuE4GC8C6vwlzp1KDJ6glMq+hBKlqMLzGd4sL6ij/p4
	I+peiabdQWrYw/t9WMAl6fIM9LmKuuM=
X-Google-Smtp-Source: AK7set9YxE/tdIbBn0piCOEIaU+XP6ofKVoHrOvj/uSaSvtASdwZHOkvsiyDlk5zdveFPXEYwDkqMA==
X-Received: by 2002:ad4:574b:0:b0:56c:37d:51e with SMTP id q11-20020ad4574b000000b0056c037d051emr8011689qvx.22.1676503233789;
        Wed, 15 Feb 2023 15:20:33 -0800 (PST)
Received: from [192.168.2.163] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id b68-20020a37b247000000b0073980414888sm13905qkf.42.2023.02.15.15.20.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 15:20:33 -0800 (PST)
Message-ID: <88e82e52-939d-f1c9-021b-5e8f40615e1e@gmail.com>
Date: Wed, 15 Feb 2023 18:20:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: usrp-users@lists.ettus.com
References: <CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmail.com>
 <f711c1ef-6b87-3f56-d9ce-9855009f7836@gmail.com>
 <5584c7d7-e966-75c9-7e06-162e35f5bee5@ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5584c7d7-e966-75c9-7e06-162e35f5bee5@ettus.com>
Message-ID-Hash: 43ZINUXYJJXI5MT3RETTTBTAUADHGRL2
X-Message-ID-Hash: 43ZINUXYJJXI5MT3RETTTBTAUADHGRL2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about USRP SDR devices
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/43ZINUXYJJXI5MT3RETTTBTAUADHGRL2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3427283604627843804=="

This is a multi-part message in MIME format.
--===============3427283604627843804==
Content-Type: multipart/alternative;
 boundary="------------jfjpAawFlN1SKyXu6giihSVy"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jfjpAawFlN1SKyXu6giihSVy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/02/2023 18:12, Marcus M=C3=BCller wrote:
>
> Hi,
>
> On 15.02.23 18:22, Marcus D. Leech wrote:
>
>>>  *
>>>
>>>
>>>  *
>>>
>>>     2)Is UHD able to be run on an Android device and control a USRP
>>>     SDR (using USB OTG, for example)? If not, are there other ways
>>>     to have an Androidapp control the USRP SDR in real time?
>>>
>> There is no port of UHD to Android that I know of.
>>
> There is one =E2=80=93 at the very least the one done by Basti Bloessl =
for his=20
> GNU Radio on Android work. I also think Tom Rondeau had something=20
> similar demoed before, but that is so long ago that I'd neither trust=20
> my memory nor assume it's still useful.
>
I should qualify my statement with "and is supported by Ettus/NI". The=20
one Tom did was I think nearly a decade ago.=C2=A0 I don't know
 =C2=A0 about the Basti Bloessl one, but I'll observe that the last commi=
t on=20
his "gnuradio-android" was 2 years ago...


>>>  *
>>>
>>>     3) Custom B200 firmware: if I program the FPGA over USB (using
>>>     Xilinx HW manager), will the image persist if I turnoff power to
>>>     device (I.e.disconnect USB)? In other words, is there a FLASH or
>>>     some other persistent storage on-board to hold on to
>>>     user-defined FPGA firmware after power-down?
>>>
>> There's insufficient FLASH onboard the B2xx devices to support a=20
>> persistent FPGA image.
>
> Corollary: short of leading to electrical damage somehow, it's hard to=20
> permanently brick that device.
>
> Best regards,
> Marcus
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------jfjpAawFlN1SKyXu6giihSVy
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/02/2023 18:12, Marcus M=C3=BClle=
r
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:5584c7d7-e966-75c9-7e06-162e35f5bee5@ettus.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi,</p>
      <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0" style=3D=
"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:baseline;font=
-kerning:none;background-color:transparent;color:windowtext" lang=3D"EN-U=
S">On 15.02.23 18:22, Marcus D. Leech wrote:<span class=3D"gmail-TextRun =
gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;font-size:=
11pt;line-height:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibr=
i_MSFontService,sans-serif;font-variant-ligatures:none" lang=3D"EN-US"><s=
pan class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"=
margin:0px;padding:0px">
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
                <li role=3D"listitem" class=3D"gmail-OutlineElement
                  gmail-Ltr gmail-SCXW76715474 gmail-BCX0"
                  style=3D"margin:0px 0px 0px
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
                  <br>
                </li>
                <li role=3D"listitem" class=3D"gmail-OutlineElement
                  gmail-Ltr gmail-SCXW76715474 gmail-BCX0"
                  style=3D"margin:0px 0px 0px
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
                  <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BC=
X0" style=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:b=
aseline;font-kerning:none;background-color:transparent;color:windowtext" =
lang=3D"EN-US"><span class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BCX0=
" style=3D"margin:0px;padding:0px;font-size:11pt;line-height:19.425px;fon=
t-family:Calibri,Calibri_EmbeddedFont,Calibri_MSFontService,sans-serif;fo=
nt-variant-ligatures:none" lang=3D"EN-US"><span class=3D"gmail-NormalText=
Run gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px">2)Is =
UHD able to be run on an Android device and control a USRP SDR  (using US=
B OTG, for example)? If not, are there other ways to </span><span class=3D=
"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;p=
adding:0px">have an </span></span><span class=3D"gmail-TextRun gmail-SCXW=
76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;font-size:11pt;line-=
height:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_MSFontSe=
rvice,sans-serif;font-variant-ligatures:none" lang=3D"EN-US"><span class=3D=
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
      <p>There is one =E2=80=93 at the very least the one done by Basti B=
loessl
        for his GNU Radio on Android work. I also think Tom Rondeau had
        something similar demoed before, but that is so long ago that
        I'd neither trust my memory nor assume it's still useful.<br>
      </p>
    </blockquote>
    I should qualify my statement with "and is supported by Ettus/NI".=C2=
=A0
    The one Tom did was I think nearly a decade ago.=C2=A0 I don't know<b=
r>
    =C2=A0 about the Basti Bloessl one, but I'll observe that the last co=
mmit
    on his "gnuradio-android" was 2 years ago...<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:5584c7d7-e966-75c9-7e06-162e35f5bee5@ettus.com">
      <p> </p>
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
                <li role=3D"listitem" class=3D"gmail-OutlineElement
                  gmail-Ltr gmail-SCXW76715474 gmail-BCX0"
                  style=3D"margin:0px 0px 0px
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
                  <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BC=
X0" style=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:b=
aseline;font-kerning:none;background-color:transparent;color:windowtext" =
lang=3D"EN-US"><span class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BCX0=
" style=3D"background-color:transparent;color:windowtext;font-size:11pt;m=
argin:0px;padding:0px;line-height:19.425px;font-family:Calibri,Calibri_Em=
beddedFont,Calibri_MSFontService,sans-serif;font-variant-ligatures:none" =
lang=3D"EN-US"><span class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmai=
l-BCX0" style=3D"margin:0px;padding:0px">3) Custom B200 firmware: if I pr=
ogram the FPGA over USB (using Xilinx HW manager), will the image persist=
 if I </span><span class=3D"gmail-NormalTextRun gmail-SpellingErrorV2Them=
ed gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;backgro=
und-repeat:repeat-x;background-position:0% 100%;border-bottom:1px solid t=
ransparent">turn</span><span class=3D"gmail-NormalTextRun gmail-SCXW76715=
474 gmail-BCX0" style=3D"margin:0px;padding:0px"> off power to </span><sp=
an class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"m=
argin:0px;padding:0px">device (</span><span class=3D"gmail-NormalTextRun =
gmail-ContextualSpellingAndGrammarErrorV2Themed gmail-SCXW76715474 gmail-=
BCX0" style=3D"margin:0px;padding:0px;background-repeat:repeat-x;backgrou=
nd-position:0% 100%;border-bottom:1px solid transparent">I.e.</span><span=
 class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"mar=
gin:0px;padding:0px"> disconnect USB)? In other words, is there </span><s=
pan class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"=
margin:0px;padding:0px">a FLASH or some other persistent storage on-board=
 to hold on to user-defined FPGA firmware after power-down?</span></span>=
<span class=3D"gmail-EOP gmail-SCXW76715474 gmail-BCX0" style=3D"backgrou=
nd-color:transparent;color:windowtext;font-size:11pt;margin:0px;padding:0=
px;line-height:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_=
MSFontService,sans-serif">=C2=A0</span>
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

--------------jfjpAawFlN1SKyXu6giihSVy--

--===============3427283604627843804==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3427283604627843804==--
