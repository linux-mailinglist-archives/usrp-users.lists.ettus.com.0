Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BC01351AE
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 03:59:01 +0100 (CET)
Received: from [::1] (port=32916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipO2F-0004gX-Q9; Wed, 08 Jan 2020 21:58:59 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:41362)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ipO2C-0004b6-8b
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 21:58:56 -0500
Received: by mail-qk1-f173.google.com with SMTP id x129so4689993qke.8
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 18:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=kIGXM+06Lp2m4eC6abkjpSXunD+pwN5nRjcCCkPXGzQ=;
 b=PRufrVNFtZnncfjv8/6jLKVTaS96a20+4v/7f+kidqxWKaiZRTjFQmCgdJKUZbLGtf
 Oy8Ee+uIh8L415Sfdai+IgPbZC8I4pxvbi85KiXzQHy5vAMpQ7f0cB8T56tkQZUsS37u
 u81whTM6i5M+Om0nTq1b9clnkGTrsMlItksLc6EgNc0wP52ORGh0Ugo3IQgkfUG7D4z8
 BM5gnaDT1Vpaqi4nmxrmxWeXH4ll75nsscL7VC/Nb8HHqaSdrY3UodlMZiLd7/J1JJ3w
 RugMA3CGvDFqj5AlKbe4SkO8BhBlnNwc7areelumA3Mlc6/hBSUCbhOQHPZWhONm2lcm
 BS8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=kIGXM+06Lp2m4eC6abkjpSXunD+pwN5nRjcCCkPXGzQ=;
 b=p6mGyIJzTtSywfRj/mkDsW8EuScgTUDgpVcefG+X+RB4Qjadxb1+ztChmx6EhOis6s
 bM0METAdJ4raICmXtV33yp8Ehm9ZTaFbrf7raDbP1AKwIZQcoNQFvEeHVgIxub41bc8j
 cfWixGNliFzlluxQDjWmR1aHmc0X1pd5hUDgm5Qp9VYyaCK0hY4B54Y9Di4U616/FvMl
 nJUyzEed4Kg9gDx7wtUGcUOlub/mwc6tnIb2is3R8ZtJRcba9nXMfnxZ8DPwz89TAIgB
 5LOHrMBB6Jm8rQwxdGDwXMrrU7vPwBe9ERbNzDv7m+8MMUUMKQqBumJuX35NTIUbeauY
 g6EA==
X-Gm-Message-State: APjAAAU+BZbpaqC5tdgz3wcWVrgzArWsmc7R04hg/seBmud7H/kSEXVO
 Z1JRMcrEr5sEvLRD3B21T4PQsOhaW4A=
X-Google-Smtp-Source: APXvYqxEdR2bE+YHjviAh2KfeO9WCwVpQK1dv1csuhN9m6ZKxhlY9bDIq/RnToREnXmDaLDGzYibkA==
X-Received: by 2002:a05:620a:1116:: with SMTP id
 o22mr7622302qkk.190.1578538695578; 
 Wed, 08 Jan 2020 18:58:15 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id x8sm2375513qki.60.2020.01.08.18.58.14
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 18:58:14 -0800 (PST)
Message-ID: <5E1696C5.7050009@gmail.com>
Date: Wed, 08 Jan 2020 21:58:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <397BF7BC-9816-405D-93AA-970BA734DBE4@contoso.com>
In-Reply-To: <397BF7BC-9816-405D-93AA-970BA734DBE4@contoso.com>
Subject: Re: [USRP-users] USRP2 help
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============0800439367886046053=="
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
--===============0800439367886046053==
Content-Type: multipart/alternative;
 boundary="------------050002050403030205070509"

This is a multi-part message in MIME format.
--------------050002050403030205070509
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 01/08/2020 09:08 PM, Manfredi, Juan J via USRP-users wrote:
>
> Hello,
>
> I have a USRP2 that I bought around 10 years ago. At that time I got 
> it work with a Macintosh Computer and Matlab.
>
> I have come back to experimentation (I was away in administration for 
> about 10 years), gotten the USRP2 out of the box.
>
> I am using  Matlab R2019b Update 3 running on a MacPro with Catalina 
> 10.15.2
>
> I installed the USRP support package. I am able to ping the radio, but 
> Matlab does not recognize it.
>
> LEDs D and F are on.
>
> I don’t know what to try next. Any help of what to do, or where to 
> look, would be much appreciated.
>
> Thanks,
>
> Juan.
>
You might be better off consulting whatever on-line forums Mathworks has 
for Matlab and Simulink.




--------------050002050403030205070509
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/08/2020 09:08 PM, Manfredi, Juan
      J via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:397BF7BC-9816-405D-93AA-970BA734DBE4@contoso.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
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
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black">Hello,</span><span
            style="font-size:11.0pt"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black">I
            have a USRP2 that I bought around 10 years ago. At that time
            I got it work with a Macintosh Computer and Matlab. <o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black">I
            have come back to experimentation (I was away in
            administration for about 10 years), gotten the USRP2 out of
            the box.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black">I
            am using  Matlab R2019b Update 3 running on a MacPro with
            Catalina 10.15.2<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black">I
            installed the USRP support package. I am able to ping the
            radio, but Matlab does not recognize it.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black">LEDs
            D and F are on.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black">I
            don’t know what to try next. Any help of what to do, or
            where to look, would be much appreciated.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:13.5pt;font-family:&quot;Cambria&quot;,serif;color:black">Juan.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
      </div>
    </blockquote>
    You might be better off consulting whatever on-line forums Mathworks
    has for Matlab and Simulink.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------050002050403030205070509--


--===============0800439367886046053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0800439367886046053==--

