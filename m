Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0F6ACE024
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 16:20:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B1C3385F05
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 10:20:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749046815; bh=wIV7L7QvxVsfkGA6ur6Ej2bfAaRZqCp395WJGts+RHY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WAhpSOFvpyzuv/f2IEj7ctBHTCn3FBQb44KWbEz73lv6zVbvW5lCtXr1LpyEpZmJF
	 ZBEnau/odd+4WkHOL8KGvc9N58T6wPknquOdi0g/+deMMX0yTUFXeGAUaznIM0+W3s
	 8U9kLw29dCyHEOYeGFfAdspAROKn4pYX8ncCrhNUO2DToB65IdFLvnc3wxHNpUngvy
	 5DbcgPgD4+GLsIKLz9U/izZvrz4CmJBg85hCZamFDJV8nSHJ6VBhwAPM9FwI9ZSwLK
	 swdHbCm0nI9Psy1fEKpf8xpVUvjUd7OUfWzwaWhM5eLXdeAt5b05o8u88YLTuyV1XV
	 BnQkkvemt9cag==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id E9A57385BE4
	for <usrp-users@lists.ettus.com>; Wed,  4 Jun 2025 10:19:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bjz/zIgp";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4a58f79d6e9so35695741cf.2
        for <usrp-users@lists.ettus.com>; Wed, 04 Jun 2025 07:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749046762; x=1749651562; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D2mLk1idHgPim7/GrehZQUl1nthbyv2tNuqjNrKB3DI=;
        b=bjz/zIgp8WJyp6ARePvB2gAvP/YheG5iSrGo6W9nlzbytW6BBnySPMZo35A51e+bPf
         meUMdENn1M1M55s4OPtQUckzNEgs7vf+YN6iPnQKbpLDkwgWF6TlwC7GLdwHCr5u99E6
         Xd3NlIEoc7n7lLEasO/w1KT18f3D2QFg7B++7YJj4EMT/rCjyCl57DvPQpNCbUEHpbLO
         qGAo2sRswEEic4lXpk6xFQhvBsdEOCfnXRfQ8k6sNl8d+5+X6z2i1FQySLy9sHbmtRGD
         159Jyc/iw7ehLDp0TpSs40FesIEFUuPI7BDAfmfgBEkGgPNySpX21c6jbKumCJfCxE/J
         7nFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749046762; x=1749651562;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=D2mLk1idHgPim7/GrehZQUl1nthbyv2tNuqjNrKB3DI=;
        b=b5CDEbvR+is/TGuA1YihZCJKwepZt8c/90D8dU68qIRtVDcALyfYvoJllhnBSP+5VJ
         jZTMkrkMAPl9DsGmUA0fbTqvNEoo93Yye1DV+hjhpZTa3q+mSXsrwjby16YYKN9OYdR3
         6OmMyUk8O5m/5u9hT2S2RDjOqcYKAEQErD+YCPiDQnY1tL3US/w7RJo/wtDSQMiNx+Ls
         X/XECKeNZmKOYmg1PA0q792oQWuWVymnK0e06qHFYEw7KhHe5YOuM2eWqWYrSw/B6TsA
         HwCh665DutsVRKauVrW8sQ56P2dDOgQ1uvtREIS2gWOYvBI/a8UnD2Z2YprlAJXpFp9H
         n30w==
X-Gm-Message-State: AOJu0Yz1q8xaIjCSNdOC8yISnZrUkRV8zHWetKA+jPti53W/Z0HXj/Qq
	sY5Q7lSAwUaftuBepydIY0QFeYA0GXO8u/FBGeWnB9f16ql8xPXjfivpfmHvMCo4
