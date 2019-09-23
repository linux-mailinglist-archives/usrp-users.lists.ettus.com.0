Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D73F2BBA7D
	for <lists+usrp-users@lfdr.de>; Mon, 23 Sep 2019 19:28:14 +0200 (CEST)
Received: from [::1] (port=54500 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCS8C-0003V1-MX; Mon, 23 Sep 2019 13:28:12 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:39895)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iCS88-0003Oj-Pl
 for usrp-users@lists.ettus.com; Mon, 23 Sep 2019 13:28:08 -0400
Received: by mail-qk1-f180.google.com with SMTP id 4so16252318qki.6
 for <usrp-users@lists.ettus.com>; Mon, 23 Sep 2019 10:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=ron96X4HUWma5bMaRIuR2KMmKVlOtpUU9RFgPcQFSqY=;
 b=GrTq/op45AcWlQ8AUk8Ou9vCagCEm2VCjNyeDgA0FWb/uKBFukA+3+myh0C4WUymN3
 WFttKnBTjDvO+GZ6SjiHkiL6iDxONDskP+R+jdOubETkR12r9AqxVWpSglcvwkhNrT0+
 P8A6fK6G4aGlt3/905E2IEoy3zwVBzxXEk2xSWFL8YaxFU8xjLdt++QRxOEtlXfd7t3A
 LwXR5/CfdkdbwXINlHzGy442Q1h1qFsYJpRk/V5yvL+Jb3O7tZLdWDJFb5b61wZnHj8/
 LdsqycZWeXLRdxdB1O7ZVWRkJJVBcQkYgNvOUR9vGmWJr6MLbUin3uwJcEs5zb4bFXHF
 uWpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=ron96X4HUWma5bMaRIuR2KMmKVlOtpUU9RFgPcQFSqY=;
 b=H9DVdC6wSWrFmukTFrF7sVPEjKWk8oeVaQIucd/M8zxxdFTSsZ3ADKEu5xnC6Kclok
 SFwrq+ISHzseIku3qRxoyU5f9XXxpQpAdG9NaGluGqhnBAzj+KfIzZBPHMrMWrMBxGZC
 HXXvObkzi9qRPzT6tuaWm3mdbyz2ULnGkE8l7EQQObvgC8VmSno6YQCb6IUJ2NKwXqJm
 JrY0spqJlATT37L0JU8whEsysd7hQDxnSUchrJE8h5fKVaTmJT7cqE8CW3zbtykzlpI1
 YHM1vTybpGngquOcgH0abvO/Nd4SzO/JkWBGayU8PcUi9/fK+FaDrJILV0BAALeCHtGE
 HDiQ==
X-Gm-Message-State: APjAAAUiNuJWeoKLYFQ5/HAlp/vP24vNrEgBySzIsfqYeUyTciGBg/Pn
 r3Irma9NmIJDzOEG2gpsD3grMrpo
X-Google-Smtp-Source: APXvYqwGBJmQA73trYVe4yklzXZ2nl+0nJcJ9yS9O8ScCReUYJL2vIwBw0UsYLXsGp6rwqI8QYa0Qg==
X-Received: by 2002:a37:5203:: with SMTP id g3mr979260qkb.53.1569259648208;
 Mon, 23 Sep 2019 10:27:28 -0700 (PDT)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id
 f144sm5305931qke.132.2019.09.23.10.27.27
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 10:27:27 -0700 (PDT)
Message-ID: <5D89007E.30806@gmail.com>
Date: Mon, 23 Sep 2019 13:27:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CALzE40LKN-2egAu5+TGKV_4k5qpB=B_VO+gZaOfR9_s3N4PQvQ@mail.gmail.com>
In-Reply-To: <CALzE40LKN-2egAu5+TGKV_4k5qpB=B_VO+gZaOfR9_s3N4PQvQ@mail.gmail.com>
Subject: Re: [USRP-users] Different phase offsets in RX and TX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============1547394736052845702=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============1547394736052845702==
Content-Type: multipart/alternative;
 boundary="------------040402030104050200040300"

This is a multi-part message in MIME format.
--------------040402030104050200040300
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/23/2019 12:04 PM, Markus Roman via USRP-users wrote:
>
> Hi,
>
> Let's consider two simple test configurations using both channels of a 
> USRPX310 SDR*,* and developed in GNU Radio:
>
> 1.SDRs in TX mode: generate a cosine signal, transmit with SDRs and 
> visualize their phase offset on an O-scope and
>
> 2.SDRs in RX mode: SDRs receive a signal from a signal generator and 
> display their phase offset on a computer.
>
> In the 1^st configuration the phase offsets between channels are 
> consistent even if we power off the SDR. However, in the 2^nd 
> configuration, each time when the GNU Radio script is restarted, the 
> phase difference is changing. I wonder what could cause the issue, 
> specifically what determines re-tuning in the GNU Radio script. Can 
> this issue be corrected?
>
> Thank you.
>
> Regards
>
> Markus
>
>

You haven't stated which daughter-cards you're using.

In order to have zero phase-offset, you need to use timed commands, 
typically, and Gnu Radio/GRC has no direct provision for
   that so you have to edit the code.



--------------040402030104050200040300
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/23/2019 12:04 PM, Markus Roman
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CALzE40LKN-2egAu5+TGKV_4k5qpB=B_VO+gZaOfR9_s3N4PQvQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif">Hi,</p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif">Let's
          consider two simple test configurations using both channels
          of a <span style="" lang="EN">USRP</span><span style=""
            lang="EN"> X310
            SDR<strong style="font-weight:bold">,</strong></span><span
            lang="EN"> and </span>developed
          in GNU Radio:</p>
        <p class="gmail-MsoListParagraphCxSpFirst" style="margin:0in 0in
          0.0001pt
          0.25in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif">1.<span
            style="font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times
            New Roman&quot;">      
          </span>SDRs in TX mode: generate a cosine signal,
          transmit with SDRs and visualize their phase offset on an
          O-scope and</p>
        <p class="gmail-MsoListParagraphCxSpLast" style="margin:0in 0in
          8pt
          0.25in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif">2.<span
            style="font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times
            New Roman&quot;">      
          </span>SDRs in RX mode: SDRs receive a signal from a signal
          generator and display their phase offset on a computer. </p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif">In
          the 1<sup>st</sup> configuration the phase offsets between
          channels are consistent even if we power off the SDR. However,
          in the 2<sup>nd</sup>
          configuration, each time when the GNU Radio script is
          restarted, the phase difference
          is changing. I wonder what could cause the issue, specifically
          what determines re-tuning in the GNU Radio script. Can this
          issue be corrected? </p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif">Thank
          you. </p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><span
            style="font-size:11pt">Regards</span><br>
        </p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><span
            style="font-size:11pt">Markus</span></p>
      </div>
      <br>
    </blockquote>
    <br>
    You haven't stated which daughter-cards you're using.<br>
    <br>
    In order to have zero phase-offset, you need to use timed commands,
    typically, and Gnu Radio/GRC has no direct provision for<br>
      that so you have to edit the code.<br>
    <br>
    <br>
  </body>
</html>

--------------040402030104050200040300--


--===============1547394736052845702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1547394736052845702==--

