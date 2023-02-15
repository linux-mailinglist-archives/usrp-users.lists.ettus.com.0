Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BED46981D6
	for <lists+usrp-users@lfdr.de>; Wed, 15 Feb 2023 18:22:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63853383EA0
	for <lists+usrp-users@lfdr.de>; Wed, 15 Feb 2023 12:22:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676481745; bh=T6OXR4LpsZYX09JukFCfa3aC6Y8hu68S0dKfp+eujHk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=y8p747cPxzZfcfcWCULQBML1vivUAo/pklSx0FPeqN42g5emxUgFY3ihQhmsOqv2z
	 Wd16Iu5uhCi5hkLlmZcuC3ERP6Zqvbjtt8wDjt41XRxMd5pw67qS9G/wyI138QimZ3
	 vqJ+oz7dmpCrtyk84+CoRLbx/8BT/pXqCMq326kpdYk4Rg7IsAR627rvwVISdwpd95
	 ckMf0cV+NeYhs+vW12oLzdI1zA+bt3H+LT19JouUiyA6d68qdg0erOLMA9XYEPJt0l
	 n2T0fFdkTkuHRd0NYzAOdVLwFRtW+6vSN/5cvNTUa7U7thRkd8caXETF4g2FpVVueI
	 T2TAnUfM4sFaA==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 30004383F2E
	for <usrp-users@lists.ettus.com>; Wed, 15 Feb 2023 12:22:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hM1g+yil";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id l7so8496549qvw.7
        for <usrp-users@lists.ettus.com>; Wed, 15 Feb 2023 09:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wm0lRrC9QtBHfF5MpFk3mDHLK9JIJm6ogKFABTNgrXc=;
        b=hM1g+yilUotGwwdHEsf9rFDl1MDvOUFRdzwmkWN1W4pFoiaz9NRhhPrkhMNzX33D6c
         UqYA6h9OJADfzgXM7PjEIVFRsVJhSMxGygWMPOHF0VG+HXmb8YAHhSNn5UiM0a0s4x/j
         eQJUvvYea/AXSIJG3AC0K/3b8uKhNPf/584S1/LpmMHCgm9iO+XH1d1HKhJ3N3RZH1Ey
         VJJAVU/2+GwxeQr5OczIiSXcvEXbnwv3uM8aUG59byzbjW7C4xzcC/xH9AOWL+g5Coxx
         dbpG6HGU+w3AHP0j9sgGwb45jxDiNsUNLxYF/lU/vyCStY/fg6moCIpM+hOv1n4novkQ
         pa/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wm0lRrC9QtBHfF5MpFk3mDHLK9JIJm6ogKFABTNgrXc=;
        b=vCUeZiMBFGofrPa2oQJW6LPTEENF7yRt9g7WI1I0pXY7JJ15kMDA3b8mUe8u6QOci7
         A71r7PnHMvuaLR7WM5iUGEHGDuCU0veFsMRWD/A15AlZ1WOSqZAyBbFabKWLsXCPM05y
         g5AaJr4rZC7M7AXwUoIRuZMlgKTOIdkdvuwGzNEaYOLS5fKcz7alo8OigpKBujKlSHDi
         hSLh5brcXISacVCw59I62sqUWqT5MpunFP303YjXNsP5UsORz0UkA+bRy8DullR/79/0
         FYwDFMj4IODjJiAFCQ82mbRdOrcGo7a70TaoIwkO8X7d9ii6QuKiLzWFbnCPokdXmaXr
         Cwaw==
X-Gm-Message-State: AO0yUKUKWuVHEKEQXbLZG7Z8/0WyceEQYU3HhsBHMRnIEBDKPeCYlWIC
	Kb+3vRjvW4wUiNMlqbUP321bUqIsf48=
X-Google-Smtp-Source: AK7set/oVqEoVETUjOyGC7K4IRiLY7k7FO+xwJObxVy8YAC114n4vPkT7Km7JxQcSy8u+hz180Yy+w==
X-Received: by 2002:ad4:5945:0:b0:56e:b966:408c with SMTP id eo5-20020ad45945000000b0056eb966408cmr5226326qvb.0.1676481739246;
        Wed, 15 Feb 2023 09:22:19 -0800 (PST)