X-Gm-Gg: ASbGncvlQlHfmxkCkqq0Rq0WnVuyEgDzbHIs56TsjkxRr506TJCRcsux+ZMctdZ3ijN
	TF9ENDr0gdIfVuqcGiqsijg+sGWtiY43H4xouijVFy7K1MMF/c5VXwHwzePTecTZ8CdFAuk24mU
	Iao4dmiAzXtur4DLFcwnYhRJ2OQFZBcLIa5zNn9aUcsqU56Gb6z8phaefV13Jscrozbn5En3cDx
	D1+XfyshYlHBUDBiAiLXhPxAL7ooGJFvupwHbDazikQ/XDZjdi/q1JbtMRtUcYyj0hsaNLYoQ7K
	EBi7KJlTVNMJl5QrifPAv2B4CihO2C7rgAbQgocy52WlEyELc3VbC8Jk0jTMxGfwnoOIJ48eokE
	JOqasYr4EzmKyLDxk3QkIk8JsgsBsDyF2JgX9H6Q4ZcWY5W4qxCPCQwLwTrUARsRfLDSA
X-Google-Smtp-Source: AGHT+IFq78I/9vQt28ZCyYJ3nOV9ReRbMvuTP/Mi4965aKsmXbsIwWeBivUFr8S7gYP6UWpkqOHdvg==
X-Received: by 2002:a05:622a:2607:b0:48d:df0e:ef38 with SMTP id d75a77b69052e-4a5a68e58f0mr43692511cf.33.1749046761724;
        Wed, 04 Jun 2025 07:19:21 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-07-174-93-0-120.dsl.bell.ca. [174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4a435a377f1sm91868221cf.61.2025.06.04.07.19.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 07:19:21 -0700 (PDT)
Message-ID: <7b17701a-9fc2-4dd9-9ef6-fdd7ed1e86a2@gmail.com>
Date: Wed, 4 Jun 2025 10:19:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <BNAP110MB18852576F534C5C65C5BCDE09460A@BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM>
 <HE1PR06MB3993FAE909030D93C82468E6DB6CA@HE1PR06MB3993.eurprd06.prod.outlook.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <HE1PR06MB3993FAE909030D93C82468E6DB6CA@HE1PR06MB3993.eurprd06.prod.outlook.com>
Message-ID-Hash: AYIAPEOZX4W7NOOAFBNDSRZ3KRENUZFZ
X-Message-ID-Hash: AYIAPEOZX4W7NOOAFBNDSRZ3KRENUZFZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.8 set_tx_bandwidth() and set_rx_bandwidth() method no longer works
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AYIAPEOZX4W7NOOAFBNDSRZ3KRENUZFZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4303326358253034936=="

This is a multi-part message in MIME format.
--===============4303326358253034936==
Content-Type: multipart/alternative;
 boundary="------------aJgLIF0VruiAAPHamuPuH1vD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------aJgLIF0VruiAAPHamuPuH1vD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2025-06-04 08:15, Alexandre Jos=C3=A9 Monteiro S=C3=A9rio via USRP-use=
rs wrote:
> I'm working with NI x310 USRPs for OAI testing and developing purposes=20
> and, when using v4.8 of the UHD i have the same issue as well. With=20
> the v4.7, the set_tx_bandwidth()/set_rx_bandwidth() do work, getting=20
> the values from the get_tx_bandwidth()/get_tx_bandwidth() in=20
> accordance. In the case of v4.8, it seems that those "set" functions=20
> are not doing anything as you say... Couldn't find any solution or=20
> explanation for that yet...
The set_XX_bandwidth calls configure the *ANALOG* bandwidth of the RF=20
front-end on the USRP.

In MANY cases, those analog front-ends have no way to set the analog=20
bandwidth, so those calls do nothing.=C2=A0 I can't immediately think of =
any=20
X310-compatible
 =C2=A0 daughtercards that have variable analog bandwidth--which cards do=
 you=20
have?


>
> -----------------------------------------------------------------------=
-
> *De:*=C2=A0Tommy Tsui <tommytsui@w5tech.com>
> *Enviado:*=C2=A031 de maio de 2025 04:14
> *Para:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Assunto:*=C2=A0[USRP-users] UHD 4.8 set_tx_bandwidth() and=20
> set_rx_bandwidth() method no longer works
>
> =09
> You don't often get email from tommytsui@w5tech.com. Learn why this is=20
> important <https://aka.ms/LearnAboutSenderIdentification>
> =09
>
> Aten=C3=A7=C3=A3o:=C2=A0Este email foi originado fora da MEO SGPS, S.A.=
 Por favor,=20
> n=C3=A3o clique em links nem abra anexos, a n=C3=A3o ser que conhe=C3=A7=
a o remetente=20
> e saiba que o seu conte=C3=BAdo =C3=A9 seguro.
>
> Hi,
>
> Recently I upgraded UHD driver from 4.7 to 4.8. After the update, I=20
> discovered my RFNOC application has a new issue. Method=20
> set_tx_bandwidth() and set_rx_bandwidth no longer works properly. A=20
> call to get_tx_bandwidth() and get_rx_bandwidth() returned 40MHz=20
> regardless of the bandwidth parameter specified in the set function=20
> call. I installed UHD 4.8 FPGA image to my X310 properly. =C2=A0I built=
 UHD=20
> 4.8 driver source and installed it on my development host without any=20
> issue. When running the same app compiled with UHD 4.7,=20
> get_tx_bandwidth() and get_rx_bandwidth() returned the same value as=20
> the parameter specified in the set method call.
>
> I compiled the UHD RFNOC example application rfnoc_radio_loopback with=20
> UHD 4.8 library. It produced a similar issue.
>
> Has anyone experienced the same issue on UHD 4.8?
>
> In some old posts, some people thought set_tx_bandwidth() and=20
> set_rx_bandwidth() doesn=E2=80=99t do anything if the radio daughter ca=
rd has=20
> a fixed analog bandpass filter. Is it still the case for UHD 4.8?
>
> The radio daughter card WBX-120 has a fixed bandwidth of 40MHz, but I=20
> would assume set_tx_bandwidth() and set_rx_bandwidth() adjust the=20
> digital filter bandwidth rather than the analog RF bandpass filter.
>
> Hardware & Software driver used:
> X310, radio daughter card WBX-120.
> UHD 4.8 release installed on the Ubuntu host, UHD 4.8 release FPGA=20
> (usrp_x310_Fpga_HG.bit) installed on X310.
>
> Host OS: Ubuntu 24.04 LTS
>
> Tom
>
> -----------------------------------------------------------------------=
-
> The information contained in this e-mail and any attachments from W5=20
> Technologies, Inc. may contain confidential and/or proprietary=20
> information, and is intended only for the named recipient to whom it=20
> was originally addressed. If you are not the intended recipient, any=20
> disclosure, distribution, or copying of this e-mail or its attachments=20
> is strictly prohibited. If you have received this e-mail in error,=20
> please notify the sender immediately by return e-mail and permanently=20
> delete the e-mail and any attachments.
>
> AVISO DE CONFIDENCIALIDADE
> Esta mensagem e quaisquer ficheiros anexos a ela cont=C3=AAm informa=C3=
=A7=C3=A3o=20
> confidencial, propriedade do grupo MEO e/ou das demais sociedades que=20
> com ela se encontrem em rela=C3=A7=C3=A3o de dom=C3=ADnio, Funda=C3=A7=C3=
=A3o MEO e MEO ACS,=20
> destinando-se ao uso exclusivo do destinat=C3=A1rio. Se n=C3=A3o for o=20
> destinat=C3=A1rio pretendido, n=C3=A3o deve usar, distribuir, imprimir =
ou copiar=20
> este e-mail. Se recebeu esta mensagem por engano, por favor informe o=20
> emissor e elimine-a imediatamente. Obrigado
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------aJgLIF0VruiAAPHamuPuH1vD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-06-04 08:15, Alexandre Jos=C3=A9
      Monteiro S=C3=A9rio via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:HE1PR06MB3993FAE909030D93C82468E6DB6CA@HE1PR06MB3993.eurprd06=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        I'm working with NI x310 USRPs for OAI testing and developing
        purposes and, when using v4.8 of the UHD i have the same issue
        as well. With the v4.7, the
        set_tx_bandwidth()/set_rx_bandwidth() do work, getting the
        values from the get_tx_bandwidth()/get_tx_bandwidth() in
        accordance. In the case of v4.8, it seems that those "set"
        functions are not doing anything as you say... Couldn't find any
        solution or explanation for that yet...</div>
    </blockquote>
    The set_XX_bandwidth calls configure the *ANALOG* bandwidth of the
    RF front-end on the USRP.<br>
    <br>
    In MANY cases, those analog front-ends have no way to set the analog
    bandwidth, so those calls do nothing.=C2=A0 I can't immediately think=
 of
    any X310-compatible<br>
    =C2=A0 daughtercards that have variable analog bandwidth--which cards=
 do
    you have?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:HE1PR06MB3993FAE909030D93C82468E6DB6CA@HE1PR06MB3993.eurprd06=
.prod.outlook.com">
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <hr style=3D"display: inline-block; width: 98%;">
      <div id=3D"divRplyFwdMsg">
        <div
style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: 11p=
t; color: rgb(0, 0, 0);">
          <b>De:</b>=C2=A0Tommy Tsui <a class=3D"moz-txt-link-rfc2396E" h=
ref=3D"mailto:tommytsui@w5tech.com">&lt;tommytsui@w5tech.com&gt;</a><br>
          <b>Enviado:</b>=C2=A031 de maio de 2025 04:14<br>
          <b>Para:</b>=C2=A0<a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Assunto:</b>=C2=A0[USRP-users] UHD 4.8 set_tx_bandwidth() an=
d
          set_rx_bandwidth() method no longer works</div>
        <div style=3D"direction: ltr;">=C2=A0</div>
      </div>
      <table
style=3D"direction: ltr; text-indent: revert; line-height: revert; white-=
space: revert; background-color: revert; display: table; margin: revert; =
width: 100%; height: revert; table-layout: fixed; color: revert; border-c=
ollapse: collapse; border-spacing: 0px; box-sizing: border-box;"
        cellspacing=3D"0" cellpadding=3D"0">
        <tbody>
          <tr style=3D"background-color: revert;">
            <td
style=3D"direction: ltr; text-indent: revert; line-height: revert; white-=
space: revert; border-width: revert; border-style: revert; border-color: =
revert; background-color: rgb(166, 166, 166); padding: 7px 2px; word-brea=
k: revert; color: revert; width: 0px; height: revert;">
              <br>
            </td>
            <td
style=3D"direction: ltr; text-align: left; text-indent: revert; line-heig=
ht: revert; white-space: revert; border-width: revert; border-style: reve=
rt; border-color: revert; background-color: rgb(234, 234, 234); padding: =
7px 5px 7px 15px; word-break: revert; color: rgb(33, 33, 33); width: 100%=
; height: revert;">
              <div
style=3D"direction: ltr; text-align: left; text-indent: revert; line-heig=
ht: revert; white-space: revert; font-family: wf_segoe-ui_normal, Segoe U=
I, Segoe WP, Tahoma, Arial, sans-serif; font-size: 12px; color: revert;">
                <span
style=3D"letter-spacing: revert; background-color: revert; line-height: r=
evert;">You
                  don't often get email from <a class=3D"moz-txt-link-abb=
reviated" href=3D"mailto:tommytsui@w5tech.com">tommytsui@w5tech.com</a>.
                  <a
                    href=3D"https://aka.ms/LearnAboutSenderIdentification=
"
                    id=3D"OWAcb708ed9-228a-5563-d601-e1f58bf9b4f2"
                    class=3D"OWAAutoLink"
style=3D"color: revert; display: revert; background-color: revert;"
                    data-auth=3D"NotApplicable" moz-do-not-send=3D"true">
                    Learn why this is important</a></span></div>
            </td>
            <td
style=3D"direction: ltr; text-align: left; text-indent: revert; line-heig=
ht: revert; white-space: revert; border-width: revert; border-style: reve=
rt; border-color: revert; background-color: rgb(234, 234, 234); padding: =
7px 5px; word-break: revert; color: rgb(33, 33, 33); width: 75px; height:=
 revert;">
              <br>
            </td>
          </tr>
        </tbody>
      </table>
      <div
style=3D"text-align: left; line-height: 10pt; background-color: rgb(0, 0,=
 0); padding: 2pt; border-width: 1pt; border-style: solid; border-color: =
