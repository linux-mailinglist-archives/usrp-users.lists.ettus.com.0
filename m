Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AF0497393
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 18:28:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 697983846C4
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 12:28:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aAfazsx2";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 3BF4F3845E5
	for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 12:27:24 -0500 (EST)
Received: by mail-qk1-f173.google.com with SMTP id d24so17173519qkk.5
        for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 09:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=ID8fzpquqZPOIDhjjs7EH7236ypFaAtGmtpxKg3pDLM=;
        b=aAfazsx2iOpx4tUS1znhZtb4JflsrEXgDmB8BGGpeFRvPO/bXY4P34c7HfGCyfRsq9
         jUMx9pwmihXtt1qyzDOIfVugpgZDCSxBVAF4a56in7Hi7/2uM36u9/BOFlDc+AOWkMEe
         BeQUFR7u5dK5bMvTclVwJoE/n6QQkkT7FhZuSJ9ceqDWVjL66fu2TgslfgMZbNWC9lZl
         /Q1AYUtraLrMp0Wljty4W/dy9t3qZedlQB7vP/oFFpMgsdX/1M15RrqZyT0AhUWaPpIB
         FqFdo0wFmSRifjaYo0U1Hocz5bqHelFKEx0s7b3e6ghEDrZn+eL1gCtgoMsQQV5cksFW
         O5RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=ID8fzpquqZPOIDhjjs7EH7236ypFaAtGmtpxKg3pDLM=;
        b=H2Zxs3bguWR8OQCS+WYoUpxZRAIa1Y0R/YDksbT97MExcKmgx4RAv8Qy6+KkDPoKGE
         fJEht31D+8vgnch0NPhKzcDaRErGB+8q0Uek/M8YD6PkGu3yWVMAfH9t0JaGG3BBpGtP
         Z52WlyiC9RokoaJGHK7TjW/JKvHBOdQb1ysgUyxNmJzITxPmQ9WYGcQ6sWWYFXCfq0on
         divuRJ9qINE9K6hRs1+NwS+4nPqr29ACKoE0kF5MzJ1DuH4rFhBjnlw/CebOmZM0D9gh
         E8oDzKeXB7nPbt8vHfy0fobsNnJmN6HGB7OKZtjieXZFA/14YTSOw7/L+QbMMG59/Z7F
         7/jw==
X-Gm-Message-State: AOAM533Rac3xZAditE1uMuQR8RC/fTalfLbTM+CI1YN1ZNGMKlgsqnvy
	8krwIptHg7p8xSWvPeiTFLGuonztlNptmQ==
X-Google-Smtp-Source: ABdhPJwl57wkS7wXKUsEanbk5vjemx4TnFy21mJJ2Icf0fnRm5V4B59wa2r3RFq/CTseHCRgiGL4/A==
X-Received: by 2002:a05:620a:e0e:: with SMTP id y14mr8486130qkm.760.1642958843680;
        Sun, 23 Jan 2022 09:27:23 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id c11sm6088912qte.28.2022.01.23.09.27.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jan 2022 09:27:22 -0800 (PST)
Message-ID: <e21e0da1-e55f-230f-a0a8-abccfa64220c@gmail.com>
Date: Sun, 23 Jan 2022 12:27:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: bertalan.eged@sagaxcommunications.com, usrp-users@lists.ettus.com
References: <074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com>
 <3bef9952-3782-dace-bc6b-f32843ab6469@gmail.com>
 <002901d81059$502b5320$f081f960$@sagaxcommunications.com>
 <8bd2fc98-7216-937e-8710-58f15157818d@gmail.com>
 <005c01d8107b$2cb85790$862906b0$@sagaxcommunications.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <005c01d8107b$2cb85790$862906b0$@sagaxcommunications.com>
Message-ID-Hash: TBQNGS4V3NFEKGFFYXRCJ5QTZHK2JOMJ
X-Message-ID-Hash: TBQNGS4V3NFEKGFFYXRCJ5QTZHK2JOMJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 reachable no error windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TBQNGS4V3NFEKGFFYXRCJ5QTZHK2JOMJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8965610177677480302=="

This is a multi-part message in MIME format.
--===============8965610177677480302==
Content-Type: multipart/alternative;
 boundary="------------6w8opSAQsoFWuK0YJEAv0vqS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6w8opSAQsoFWuK0YJEAv0vqS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-01-23 12:03, bertalan.eged@sagaxcommunications.com wrote:
>
>
> It seems to be that the N300 is permanently available for the embedded 
> computer,
>
> However I like to use it in *networked mode* with an external, more 
> prowerful computer.
>
> It is written that MPM is responsible for that:
>
> USRP Hardware Driver and USRP Manual: The Module Peripheral Manager 
> (MPM) Architecture (ettus.com) 
> <https://files.ettus.com/manual/page_mpm.html>
> however I was not able to understand how it works, and how can I 
> switch between embedded vs networked mode.
>
> This is what I am looking for to switch my device from embedded to 
> networked mode of operation.
>
> Tks,
>
> /Bertalan
>
You simply establish a session from an external host, there's no special 
"configuration switching" that needs to happen.

AGAIN, PLEASE:

What does:

ping 192.168.10.2

yield from your host PC?


--------------6w8opSAQsoFWuK0YJEAv0vqS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-23 12:03,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:bertalan.eged@=
sagaxcommunications.com">bertalan.eged@sagaxcommunications.com</a> wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:005c01d8107b$2cb85790$862906b0$@sagaxcommunications.com=
">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Helv;
	panose-1:2 11 6 4 2 2 2 3 2 4;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Times New Roman \,serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.E-mailStlus18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.E-mailStlus19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-mailStlus20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-G=
B"><o:p>=C2=A0</o:p></span></p>
        <br>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;color:#1F497D">It seems to be that the
            N300 is permanently available for the embedded computer,<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;color:#1F497D">However I like to use it in
            <b>networked mode</b> with an external, more prowerful
            computer.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;color:#1F497D">It is written that MPM is
            responsible for that:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><a
            href=3D"https://files.ettus.com/manual/page_mpm.html"
            moz-do-not-send=3D"true">USRP Hardware Driver and USRP Manual=
:
            The Module Peripheral Manager (MPM) Architecture (ettus.com)<=
/a><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><br>
            <span style=3D"color:#1F497D">however I was not able to
              understand how it works, and how can I switch between </spa=
n></span><span
            style=3D"color:#1F497D">embedded vs networked mode.<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">This is what=
 I
            am looking for to switch my device from embedded to
            networked mode of operation.</span><span
            style=3D"color:#1F497D">=C2=A0</span><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;color:#1F497D"><o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;color:#1F497D">Tks,<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">/Bertalan<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
      </div>
    </blockquote>
    You simply establish a session from an external host, there's no
    special "configuration switching" that needs to happen.<br>
    <br>
    AGAIN, PLEASE:<br>
    <br>
    What does:<br>
    <br>
    ping 192.168.10.2<br>
    <br>
    yield from your host PC?<br>
    <br>
    <br>
  </body>
</html>

--------------6w8opSAQsoFWuK0YJEAv0vqS--

--===============8965610177677480302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8965610177677480302==--
