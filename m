Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4A22288DF
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 21:09:03 +0200 (CEST)
Received: from [::1] (port=43152 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxxdO-0000iS-L0; Tue, 21 Jul 2020 15:09:02 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:40655)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxxdK-0000VZ-Rx
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 15:08:58 -0400
Received: by mail-qt1-f170.google.com with SMTP id s16so1188126qtn.7
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 12:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=wkI1URvxyte/emZqtVHNenPmLT5eBxuDMkuw8VrKSHU=;
 b=LoUjiA579twOPMiWsnBuXRjZjs8N7zJ8kDDnVwz9PiAnFma3L64iAppZB0EXi8kSHv
 RJkzaX3h1iE9vb6AyXx6RzUsEbO+qAThUyBP9L5vpzmBYoF+1HcAAxCcxSlysN4kcem0
 +ag0EhlMhDgPEH2WXj7awzwL+mrAo8UNKR5Zfa/HwBomZJug4pW7Cc+iHlWC23N4Omlh
 mAyNZsE66NstjqYf+OYQK2f2TtUxN8P/pNToHxhWHGbwpcEHKm67G6r85TrL+3P3Rc/f
 lNKC2gXPjDHIXtuHuh1gZGofBW7+C+UT/vRjnGGCW8FJwW1WTmTu3iEh72mUsvHbTYYv
 0UKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=wkI1URvxyte/emZqtVHNenPmLT5eBxuDMkuw8VrKSHU=;
 b=kvX/j4FgjmmkR5H+uARMIr8uoucVwKxlFfXDGVL1sW30P4xDY7ATMxuFch4b56M9fh
 GIVsgYH+R+b1OUB1u6USHmreA3fcoVMECME9/4IbZ277WYWjGO5P+5GTp1BZP3xiyDd3
 6jlhZrfSjGZot9HhOq3EhtuIB39Lw86Y+IKz2S4OMpgTo9H1b94PLaP5P/gVrJNYhKuC
 hQjj4CHgdLEvt0kSaPdDlyl3nu677b/V63ptKjNGQ9l8AtyKoKyDhPpisSInjQ/wPoCG
 Wz7Jls4PBRk8x0IiAvopS3PyXZ8awkkSzWC2iQLegNgyrl6YjmzS36caL/tbJ4zHwjrO
 Nl5w==
X-Gm-Message-State: AOAM531nKlhoTpKebqcq0KQHj5Ccs31p13mcUMnZJojgOlIYpYsm5WfR
 voj066WToN1hf6C1tYMQEDx8fj0YWeQ83w==
X-Google-Smtp-Source: ABdhPJzTBuOAJ2kbinY17pxijk2nUXdjkAaBCbbfxVVuF/TK4LblfK/MximRM8zHjrMkE9aUaaZBsg==
X-Received: by 2002:ac8:44b7:: with SMTP id a23mr30768901qto.185.1595358497831; 
 Tue, 21 Jul 2020 12:08:17 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id d124sm3154767qkg.65.2020.07.21.12.08.16
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jul 2020 12:08:16 -0700 (PDT)
Message-ID: <5F173D20.5000603@gmail.com>
Date: Tue, 21 Jul 2020 15:08:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BY5PR19MB3398C192D241AD8EAAA08B90C6780@BY5PR19MB3398.namprd19.prod.outlook.com>
In-Reply-To: <BY5PR19MB3398C192D241AD8EAAA08B90C6780@BY5PR19MB3398.namprd19.prod.outlook.com>
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
Content-Type: multipart/mixed; boundary="===============1805406343572250706=="
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
--===============1805406343572250706==
Content-Type: multipart/alternative;
 boundary="------------090506030704050109010209"

This is a multi-part message in MIME format.
--------------090506030704050109010209
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/21/2020 03:04 PM, Jerrid Plymale via USRP-users wrote:
>
> Hello All,
>
> So I have been running into some interesting issues lately with using 
> a USRP X310 as a signal generator. I have a UBX 40 Duaghterboard 
> installed in the USRP, and I have been testing sending signals at 
> varying frequencies. I have noticed that I can set the center 
> frequency of the USRP sink block up to about 1.3 GHz, and I can see 
> the sine wave being transmitted and received just fine (1 MHz 
> frequency and 4 MHz sampling rate sine wave), but setting the center 
> frequency any higher causes a loss in data (the spectrogram of the 
> signal looks pixelated and some of the pixels in the signal are much 
> lower that others). I know that the X310 supports up to 6 GHz signals, 
> and I know the PC I am running GNU Radio can handle generating the 
> signal IQ data, so I am at a loss for ideas as to what could be 
> causing the loss of signal data at frequencies greater than 1.3 GHz. 
> Any suggestions or ideas on what I am doing wrong and what I need to 
> change would be greatly appreciated.
>
> Best Regards,
>
> Jerrid Plymale
>
>
How are you measuring the transmitted signal?

 From the baseband standpoint, the flow-graph has no idea what the final 
frequency is--that's all done in the analog hardware.  So a 4MHz wide
   baseband with a narrowband carrier at 1MHz looks the same in the 
baseband domain regardless of the analog final "on air" frequency.

So, how are you measuring this?  What is the exact setup?



--------------090506030704050109010209
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/21/2020 03:04 PM, Jerrid Plymale
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BY5PR19MB3398C192D241AD8EAAA08B90C6780@BY5PR19MB3398.namprd19.prod.outlook.com"
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hello All,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">So I have been running into some
          interesting issues lately with using a USRP X310 as a signal
          generator. I have a UBX 40 Duaghterboard installed in the
          USRP, and I have been testing sending signals at varying
          frequencies. I have noticed that I can set the center
          frequency of the USRP sink block up to about 1.3 GHz, and I
          can see the sine wave being transmitted and received just fine
          (1 MHz frequency and 4 MHz sampling rate sine wave), but
          setting the center frequency any higher causes a loss in data
          (the spectrogram of the signal looks pixelated and some of the
          pixels in the signal are much lower that others). I know that
          the X310 supports up to 6 GHz signals, and I know the PC I am
          running GNU Radio can handle generating the signal IQ data, so
          I am at a loss for ideas as to what could be causing the loss
          of signal data at frequencies greater than 1.3 GHz. Any
          suggestions or ideas on what I am doing wrong and what I need
          to change would be greatly appreciated.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Best Regards,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Jerrid Plymale<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    How are you measuring the transmitted signal?<br>
    <br>
    From the baseband standpoint, the flow-graph has no idea what the
    final frequency is--that's all done in the analog hardware.  So a
    4MHz wide<br>
      baseband with a narrowband carrier at 1MHz looks the same in the
    baseband domain regardless of the analog final "on air" frequency.<br>
    <br>
    So, how are you measuring this?  What is the exact setup?<br>
    <br>
    <br>
  </body>
</html>

--------------090506030704050109010209--


--===============1805406343572250706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1805406343572250706==--

