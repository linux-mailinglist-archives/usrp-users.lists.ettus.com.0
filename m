Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 394DC23E2DA
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 22:09:01 +0200 (CEST)
Received: from [::1] (port=54424 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3mCA-00042j-Pq; Thu, 06 Aug 2020 16:08:58 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:41898)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k3mC6-0003wb-UC
 for USRP-users@lists.ettus.com; Thu, 06 Aug 2020 16:08:54 -0400
Received: by mail-qk1-f172.google.com with SMTP id l64so39354589qkb.8
 for <USRP-users@lists.ettus.com>; Thu, 06 Aug 2020 13:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=VKDsOjgLjaO6LEWr7LB7WesVJ60Fae/E/QY+pMSAnJA=;
 b=W8F+Z0FdYLlI3wZ9DaevvuuafuSlTbBtQN5lmZqPIomuirUGS3xXBSlVVFGjufbhj8
 ofHuOxm/8v08G4unQzewcKX0JtHoTyUEahywBq6+pibO8vOs5wUj4q6/bHw0joqE/MSj
 Ov+p6nyDSQiGhPM1y+uAVYYdg/HHXcmqiAzPczxc1FjrMSfIFxT+R8QwQ2+/4d+JUKor
 w9Iskfg0EbqRQZMS6hbDGKfYbropphP5pZV887kPD3tX35qovJ8cTric1x6dtGFF+r+H
 0KyipkYwT2QqydloqxG2HZvIriAEa+n5JH2oANhzxABozfAoBoBLOaPO0ZOgo0Rm8IbN
 ZD8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=VKDsOjgLjaO6LEWr7LB7WesVJ60Fae/E/QY+pMSAnJA=;
 b=CdkQ/bPuCVK9WwWlLvasggbM88PNT57pt8nX+rz2pku8OT4QfonnI7ZOxzdq5n0ks7
 TMNk2kIi4gnGz4tVuV+QRbE1eB2kLDpo8pmQoENzKGcsodfs3e2vzQsH4hUvaYAgsufr
 e187gCnKXhYM4xvLFB98oLzbEOgo8fmxPjcNuiHa0E7n/okkwXIEz7L8sSG/Jcc321jq
 /jAJwvw38eA4FzOv0Q1/sur3lNrWXKhzp2snepFp/0IcdzoztkqcKJD8l6n04ZMHFwff
 XEZFjukbEmwguUtcdCvwNLGv4xJFjHGyaFk/z52jpMbtQqsrUICI8hG26qU88V1NvjXW
 VYyw==
X-Gm-Message-State: AOAM5332QfVNQiTG0xMpZ/0cJMdjS9HHYaOrCTG12kW3cwFopEEY7AB9
 +/tvX8tvx3ALpt0tCaN/PUTxtoVnQrg=
X-Google-Smtp-Source: ABdhPJxV8gZ49yaezHtcB/ozaUVcJkacV9FNe+UQ72RX5e30sXb5ZrdJd16Ps7Nx1vLkoIfIFGzWDg==
X-Received: by 2002:a37:a60e:: with SMTP id p14mr10596026qke.169.1596744494115; 
 Thu, 06 Aug 2020 13:08:14 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id x137sm4927143qkb.47.2020.08.06.13.08.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Aug 2020 13:08:13 -0700 (PDT)
Message-ID: <5F2C632D.8020705@gmail.com>
Date: Thu, 06 Aug 2020 16:08:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>, 
 Brian Padalino <bpadalino@gmail.com>
CC: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <MW3PR19MB42683E64A27B9B0C0A3D0683C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CA9262F8-E745-4A74-934E-557490486CD4@gmail.com>
 <MW3PR19MB42688D343319432B7156AE09C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CAEXYVK5y-7cf9Y1uCpU3CpQ8KKuueu3eq28SvtfErvgXu-+X+Q@mail.gmail.com>
 <MW3PR19MB426868CA935E2B6360B879C3C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