Received: from [192.168.2.163] ([184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id 73-20020a37074c000000b0071de2b6d439sm14242047qkh.49.2023.02.15.09.22.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 09:22:18 -0800 (PST)
Message-ID: <f711c1ef-6b87-3f56-d9ce-9855009f7836@gmail.com>
Date: Wed, 15 Feb 2023 12:22:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmail.com>
Message-ID-Hash: UNSHZHBWFCITAN7MSML5RI74VIUUWU4U
X-Message-ID-Hash: UNSHZHBWFCITAN7MSML5RI74VIUUWU4U
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about USRP SDR devices
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UNSHZHBWFCITAN7MSML5RI74VIUUWU4U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6744734933951557456=="

This is a multi-part message in MIME format.
--===============6744734933951557456==
Content-Type: multipart/alternative;
 boundary="------------DlwT8v2CfcNMCRhZV287oF0q"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DlwT8v2CfcNMCRhZV287oF0q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/02/2023 12:16, Maxim Belotserkovsky wrote:
> Can anyone please comment on the following:
>
>  *
>
>     1) Can 2 ( ormore )instances of B-series (or other Ettus) SDRs be
>     supported by a SINGLE GR flowgraph (e.g.one for TX chain, another
>     for RX)? Can 2 independent devices hooked up to 2 USB ports talk
>     to 2 instances of the UHD driver on the same machine (under
>     Windows/Linux)?
>
Yes, you can have multiple USRP devices in a single flow-graph.=C2=A0 For=
=20
B2xx series, they would have to be in separate
 =C2=A0 source/sink block instances.=C2=A0 But in the *general* case, wit=
h=20
something like the N2xx or X3xx devices, you can have
 =C2=A0 all devices in the same source/sink block.=C2=A0=C2=A0 Collection=
s of different=20
types of devices within the same source/sink block
 =C2=A0 aren't supported.

>  *
>
>  *
>
>     2)Is UHD able to be run on an Android device and control a USRP
>     SDR (using USB OTG, for example)? If not, are there other ways to
>     have an Androidapp control the USRP SDR in real time?
>
There is no port of UHD to Android that I know of.

>  *
>
>  *
>
>     3) Custom B200 firmware: if I program the FPGA over USB (using
>     Xilinx HW manager), will the image persist if I turnoff power to
>     device (I.e.disconnect USB)? In other words, is there a FLASH or
>     some other persistent storage on-board to hold on to user-defined
>     FPGA firmware after power-down?
>
There's insufficient FLASH onboard the B2xx devices to support a=20
persistent FPGA image.


> Thanks!
>
> --=20
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------DlwT8v2CfcNMCRhZV287oF0q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/02/2023 12:16, Maxim
      Belotserkovsky wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Can anyone please comment on the following:
        <div><br>
        </div>
        <div>
          <ul class=3D"gmail-BulletListStyle1 gmail-SCXW76715474
            gmail-BCX0" role=3D"list"
style=3D"margin:0px;padding:0px;overflow:visible;font-family:verdana;colo=
r:rgb(0,0,0);font-size:14.6667px">
            <li role=3D"listitem" class=3D"gmail-OutlineElement gmail-Ltr=

              gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px 0px 0px
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
              <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0" =
style=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:basel=
ine;font-kerning:none;background-color:transparent;color:windowtext" lang=
=3D"EN-US"><span class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BCX0" st=
yle=3D"margin:0px;padding:0px;font-size:11pt;line-height:19.425px;font-fa=
mily:Calibri,Calibri_EmbeddedFont,Calibri_MSFontService,sans-serif;font-v=
ariant-ligatures:none" lang=3D"EN-US"><span class=3D"gmail-NormalTextRun =
gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px">1) Can 2 =
</span><span class=3D"gmail-NormalTextRun gmail-ContextualSpellingAndGram=
marErrorV2Themed gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;paddi=
ng:0px;background-repeat:repeat-x;background-position:0% 100%;border-bott=
om:1px solid transparent">( or</span><span class=3D"gmail-NormalTextRun g=
mail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px"> </span><s=
pan class=3D"gmail-NormalTextRun gmail-ContextualSpellingAndGrammarErrorV=
2Themed gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;ba=
ckground-repeat:repeat-x;background-position:0% 100%;border-bottom:1px so=
lid transparent">more )</span><span class=3D"gmail-NormalTextRun gmail-SC=
XW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px"> instances of B-s=
eries (or other Ettus) SDRs be supported by a SINGLE GR flowgraph (</span=
><span class=3D"gmail-NormalTextRun gmail-ContextualSpellingAndGrammarErr=
orV2Themed gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px=
;background-repeat:repeat-x;background-position:0% 100%;border-bottom:1px=
 solid transparent">e.g.</span><span class=3D"gmail-NormalTextRun gmail-S=
CXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px"> one for TX chai=
n, another for RX)? C</span><span class=3D"gmail-NormalTextRun gmail-SCXW=
76715474 gmail-BCX0" style=3D"margin:0px;padding:0px">an 2 independent de=
vices hooked up to 2 USB ports talk to 2 instances of the UHD driver on t=
he same machine (under Windows/Linux)?</span></span><span class=3D"gmail-=
EOP gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;font-s=
ize:11pt;line-height:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Ca=
libri_MSFontService,sans-serif">=C2=A0</span></p>
            </li>
          </ul>
        </div>
      </div>
    </blockquote>
    Yes, you can have multiple USRP devices in a single flow-graph.=C2=A0=
 For
    B2xx series, they would have to be in separate<br>
    =C2=A0 source/sink block instances.=C2=A0 But in the *general* case, =
