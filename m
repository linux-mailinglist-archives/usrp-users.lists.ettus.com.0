Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F82A3FF86D
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 02:42:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75C703843E7
	for <lists+usrp-users@lfdr.de>; Thu,  2 Sep 2021 20:42:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DcukzvH7";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 91854384241
	for <usrp-users@lists.ettus.com>; Thu,  2 Sep 2021 20:42:10 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id s15so3246511qta.10
        for <usrp-users@lists.ettus.com>; Thu, 02 Sep 2021 17:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=WWt/ARRqXRqvroRI3ZibQaTPpK3ONfQYnEcwViwDa0M=;
        b=DcukzvH78NW3Z/8jEj0WcHQKrYkzEEitujvMPcCZosgoejXSYlNtPUc3mAoR+XM9RJ
         7qlVhWCGkhzPaSd4HFdAG90ACooRA9N/RRSxbtcHtjWXX31AnJM1yzdvmfsaw7rl1tdC
         L0yHUlp3x1k0Lzr/9Exv8QawVya6e647E2EX0//Gdb0BvOzCjAi3nF27F+LWBjrhrD88
         tndRhM7OpTyrXO0/XlIB3vE55w4Eujp+/rFt8S+M0ixJ54Z+56vEwo22qLZQrK/VAj4I
         tjuMLrq5LPDUTs0hJHqZQyT4nlu5g0WW5W65VApoctK3VWunBjrkAoFcxrGBIMvaZbW8
         ECog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=WWt/ARRqXRqvroRI3ZibQaTPpK3ONfQYnEcwViwDa0M=;
        b=gkYpciilEu3KtFtOiZktdyxc/LwcbDUkZxYHSnudYHIEhKDQD7lLnfkLe758MUIx5J
         kWqjr/s7uAl2zgToXrFl65jzzB5aPILvudySSyIMLXktHKpn3diAgVypA7vcBpmw95Tx
         7ronh9CSC+oqCbHxDxgHVY63RnZpZ7D2ibRfM86fNqxI1Jd7qTgk7bN0KAslHTCZVthH
         TRbMmfagumj9uLaSmvaw5SjN0oOAvvzlZ7k5mGVh53SmBAKxXJIpTusVAXa0RChnf6cV
         PdkWxxDO0+wpJozJK14l9qx7apBY+6UjD/Yfp+LDj5e2aJB5jkMe+T9Jza4gSqqpISdk
         1ykA==
X-Gm-Message-State: AOAM531vM4IqlOEl2RIwi0FxPdO+XsXJqAvv+wyhD6mqBbQVDEfHgbgX
	uLYSh/GRfvT7mydVIikgsGEbzcxmfHP25Q==
X-Google-Smtp-Source: ABdhPJySVXVknAf4YntDuzSFgK/61t6Aqw0yy7dZTi2/BM3m0Y7QO2smfsI3tJLaJ4XGnC03JB/w2g==
X-Received: by 2002:ac8:7b5b:: with SMTP id m27mr1247079qtu.316.1630629729760;
        Thu, 02 Sep 2021 17:42:09 -0700 (PDT)
Received: from [192.168.2.231] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id y29sm2277871qtm.4.2021.09.02.17.42.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Sep 2021 17:42:09 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <003201d7a05d$72cd5160$5867f420$@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <447e5cf4-ef54-a253-9a30-7ec6b75309d5@gmail.com>
Date: Thu, 2 Sep 2021 20:42:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <003201d7a05d$72cd5160$5867f420$@gmail.com>
Content-Language: en-US
Message-ID-Hash: ZOQZQDPWZS6BWZ2NPBG4VVZ7CSTT7EJR
X-Message-ID-Hash: ZOQZQDPWZS6BWZ2NPBG4VVZ7CSTT7EJR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Absolute Tx/Rx delay of USRP B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZOQZQDPWZS6BWZ2NPBG4VVZ7CSTT7EJR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1831567674356845161=="

This is a multi-part message in MIME format.
--===============1831567674356845161==
Content-Type: multipart/alternative;
 boundary="------------FE76A84D2A91B8341B1E229E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FE76A84D2A91B8341B1E229E
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-02 8:48 p.m., zhang.weit3@gmail.com wrote:
>
> Hi all,
>
> I did a loopback test and can measure the relative delay between the=20
> Tx and Rx, which is about 10us. It means that, if the Tx and Rx are=20
> triggered at 0sec by setting the start time in software, the absolute=20
> start time of the Rx will be *T0*, and the absolute start time of the=20
> Tx will be *T0+10us*. Here, *T0* is the absolute delay. But how much=20
> will it be? Thank you very much for your help!
>
> Jack
>
>
The RX sample frames have timestamps on them, so once you've removed=20
host latency from the picture using timed streaming commands in both=20
directions, you can
 =A0 simply measure in the sample stream you receive.


The inside-the-radio latency will vary based on commanded sample-rate,=20
and different versions of the radio firmware, which will have=20
different-structured
 =A0 filters, with different group delays.=A0 Best is to measure for a gi=
ven=20
configuration, and compensate appropriately.=A0 Because the B210 has a=20
very large
 =A0 number of possible sample rates, and the DSP filters inside it do=20
change from time to time with different firmware releases, etc.


--------------FE76A84D2A91B8341B1E229E
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-02 8:48 p.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zhang.weit3@gm=
ail.com">zhang.weit3@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:003201d7a05d$72cd5160$5867f420$@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">I did a loopback test and can measure the
          relative delay between the Tx and Rx, which is about 10us. It
          means that, if the Tx and Rx are triggered at 0sec by setting
          the start time in software, the absolute start time of the Rx
          will be <b>T0</b>, and the absolute start time of the Tx will
          be <b>T0+10us</b>. Here, <b>T0</b> is the absolute delay.
          But how much will it be? Thank you very much for your help!<o:p=
></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Jack<o:p></o:p></p>
        <br>
      </div>
    </blockquote>
    The RX sample frames have timestamps on them, so once you've removed
    host latency from the picture using timed streaming commands in both
    directions, you can<br>
    =A0 simply measure in the sample stream you receive.<br>
    <br>
    <br>
    The inside-the-radio latency will vary based on commanded
    sample-rate, and different versions of the radio firmware, which
    will have different-structured<br>
    =A0 filters, with different group delays.=A0 Best is to measure for a
    given configuration, and compensate appropriately.=A0 Because the B21=
0
    has a very large<br>
    =A0 number of possible sample rates, and the DSP filters inside it do
    change from time to time with different firmware releases, etc.<br>
    <br>
  </body>
</html>

--------------FE76A84D2A91B8341B1E229E--

--===============1831567674356845161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1831567674356845161==--