In-Reply-To: <MW3PR19MB426868CA935E2B6360B879C3C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
Subject: Re: [USRP-users] Signal transmission on a USRP X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============6056010551368571161=="
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
--===============6056010551368571161==
Content-Type: multipart/alternative;
 boundary="------------080305080201030803020305"

This is a multi-part message in MIME format.
--------------080305080201030803020305
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 08/06/2020 02:28 PM, Jerrid Plymale wrote:
>
> I am seeing a signal strength between -65 and -70 dBm, approximately, 
> even when transmitting all 0’s.
>
> Best Regards,
>
> Jerrid Plymale
>
Just to get some perspective, those levels are about 6dB *below* the 
limits of CFR 47 Part 15 for *radiated* power at *3M* from the box.

Granted, inconvenient and a pain.

> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Thursday, August 6, 2020 11:08 AM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> *Cc:* Marcus D Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Signal transmission on a USRP X310
>
> On Thu, Aug 6, 2020 at 2:02 PM Jerrid Plymale via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     It does, and actually it has a strength closer to -70 dBm, I had
>     my markers in the wrong place when I thought the signal was at
>     -100 dBm.
>
> If you transmit all 0's with the gain turned all the way down, what 
> strength do you see coming from the radio on the carrier?
>
> Brian
>


--------------080305080201030803020305
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/06/2020 02:28 PM, Jerrid Plymale
      wrote:<br>
    </div>
    <blockquote
cite="mid:MW3PR19MB426868CA935E2B6360B879C3C6480@MW3PR19MB4268.namprd19.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">I am seeing a signal strength between -65
          and -70 dBm, approximately, even when transmitting all 0’s.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Best Regards,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Jerrid Plymale<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
    </blockquote>
    Just to get some perspective, those levels are about 6dB *below* the
    limits of CFR 47 Part 15 for *radiated* power at *3M* from the box.<br>
    <br>
    Granted, inconvenient and a pain.<br>
    <br>
    <blockquote
cite="mid:MW3PR19MB426868CA935E2B6360B879C3C6480@MW3PR19MB4268.namprd19.prod.outlook.com"
      type="cite">
      <div class="WordSection1">
        <div style="border:none;border-top:solid #E1E1E1
          1.0pt;padding:3.0pt 0in 0in 0in">
          <p class="MsoNormal"><b>From:</b> Brian Padalino
            <a class="moz-txt-link-rfc2396E" href="mailto:bpadalino@gmail.com">&lt;bpadalino@gmail.com&gt;</a> <br>
            <b>Sent:</b> Thursday, August 6, 2020 11:08 AM<br>
            <b>To:</b> Jerrid Plymale
            <a class="moz-txt-link-rfc2396E" href="mailto:jerrid.plymale@canyon-us.com">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
            <b>Cc:</b> Marcus D Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>;
            <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
            <b>Subject:</b> Re: [USRP-users] Signal transmission on a
            USRP X310<o:p></o:p></p>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <div>
            <p class="MsoNormal">On Thu, Aug 6, 2020 at 2:02 PM Jerrid
              Plymale via USRP-users &lt;<a moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
              wrote:<o:p></o:p></p>
          </div>
          <div>
            <blockquote style="border:none;border-left:solid #CCCCCC
              1.0pt;padding:0in 0in 0in
              6.0pt;margin-left:4.8pt;margin-right:0in">
              <div>
                <div>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">It
                    does, and actually it has a strength closer to -70
                    dBm, I had my markers in the wrong place when I
                    thought the signal was at -100 dBm.<o:p></o:p></p>
                </div>
              </div>
            </blockquote>
            <div>
              <p class="MsoNormal"><o:p> </o:p></p>
            </div>
            <div>
              <p class="MsoNormal">If you transmit all 0's with the gain
                turned all the way down, what strength do you see coming
                from the radio on the carrier?<o:p></o:p></p>
            </div>
            <div>
              <p class="MsoNormal"><o:p> </o:p></p>
            </div>
            <div>
              <p class="MsoNormal">Brian<o:p></o:p></p>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080305080201030803020305--


--===============6056010551368571161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6056010551368571161==--

