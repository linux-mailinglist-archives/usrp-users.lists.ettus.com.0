Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 140A567C1D7
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 01:38:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A404A38430F
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 19:38:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674693480; bh=47MY7529PHsoXv20i3d4AsEhuMhoE2xSTvYsObERwcM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=glhJkQ4act4FIQHkzXBLs2lUtvZox1ga/t9e21NJciW9rleb0j/9ddAulmNYWL2Qd
	 LOZQFT1IK5eBWouULF1Ub6CnSUUGR145Un1z2fdiQo3Y9zhpobDmjXJYMrH9Tv/A2L
	 7INh9jApauPS4WZwErfxeb8vD2z4FFV3/eCzOBnV56+GYcCARRp88GYWmJ3RePGbcj
	 w6aTAjuX9VoZdDqezki6x0JAtuGAuG2CaMmvFoML459eAKWMj+SE1FTTRc8MdX6Jnx
	 mKbYI7UiZoQrFk77HzkR4ZMd1KNX18rEOQ68mFB1u8UKJLHWzsdxUQTKhhjS/4c4K8
	 O3YVjJGgLoYSw==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B5D483842FD
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 19:36:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WNzS8JFP";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id x18so395358qvl.1
        for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 16:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6slKjNknZbtRO0Ti05fMsZkCgVcDW74MwHMg9dLd9J4=;
        b=WNzS8JFPuVuCpORliDd5cj9tn87LmQqZHHe6TPrJgl+o9KCXTb7iu8BozPJVUZSMJ+
         1hHCiEqA4vYB+yL56pR69+L+ffkU7HUtYZFYFAU+YPyst0TDkgg6tyvTa6DI+vJHJwcG
         Fey+5Lr/f1jBHoA45mNIsw3qrgLOVpJc7PlrbQAUSzjamTgr6rbvjRPxNZ634VsqD5JA
         C+cakjRUyJU2lfTEzdsewDoyryuytw612yf6al2ac4eNEfHHu/yNNuNLQZtc4LvI+4/h
         kUYt7cBNzujqaiHdjsymxvGpHVqaWy6mV916Mb3w9STRsBAmadqWwarnGrCec7NDcIcP
         BgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6slKjNknZbtRO0Ti05fMsZkCgVcDW74MwHMg9dLd9J4=;
        b=RxittIRFmiHVgEvSMs53a28mhBKEqOznRphkePtiwwYDxdNP00ASQOrL97Jo4xPOcY
         3mZUi+LJqsOIHpeUsC1xdTBpaqNxTPDCrAUG7QnQg25H/0wNyaD3PMwGurWEs0Vnz4Ij
         ZJa18lB3855rGTA2jjrZ22J8JAOFvFPkpoIs8JGbhKuyJa2vepNW0zCCen8xElgRHR7u
         eatXHAuprfGGVBDnyV+gpSvUsjEMIe90DwUVyGjLs2QdvA8bXetSwDioKg52QpiVL+oY
         PHQLKUYNYAMk6l4weakONKgt1TayGUDIsCcN/uCcQJTIx/A9s6C4pbk/84pf2Pxv4sPM
         hUGA==
X-Gm-Message-State: AFqh2krsArRz7nTU0rwSUGGo3WTpltfitfxn89aB1u7QZ+iwAKXVM2DG
	u4DSHkfUKp1jqE1LL7QTBht9M/rAifs=
X-Google-Smtp-Source: AMrXdXundWBp/kbPb3ut7V08KFC8XcTg///6M401kymSclZLGqGRboRMaFU3ohHrxexskon21bSsVA==
X-Received: by 2002:a05:6214:4509:b0:532:2a45:46fd with SMTP id oo9-20020a056214450900b005322a4546fdmr59441064qvb.51.1674693403849;
        Wed, 25 Jan 2023 16:36:43 -0800 (PST)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id w1-20020a05620a128100b006cebda00630sm4542590qki.60.2023.01.25.16.36.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jan 2023 16:36:43 -0800 (PST)
Message-ID: <03a41b4a-4c97-84e6-ed4e-b614638282f9@gmail.com>
Date: Wed, 25 Jan 2023 19:36:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAGA=HFc6SGvNWmQtqMsh3uY6Ez+U_F3y0CGSmvAs=8zc7+O37A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAGA=HFc6SGvNWmQtqMsh3uY6Ez+U_F3y0CGSmvAs=8zc7+O37A@mail.gmail.com>
Message-ID-Hash: BNTS3SULPOZFOWPNUY7RTX5GNORCQ6T7
X-Message-ID-Hash: BNTS3SULPOZFOWPNUY7RTX5GNORCQ6T7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with replay_capture.py
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BNTS3SULPOZFOWPNUY7RTX5GNORCQ6T7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5269987644367121925=="

This is a multi-part message in MIME format.
--===============5269987644367121925==
Content-Type: multipart/alternative;
 boundary="------------yvw8RfjBNLWOAkAIM7lgpxWc"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------yvw8RfjBNLWOAkAIM7lgpxWc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/01/2023 16:16, Uri M wrote:
>
> Hi all,
>
> I'm running into some trouble with the replay_capture.py example. When 
> I try to use multiple channels, I keep getting the same samples in all 
> of them.
>
> I've tried all the file file format options.
>
> Note that the samples of channel 1 are good.
>
> If anyone has any ideas, I'd really appreciate the help.
>
> Thanks!
>
> -Uri
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
What radio did you use it with, and what arguments did you supply?


--------------yvw8RfjBNLWOAkAIM7lgpxWc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/01/2023 16:16, Uri M wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGA=3DHFc6SGvNWmQtqMsh3uY6Ez+U_F3y0CGSmvAs=3D8zc7+O37A@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-b=
ox;margin:1.25em 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-s=
erif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell=
,&quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;=
Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&=
quot;,&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;ba=
ckground-color:rgb(247,247,248)">Hi all,</p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-b=
ox;margin:1.25em 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-s=
erif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell=
,&quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;=
Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&=
quot;,&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;ba=
ckground-color:rgb(247,247,248)">I'm running into some trouble with the r=
eplay_capture.py example. When I try to use multiple channels, I keep get=
ting the same samples in all of them. </p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-b=
ox;margin:1.25em 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-s=
erif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell=
,&quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;=
Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&=
quot;,&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;ba=
ckground-color:rgb(247,247,248)">I've tried all the file file format opti=
ons. </p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-b=
ox;margin:1.25em 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-s=
erif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell=
,&quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;=
Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&=
quot;,&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;ba=
ckground-color:rgb(247,247,248)">Note that the samples of channel 1 are g=
ood.</p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-b=
ox;margin:1.25em 0px 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sa=
ns-serif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Canta=
rell,&quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&q=
uot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Sym=
bol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wra=
p;background-color:rgb(247,247,248)">If anyone has any ideas, I'd really =
appreciate the help. </p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-b=
ox;margin:1.25em 0px 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sa=
ns-serif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Canta=
rell,&quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&q=
uot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Sym=
bol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wra=
p;background-color:rgb(247,247,248)">Thanks!</p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-b=
ox;margin:1.25em 0px 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sa=
ns-serif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Canta=
rell,&quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&q=
uot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Sym=
bol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wra=
p;background-color:rgb(247,247,248)">-Uri</p>
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
    What radio did you use it with, and what arguments did you supply?<br=
>
    <br>
    <br>
  </body>
</html>

--------------yvw8RfjBNLWOAkAIM7lgpxWc--

--===============5269987644367121925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5269987644367121925==--
