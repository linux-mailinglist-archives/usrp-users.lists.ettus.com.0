Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDE7453890
	for <lists+usrp-users@lfdr.de>; Tue, 16 Nov 2021 18:31:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2225A3840A0
	for <lists+usrp-users@lfdr.de>; Tue, 16 Nov 2021 12:31:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ah6VVm/x";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id C796A383E0F
	for <usrp-users@lists.ettus.com>; Tue, 16 Nov 2021 12:30:53 -0500 (EST)
Received: by mail-qt1-f169.google.com with SMTP id j17so19731938qtx.2
        for <usrp-users@lists.ettus.com>; Tue, 16 Nov 2021 09:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=EMMRB0+c92gvrh5XAlZr4LLYDqXCqrpb6w45XBf/apg=;
        b=Ah6VVm/xL0F/ZkXeK/Tx6ifAHcnGvH7PU8l4IlY9vEexi4/WU07i1sH+GKnhy8x/ad
         KP2bff+IJp0PTZcF80Zz0kTwy2BXBzZt83V83IIL4i+aE5Dtt813h4F51PXhnrFgwnbz
         6Yn5nwnwfuZ0k3AhUaasRwMMnbJZNxZyz7aEtrm+oqZThykIGIHxXWmr+F3oVAyE9PiH
         2YPK+/Uu2ZRkvrB62jnT4VGN2UFOuq2gFyRZV6jhJ8G3/qwLqThWL8dHIabog11gHiZK
         qMVQGnYMQIhSXfLhwmtBIhPeKOHBXJaLdvI4ltuhyYilvbc5KBGsjzLU3fqDBOnl+n5f
         HvFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=EMMRB0+c92gvrh5XAlZr4LLYDqXCqrpb6w45XBf/apg=;
        b=SvrN5kLWDtVXtdV+NDQX0Oh387XBIUXFTQnlMRNHQTeja8JemO8PeTtazQrC4IeQ6G
         AkhqdhW8K4IZWxM2ArpVszGAg5YWw9R11HXnz487X3sQDJWa7igYjQQHJHG9rEacQZEg
         4nUbYEJ8RjGACzv81z+KEcZb9Lfm7XDZyYlg2CGCNKhJLYAIWqKxU0utbttMmnJOTg39
         EZOOnYsZ/uIQRSlChI5dVougWx91Ak6I7U0c2fMBY2HJdD7BN/2fP3ZqIxTXhBVvXxCX
         Rdca5p8rLiw+NWT3LbOKlgfO6+pgAzYCCnNZLMVtZ8vXO9Puv5O7YitisMxAmeey91IM
         g5sA==
X-Gm-Message-State: AOAM532V4hhtyTaKNt1vNVC6Jl0uigxuUTPS2CvjSL9NBA70KdRielVU
	B/MFIDGaNGc4DFTxLlFpays=
X-Google-Smtp-Source: ABdhPJxfKDS+fpx6IC9huv/c4i6MbkDB2s/xpA/cPw4zXaa8tg5zDG39zmUB7vdeS9/JC63Pt7XSqQ==
X-Received: by 2002:a05:622a:1aa5:: with SMTP id s37mr9218931qtc.377.1637083853098;
        Tue, 16 Nov 2021 09:30:53 -0800 (PST)
Received: from [192.168.2.219] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id t11sm7486687qtx.48.2021.11.16.09.30.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Nov 2021 09:30:52 -0800 (PST)
Message-ID: <836ea247-5c8d-c5cd-86d9-78372ef7f99e@gmail.com>
Date: Tue, 16 Nov 2021 12:30:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Guillermo Ortas Delgado <g.ortas@gmv.com>, Rob Kossler <rkossler@nd.edu>
References: <d636bd419e2548878b27baeacbca4b39@gmv.com>
 <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
 <CAB__hTQY491Q0xiYWY75hTpbEV3u744uYMr9EK3xk-R-Lzy+RQ@mail.gmail.com>
 <1e81a40f9ccc4a15be101a63c926b8f7@gmv.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1e81a40f9ccc4a15be101a63c926b8f7@gmv.com>
Message-ID-Hash: N7CAFZMDCESJO7EAJ2AYYMK2XKFRNI24
X-Message-ID-Hash: N7CAFZMDCESJO7EAJ2AYYMK2XKFRNI24
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N7CAFZMDCESJO7EAJ2AYYMK2XKFRNI24/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5212555752176049655=="

This is a multi-part message in MIME format.
--===============5212555752176049655==
Content-Type: multipart/alternative;
 boundary="------------7oZq0jwE3AMoOpq2olyOwy32"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7oZq0jwE3AMoOpq2olyOwy32
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-16 03:11, Guillermo Ortas Delgado wrote:
>
> No reason, just testing for the maximum supported MTU by DPDK. Any=20
> higher than that will throw an error. Setting the parameter to 9000=20
> doesn=E2=80=99t make any difference wrt to 9600, or even a lower value =
in my case.
>
> Also, I have observed this behavior when trying to increase the=20
> descriptors
>
> =C2=B7dpdk_num_mbufs=3D4096and dpdk_num_desc=3D2048=C3=A0benchmark_rate=
fails to=20
> launch (gets stuck after [INFO] [X300] X300 initialization sequence...)
>
> =C2=B7dpdk_num_mbufs=3D8192and dpdk_num_desc=3D2048=C3=A0benchmark_rate=
=C2=A0launches and=20
> completes, but throws plenty of errors in the process saying=20
> bnxt_rx_pkt(): mbuf alloc failed, dropping plenty of samples (i.e. 3%)=20
> even at 25Msps and timeouts happen.
>
> =C2=B7dpdk_num_mbufs=3D32768and dpdk_num_desc=3D4096=C3=A0benchmark_rat=
elaunches and=20
> completes with no error messages, but drops plenty of samples (i.e.=20
> 3%) even at 25Msps, but no timeouts.
>
> All of the above happens with the [INFO] [X300] Maximum frame size:=20
> 1556 bytesmessage that started this thread.
>
> bnxtis the driver that DPDK loads to manage the eight (8) Broadcom=20
> BCM57414 NetXtreme-E 10Gb network interfaces that I have to manage my=20
> four (4) USRPs X310. For this test I=E2=80=99m just using two interface=
s for a=20
> single x310.
>
> Any ideas?
>
> Best,
>
> Guillermo
>
>
*So, for DPDK 18.11, which is the version supported by current UHD, I=20
see NO evidence that DPDK even supports the bnxt driver--only Intel and=20
Mellanox.

