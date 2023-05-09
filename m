Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB1F6FCB48
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 18:27:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8B8A380F67
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 12:27:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683649634; bh=P/X2ckpJzWF0X19/QqtonT2IE1cgE6e9nKKN44hp++c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EYp2ABXalEz4VYv8APKq5uHwOvgYJYB0X/8KLtlRdeqrKCPNHSqe+MBPqLThWkLd8
	 qcFdrCSoc7h/VNF/3CNgdpjoMPOh1XY3EqadLPhwgaiFqYanmgQ52RNUc44fF/VHa1
	 NMCfEPKPlHdwjU2sqAsP0wFY7KJjFEYcvGgT4oDSkbnQGggPbrsxtOsc18toJe3YHe
	 xX3KW2oesKVKW/6eP+zYEGo3kiXwR4Ks/J7Q3w+RXwHMlPn7v0C6GCBYu5XEDmBK+B
	 /gwdVmvVFOcQW7x6OwX7QUQwK5E40M4PiDAcNRGwcwrY+j1ruJH5OsMLmdC+OmpgA0
	 k/gsXZAp92pFg==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E735380F67
	for <usrp-users@lists.ettus.com>; Tue,  9 May 2023 12:26:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ChzNEFTR";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-61b58779b93so57389056d6.0
        for <usrp-users@lists.ettus.com>; Tue, 09 May 2023 09:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683649594; x=1686241594;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jRIyswOgFg+EibgX9/F4+AkoRnkPA3ozUj7AzaSLij8=;
        b=ChzNEFTRNc6ePFRO7Gqhb6zgsEE6NSdHtzPJXPhGbqPZ4+10fkZ8vINyW/FycRoojA
         bhFC5xAk1GS0Pr60B3nlN4jwiTBEvDYwFhk5Zgh12iMkdRU5wn5Hg27LEL5xjyJhOd+1
         As/W6TnccoKIFtO2a5vtXN1I9zSaJc1RVk+Mr3CQiikn4uEb2bGQb5TlY0MMf4eW6Kbd
         GvUqd0qUPFK/3kdTdeLcyMZ1YgMJB2TMgYM7wIeM+4ZbbE367d2jrbcheZuR56RG3rKn
         zFYVZFj0NWx45meWOqUoliw45SqKIDsv/vHgOPwY4X6bFhGM3gXBDeT4EMVyk1braQK3
         aycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683649594; x=1686241594;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jRIyswOgFg+EibgX9/F4+AkoRnkPA3ozUj7AzaSLij8=;
        b=bVqUiZlGaex8Pt1ywq0ecXrUWTqSMDjb1xC/5YLSCQdwq1WAt90sWjtkyIUilpYZTC
         w3wKVPaIlAE6KWG6skyWMHOVh9EiifhE2n2i88RyYajxMn2CsX6MW9DT6BETIyuEtDq+
         PBIl+Gd2vz9m9HtW7LPO6fkOqBmDJYYrqp/AFrNGX36Ln0+RU1eTiu4ub6TRDs4b4Ba6
         Le10DVkTi+VxMLWMPRrmkaQNpcPb2paTx8Vw0mzPJ0LdgWiczLdJwwf6p5glHEAEUo38
         V62NMoOao2tC8M06qAigaHHDbRmQu7zlaacHhWF42sDEOl8DiiRk6PmPXYwB5VqcVXmd
         bVTw==
X-Gm-Message-State: AC+VfDzg75XtpxXJwZWyd+3ooDhLr47fcioKxe3VI878ota+Swm2Rodi
	byUpMR8E999VtcG691PDOWN8LI7FFXs=