rgb(0, 0, 0); width: 100%; font-family: &quot;Altice&quot;; font-size: 10=
pt;">
        <span style=3D"color: rgb(255, 255, 255);">Aten=C3=A7=C3=A3o:</sp=
an><span
          style=3D"color: white;">=C2=A0Este email foi originado fora da =
MEO
          SGPS, S.A. Por favor, n=C3=A3o clique em links nem abra anexos,=
 a
          n=C3=A3o ser que conhe=C3=A7a o remetente e saiba que o seu con=
te=C3=BAdo =C3=A9
          seguro.</span></div>
      <div><br>
      </div>
      <p
style=3D"margin: 0in; font-family: &quot;Aptos&quot;, sans-serif; font-si=
ze: 12pt;"><span
          style=3D"font-size: 11pt;">=C2=A0</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">Hi,</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">Recently
          I upgraded UHD driver from 4.7 to 4.8. After the update, I
          discovered my RFNOC application has a new issue. Method
          set_tx_bandwidth() and set_rx_bandwidth no longer works
          properly. A call to get_tx_bandwidth() and get_rx_bandwidth()
          returned 40MHz regardless of the bandwidth parameter specified
          in the set function call. I installed UHD 4.8 FPGA image to my
          X310 properly. =C2=A0I built UHD 4.8 driver source and installe=
