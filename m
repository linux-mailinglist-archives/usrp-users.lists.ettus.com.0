Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D134126FB
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 21:42:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 183C438479F
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 15:42:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hSte461p";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 37F023842CF
	for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 15:41:23 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id t4so46715193qkb.9
        for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 12:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=i62tSHx1vwfnOe/h1X6aHPgpRnLXB27Ca89afUaUP1k=;
        b=hSte461pA3yUjB+6iWvsbRAKjOk6se+dvfqDOb5Kj+G0116OjZ4doflURozG6SPkUU
         wDPtyYhZou+iqFphGwpDwH40YKA1nfa7wPek7xIbX67dXi2p0tkj1tpmh8OXj9n1IVXW
         HHtqsEA60oYsqpEky30LGnfzTWaTXSzG4He1A+CC/gmhwgeXnYb7d6LVam5Bii4zh7T8
         2EFodUq8V2UiPRmo/vYK44PIt1Nr/DPgVOUXR8KlQfXecAmYPgJggl79ZT8c1vRVpfjI
         OcxN/vuX3Nxm2S7XIZk7FokWp+0be+fE0lUMUHdwPZq9Xy8JfruMiPaRD2AtxaQQI+PD
         +1Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=i62tSHx1vwfnOe/h1X6aHPgpRnLXB27Ca89afUaUP1k=;
        b=TbjGjgRRFtdA+Um+Dbj4dHqY3c2/JiaZ9fbWkxV9bGFl3svM8SaJeZz5sLGTXGzR5c
         gMxKVGNe14HO7nkIxFzyhO9zy8UiOp1VAL7aguJzIPQ0KmoCZAENsa5l4iPX15V4Tr6F
         eOT4MZiAjwVwWrlUEhZscXp9OM+nD/TlYgOF+uD9phwL4Zn91zSJxsw7RzfkuM8yNK8K
         xVztInGITWR49KZlO/JaJ0ME+IdP/ypCXTRf65JFJXOw6+Y1pV9jAkwtalsX3bZEp1VG
         v1oVJP5J1HWRuVvFI8OU6doUj5ajBu4CFWSBRXkeuwUNWYy7rEnAzo9HIph0qZOLwITS
         +l5w==
X-Gm-Message-State: AOAM533BXNoy3DNwBbdJAR57YhT9kePF/ewC8drSwE/c8Zr8vktBkj/8
	x3Id4gvskvZ8s/kW+f8o+e1SM10EEt3sTQ==
X-Google-Smtp-Source: ABdhPJzYC3HNR7A1c/MvMJPir8sF1VXVzDm73oaFjjJN97hY2rzwu+bkf7iJnPA8K4D2Xq3Hm6Ac9Q==
X-Received: by 2002:a37:356:: with SMTP id 83mr12320097qkd.110.1632166882463;
        Mon, 20 Sep 2021 12:41:22 -0700 (PDT)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id p22sm11837526qkj.16.2021.09.20.12.41.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 12:41:22 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <006201d7ae5d$5aa3e140$0feba3c0$@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <dde4a916-ff08-a148-0ad6-8bf930004238@gmail.com>
Date: Mon, 20 Sep 2021 15:41:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <006201d7ae5d$5aa3e140$0feba3c0$@gmail.com>
Content-Language: en-US
Message-ID-Hash: VM6BW5CDHLDYOTI2LXLPHWWXVLGEKZ2Y
X-Message-ID-Hash: VM6BW5CDHLDYOTI2LXLPHWWXVLGEKZ2Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO initial phase changes when calling get_tx_streamer/get_rx_streamer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VM6BW5CDHLDYOTI2LXLPHWWXVLGEKZ2Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2309735453416774692=="

This is a multi-part message in MIME format.
--===============2309735453416774692==
Content-Type: multipart/alternative;
 boundary="------------C3F8E13A965902CEEE109F30"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C3F8E13A965902CEEE109F30
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-09-20 4:23 p.m., zhang.weit3@gmail.com wrote:
>
> Hi,
>
> I am playing with the B2XX series boards. I noticed that the LO 
> initial phase got changed when calling the API /get_tx_stream/ (or 
> /get_rx_stream/), which means the PLL or LO are initialized. Why this 
> stream command is related to the LO settings? I would expect it is 
> only related to the baseband and there will be no change to the RF 
> settings. Does anyone know the reason? Thanks!
>
> Regards,
>
> West
>
>
There's a DDC in the FPGA, and it's possible that the phase-accumulator 
is reset when a new stream is created.



--------------C3F8E13A965902CEEE109F30
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-20 4:23 p.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zhang.weit3@gm=
ail.com">zhang.weit3@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:006201d7ae5d$5aa3e140$0feba3c0$@gmail.com">
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
        <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">I am playing with the B2XX series boards. =
I
          noticed that the LO initial phase got changed when calling the
          API <i>get_tx_stream</i> (or <i>get_rx_stream</i>), which
          means the PLL or LO are initialized. Why this stream command
          is related to the LO settings? I would expect it is only
          related to the baseband and there will be no change to the RF
          settings. Does anyone know the reason? Thanks!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Regards,<o:p></o:p></p>
        <p class=3D"MsoNormal">West =A0<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    There's a DDC in the FPGA, and it's possible that the
    phase-accumulator is reset when a new stream is created.<br>
    <br>
    <br>
  </body>
</html>

--------------C3F8E13A965902CEEE109F30--

--===============2309735453416774692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2309735453416774692==--