with
    something like the N2xx or X3xx devices, you can have<br>
    =C2=A0 all devices in the same source/sink block.=C2=A0=C2=A0 Collect=
ions of
    different types of devices within the same source/sink block<br>
    =C2=A0 aren't supported.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>
          <ul class=3D"gmail-BulletListStyle1 gmail-SCXW76715474
            gmail-BCX0" role=3D"list"
style=3D"margin:0px;padding:0px;overflow:visible;font-family:verdana;colo=
r:rgb(0,0,0);font-size:14.6667px">
            <li role=3D"listitem" class=3D"gmail-OutlineElement gmail-Ltr=

              gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px 0px 0px
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
              <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0" =
style=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:basel=
ine;font-kerning:none;background-color:transparent;color:windowtext" lang=
=3D"EN-US"><span class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BCX0" st=
yle=3D"margin:0px;padding:0px;font-size:11pt;line-height:19.425px;font-fa=
mily:Calibri,Calibri_EmbeddedFont,Calibri_MSFontService,sans-serif;font-v=
ariant-ligatures:none" lang=3D"EN-US"><span class=3D"gmail-NormalTextRun =
gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px">
</span></span></p>
            </li>
            <li role=3D"listitem" class=3D"gmail-OutlineElement gmail-Ltr=

              gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px 0px 0px
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
              <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0" =
style=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:basel=
ine;font-kerning:none;background-color:transparent;color:windowtext" lang=
=3D"EN-US"><span class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BCX0" st=
yle=3D"margin:0px;padding:0px;font-size:11pt;line-height:19.425px;font-fa=
mily:Calibri,Calibri_EmbeddedFont,Calibri_MSFontService,sans-serif;font-v=
ariant-ligatures:none" lang=3D"EN-US"><span class=3D"gmail-NormalTextRun =
gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px">2)Is UHD =
able to be run on an Android device and control a USRP SDR  (using USB OT=
G, for example)? If not, are there other ways to </span><span class=3D"gm=
ail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padd=
ing:0px">have an </span></span><span class=3D"gmail-TextRun gmail-SCXW767=
15474 gmail-BCX0" style=3D"margin:0px;padding:0px;font-size:11pt;line-hei=
ght:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_MSFontServi=
ce,sans-serif;font-variant-ligatures:none" lang=3D"EN-US"><span class=3D"=
gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;pa=
dding:0px">Android</span><span class=3D"gmail-NormalTextRun gmail-SCXW767=
15474 gmail-BCX0" style=3D"margin:0px;padding:0px"> app control the USRP =
SDR in real time?</span></span><span class=3D"gmail-EOP gmail-SCXW7671547=
4 gmail-BCX0" style=3D"margin:0px;padding:0px;font-size:11pt;line-height:=
19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_MSFontService,s=
ans-serif">=C2=A0</span></p>
            </li>
          </ul>
        </div>
      </div>
    </blockquote>
    There is no port of UHD to Android that I know of.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>
          <ul class=3D"gmail-BulletListStyle1 gmail-SCXW76715474
            gmail-BCX0" role=3D"list"
style=3D"margin:0px;padding:0px;overflow:visible;font-family:verdana;colo=
r:rgb(0,0,0);font-size:14.6667px">
            <li role=3D"listitem" class=3D"gmail-OutlineElement gmail-Ltr=

              gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px 0px 0px
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
              <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0" =
style=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:basel=
ine;font-kerning:none;background-color:transparent;color:windowtext" lang=
=3D"EN-US"><span class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BCX0" st=
yle=3D"background-color:transparent;color:windowtext;font-size:11pt;margi=
n:0px;padding:0px;line-height:19.425px;font-family:Calibri,Calibri_Embedd=
edFont,Calibri_MSFontService,sans-serif;font-variant-ligatures:none" lang=
=3D"EN-US"><span class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BC=
X0" style=3D"margin:0px;padding:0px">
</span></span></p>
            </li>
            <li role=3D"listitem" class=3D"gmail-OutlineElement gmail-Ltr=

              gmail-SCXW76715474 gmail-BCX0" style=3D"margin:0px 0px 0px