d it
          on my development host without any issue. When running the
          same app compiled with UHD 4.7, get_tx_bandwidth() and
          get_rx_bandwidth() returned the same value as the parameter
          specified in the set method call.</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">I
          compiled the UHD RFNOC example application
          rfnoc_radio_loopback with UHD 4.8 library. It produced a
          similar issue.</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">Has
          anyone experienced the same issue on UHD 4.8?</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">In
          some old posts, some people thought set_tx_bandwidth() and
          set_rx_bandwidth() doesn=E2=80=99t do anything if the radio dau=
ghter
          card has a fixed analog bandpass filter. Is it still the case
          for UHD 4.8?</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">The
          radio daughter card WBX-120 has a fixed bandwidth of 40MHz,
          but I would assume set_tx_bandwidth() and set_rx_bandwidth()
          adjust the digital filter bandwidth rather than the analog RF
          bandpass filter.</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">Hardware
          &amp; Software driver used:<br>
          X310, radio daughter card WBX-120.<br>
          UHD 4.8 release installed on the Ubuntu host, UHD 4.8 release
          FPGA (usrp_x310_Fpga_HG.bit) installed on X310.</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">Host
          OS: Ubuntu 24.04 LTS</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">Tom</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">=C2=A0</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">=C2=A0</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">=C2=A0</span></p>
      <p