But I understand that can be mis-leading.=C2=A0 The fact that it was neve=
r=20
tested against a given 10G NIC driver doesn't mean that it won't work.

https://doc.dpdk.org/guides-19.08/rel_notes/release_18_11.html#

*
--------------7oZq0jwE3AMoOpq2olyOwy32
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-16 03:11, Guillermo Ortas
      Delgado wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1e81a40f9ccc4a15be101a63c926b8f7@gmv.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Webdings;
	panose-1:5 3 1 2 1 5 9 6 7 3;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}p.MsoListParagraph, li.MsoListParagraph, div.=
MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.EstiloCorreo17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.EstiloCorreo18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">No reason, just testing for the maximum
            supported MTU by DPDK. Any higher than that will throw an
            error. Setting the parameter to 9000 doesn=E2=80=99t make any
            difference wrt to 9600, or even a lower value in my case.<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Also, I have observed this behavior when tryin=
g
            to increase the descriptors<o:p></o:p></span></p>
        <p class=3D"MsoListParagraph"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !=
supportLists]--><span
style=3D"font-size:11.0pt;font-family:Symbol;color:#1F497D;mso-fareast-la=
nguage:EN-US"
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">dpdk_num_mbufs=3D4096</span><span
style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">
          </span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">and
          </span><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">dpdk_num_desc=3D2048</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">
          </span><span
            style=3D"font-family:Wingdings;mso-fareast-language:EN-US"
            lang=3D"EN-US">=C3=A0</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">
          </span><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">benchmark_rate</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"> fails to launch (gets stuck after </span><spa=
n
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">[INFO] [X300] X300 initialization sequence...<=
/span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">)<o:p></o:p></span></p>
        <p class=3D"MsoListParagraph"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !=
supportLists]--><span
style=3D"font-size:11.0pt;font-family:Symbol;color:#1F497D;mso-fareast-la=
nguage:EN-US"
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">dpdk_num_mbufs=3D8192</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"> and </span><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">dpdk_num_desc=3D2048</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">
          </span><span
style=3D"font-size:11.0pt;font-family:Wingdings;color:#1F497D;mso-fareast=
-language:EN-US"
            lang=3D"EN-US">=C3=A0</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">
          </span><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">benchmark_rate</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"> =C2=A0launches and completes, but throws plen=
ty of
            errors in the process saying </span><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">bnxt_rx_pkt(): mbuf alloc failed</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">, dropping plenty of samples (i.e. 3%) even at
            25Msps and timeouts happen.<o:p></o:p></span></p>
        <p class=3D"MsoListParagraph"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !=
supportLists]--><span
style=3D"font-size:11.0pt;font-family:Symbol;color:#1F497D;mso-fareast-la=
nguage:EN-US"
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">dpdk_num_mbufs=3D32768</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"> and </span><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">dpdk_num_desc=3D4096</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">
          </span><span
style=3D"font-size:11.0pt;font-family:Wingdings;color:#1F497D;mso-fareast=
-language:EN-US"
            lang=3D"EN-US">=C3=A0</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">
          </span><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">benchmark_rate</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"> launches and completes with no error messages=
,
            but drops plenty of samples (i.e. 3%) even at 25Msps, but no
            timeouts.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">All of the above happens with the
          </span><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">[INFO] [X300] Maximum frame size: 1556 bytes</=
span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"> message that started this thread.<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D;mso-fareast-=
language:EN-US"
            lang=3D"EN-US">bnxt</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"> is the driver that DPDK loads to manage the
            eight (8) Broadcom BCM57414 NetXtreme-E 10Gb network
            interfaces that I have to manage my four (4) USRPs X310. For
            this test I=E2=80=99m just using two interfaces for a single =
x310.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Any ideas?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D">Best,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D">Guillermo<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <br>
      </div>
    </blockquote>
    <b>So, for DPDK 18.11, which is the version supported by current
      UHD, I see NO evidence that DPDK even supports the bnxt
      driver--only Intel and Mellanox.<br>
      <br>
      But I understand that can be mis-leading.=C2=A0 The fact that it wa=
s
      never tested against a given 10G NIC driver doesn't mean that it
      won't work.<br>
      <br>
      <a class=3D"moz-txt-link-freetext" href=3D"https://doc.dpdk.org/gui=
des-19.08/rel_notes/release_18_11.html#">https://doc.dpdk.org/guides-19.0=
8/rel_notes/release_18_11.html#</a><br>
      <br>
    </b>
  </body>
</html>
--------------7oZq0jwE3AMoOpq2olyOwy32--

--===============5212555752176049655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5212555752176049655==--