24px;padding:0px;overflow:visible;clear:both;direction:ltr;display:block;=
font-size:11pt;font-family:Calibri,Calibri_MSFontService,sans-serif;verti=
cal-align:baseline">
              <p class=3D"gmail-Paragraph gmail-SCXW76715474 gmail-BCX0" =
style=3D"margin:0px;padding:0px;white-space:pre-wrap;vertical-align:basel=
ine;font-kerning:none;background-color:transparent;color:windowtext" lang=
=3D"EN-US"><span class=3D"gmail-TextRun gmail-SCXW76715474 gmail-BCX0" st=
yle=3D"background-color:transparent;color:windowtext;font-size:11pt;margi=
n:0px;padding:0px;line-height:19.425px;font-family:Calibri,Calibri_Embedd=
edFont,Calibri_MSFontService,sans-serif;font-variant-ligatures:none" lang=
=3D"EN-US"><span class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BC=
X0" style=3D"margin:0px;padding:0px">3) Custom B200 firmware: if I progra=
m the FPGA over USB (using Xilinx HW manager), will the image persist if =
I </span><span class=3D"gmail-NormalTextRun gmail-SpellingErrorV2Themed g=
mail-SCXW76715474 gmail-BCX0" style=3D"margin:0px;padding:0px;background-=
repeat:repeat-x;background-position:0% 100%;border-bottom:1px solid trans=
parent">turn</span><span class=3D"gmail-NormalTextRun gmail-SCXW76715474 =
gmail-BCX0" style=3D"margin:0px;padding:0px"> off power to </span><span c=
lass=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margi=
n:0px;padding:0px">device (</span><span class=3D"gmail-NormalTextRun gmai=
l-ContextualSpellingAndGrammarErrorV2Themed gmail-SCXW76715474 gmail-BCX0=
" style=3D"margin:0px;padding:0px;background-repeat:repeat-x;background-p=
osition:0% 100%;border-bottom:1px solid transparent">I.e.</span><span cla=
ss=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"margin:=
0px;padding:0px"> disconnect USB)? In other words, is there </span><span =
class=3D"gmail-NormalTextRun gmail-SCXW76715474 gmail-BCX0" style=3D"marg=
in:0px;padding:0px">a FLASH or some other persistent storage on-board to =
hold on to user-defined FPGA firmware after power-down?</span></span><spa=
n class=3D"gmail-EOP gmail-SCXW76715474 gmail-BCX0" style=3D"background-c=
olor:transparent;color:windowtext;font-size:11pt;margin:0px;padding:0px;l=
ine-height:19.425px;font-family:Calibri,Calibri_EmbeddedFont,Calibri_MSFo=
ntService,sans-serif">=C2=A0</span>
</p>
            </li>
          </ul>
        </div>
      </div>
    </blockquote>
    There's insufficient FLASH onboard the B2xx devices to support a
    persistent FPGA image.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+7S2faqLLV2ePy4Up3u8pnZ2gJJJp3Fu6mmUCoDGkK3EqgxJg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>
          <div><font face=3D"Calibri, Calibri_EmbeddedFont,
              Calibri_MSFontService, sans-serif" color=3D"#000000"><span =
style=3D"font-size:14.6667px;white-space:pre-wrap">
</span></font></div>
          <div><font face=3D"Calibri, Calibri_EmbeddedFont,
              Calibri_MSFontService, sans-serif" color=3D"#000000"><span =
style=3D"font-size:14.6667px;white-space:pre-wrap">Thanks!</span></font><=
/div>
          <div><br>
          </div>
          -- <br>
          <div dir=3D"ltr" class=3D"gmail_signature"
            data-smartmail=3D"gmail_signature">
            <div dir=3D"ltr" style=3D"font-size:1px;direction:ltr">
              <table style=3D"width:100%;font-size:1px" cellspacing=3D"0"=

                cellpadding=3D"0" border=3D"0">
                <tbody>
                  <tr style=3D"font-size:0">
                    <td style=3D"vertical-align:top" align=3D"left">
                      <table style=3D"width:0;font-size:0" cellspacing=3D=
"0"
                        cellpadding=3D"0" border=3D"0">
                        <tbody>
                          <tr style=3D"font-size:0">
                            <td align=3D"left"><br>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                  <tr style=3D"font-size:0">
                    <td style=3D"vertical-align:top" align=3D"left">
                      <table style=3D"font-size:0;line-height:normal"
                        cellspacing=3D"0" cellpadding=3D"0" border=3D"0">=

                        <tbody>
                          <tr style=3D"font-size:0">
                            <td style=3D"padding:1px 0
                              0;vertical-align:top" align=3D"left"><br>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
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

--------------DlwT8v2CfcNMCRhZV287oF0q--

--===============6744734933951557456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6744734933951557456==--