style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt;=
 margin-left: 0in;">
        <span
style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10.5pt=
; color: rgb(31, 35, 40);">=C2=A0</span></p>
      <hr>
      <div
style=3D"font-family: &quot;Calibri&quot;, sans-serif; font-size: 8pt;">T=
he
        information contained in this e-mail and any attachments from W5
        Technologies, Inc. may contain confidential and/or proprietary
        information, and is intended only for the named recipient to
        whom it was originally addressed. If you are not the intended
        recipient, any disclosure, distribution, or copying of this
        e-mail or its attachments is strictly prohibited. If you have
        received this e-mail in error, please notify the sender
        immediately by return e-mail and permanently delete the e-mail
        and any attachments.</div>
      <br>
      <p class=3D"MsoNormal"><span
style=3D"font-size:9.0pt;mso-fareast-font-family:&quot;Times New Roman&qu=
ot;;
color:black">AVISO DE CONFIDENCIALIDADE
          <br>
          Esta mensagem e quaisquer ficheiros anexos a ela cont=C3=AAm
          informa=C3=A7=C3=A3o confidencial, propriedade do grupo MEO e/o=
u das
          demais sociedades que com ela se encontrem em rela=C3=A7=C3=A3o=
 de
          dom=C3=ADnio, Funda=C3=A7=C3=A3o MEO e MEO ACS, destinando-se a=
o uso
          exclusivo do destinat=C3=A1rio. Se n=C3=A3o for o destinat=C3=A1=
rio
          pretendido, n=C3=A3o deve usar, distribuir, imprimir ou copiar =
este
          e-mail. Se recebeu esta mensagem por engano, por favor informe
          o emissor e elimine-a imediatamente. Obrigado
          <o:p></o:p></span></p>
      <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
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

--------------aJgLIF0VruiAAPHamuPuH1vD--

--===============4303326358253034936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4303326358253034936==--