X-Google-Smtp-Source: ACHHUZ7xkKEX/mY5pID1Xkxv1E3kKoyvzVxloWWI/n/NaE2bCikEv4c5TLZDwvXXmbxP9V2Z2WWFYA==
X-Received: by 2002:a05:6214:212e:b0:5ef:4367:7b18 with SMTP id r14-20020a056214212e00b005ef43677b18mr24504197qvc.39.1683649594473;
        Tue, 09 May 2023 09:26:34 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id c16-20020a0cca10000000b0061b721f27b3sm854785qvk.123.2023.05.09.09.26.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 09:26:34 -0700 (PDT)
Message-ID: <c215628a-03a8-fd64-acb0-c16e21f82181@gmail.com>
Date: Tue, 9 May 2023 12:26:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com>
 <1556054227.3356110.1683649305159@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1556054227.3356110.1683649305159@mail.yahoo.com>
Message-ID-Hash: CFPU42S4XZBRETTCLNGAW6Y2NUXJMP55
X-Message-ID-Hash: CFPU42S4XZBRETTCLNGAW6Y2NUXJMP55
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't find calibration file for X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CFPU42S4XZBRETTCLNGAW6Y2NUXJMP55/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7952712231424517529=="

This is a multi-part message in MIME format.
--===============7952712231424517529==
Content-Type: multipart/alternative;
 boundary="------------iVSDpdgDHwLmTUAvBQQoQQZE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------iVSDpdgDHwLmTUAvBQQoQQZE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/05/2023 12:21, zhou via USRP-users wrote:
> Hi,
>
> I installed UHD 4.4 for X310 and calibrated USRPs, but I can't find 
> the expected .cal file under ${HOME}/.local/share/uhd/cal/. Actually, 
> there is no ${HOME}/.local/share/uhd/ directory.
>
> What can be wrong?
>
> Thanks for any help,
> Hongwei
>
>
It could be that your desktop environment stores local config and data 
files in another place.

What commands did you use to create the cal files?



--------------iVSDpdgDHwLmTUAvBQQoQQZE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/05/2023 12:21, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1556054227.3356110.1683649305159@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpf691e441yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div>Hi,</div>
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I installed UHD 4.4 for X3=
10
          and calibrated USRPs, but I can't find the expected .cal file
          under=C2=A0<span><span style=3D"color: rgb(0, 0, 0); font-famil=
y:
              monospace; font-size: 14px;">${HOME}/.local/share/uhd/cal/.
              Actually, there is no=C2=A0<span><span style=3D"color: rgb(=
0, 0,
                  0); font-family: monospace; font-size: 14px;">${HOME}/.=
local/share/uhd/
                  directory.</span></span></span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: monospace; font-size: 14px;"><sp=
an><span
                  style=3D"color: rgb(0, 0, 0); font-family: monospace;
                  font-size: 14px;"><br>
                </span></span></span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: monospace; font-size: 14px;"><sp=
an><span
                  style=3D"color: rgb(0, 0, 0); font-family: monospace;
                  font-size: 14px;">What can be wrong?</span></span></spa=
n></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: monospace; font-size: 14px;"><sp=
an><span
                  style=3D"color: rgb(0, 0, 0); font-family: monospace;
                  font-size: 14px;"><br>
                </span></span></span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: monospace; font-size: 14px;"><sp=
an><span
                  style=3D"color: rgb(0, 0, 0); font-family: monospace;
                  font-size: 14px;">Thanks for any help,</span></span></s=
pan></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: monospace; font-size: 14px;"><sp=
an><span
                  style=3D"color: rgb(0, 0, 0); font-family: monospace;
                  font-size: 14px;">Hongwei</span></span></span></span></=
div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: monospace; font-size: 14px;"><sp=
an><span
                  style=3D"color: rgb(0, 0, 0); font-family: monospace;
                  font-size: 14px;"><br>
                </span></span></span></span></div>
      </div>
      <br>
    </blockquote>
    It could be that your desktop environment stores local config and
    data files in another place.<br>
    <br>
    What commands did you use to create the cal files?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------iVSDpdgDHwLmTUAvBQQoQQZE--

--===============7952712231424517529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7952712231424517529==--
