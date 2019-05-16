Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C4E20F5E
	for <lists+usrp-users@lfdr.de>; Thu, 16 May 2019 21:54:22 +0200 (CEST)
Received: from [::1] (port=55634 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hRMSK-0005OD-Ut; Thu, 16 May 2019 15:54:20 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:32789)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hRMRn-0004xQ-Is
 for usrp-users@lists.ettus.com; Thu, 16 May 2019 15:54:17 -0400
Received: by mail-qk1-f177.google.com with SMTP id p18so2518866qkk.0
 for <usrp-users@lists.ettus.com>; Thu, 16 May 2019 12:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=q9d6RYi7xEQLkcgj7jrhCXvJyZ/knmm0nsSU9PiGp2g=;
 b=ioe601OniThA9jhi1DDTo5sJDdGudMp+ZsB0VfYmAbDH6lPajGcvaInQq6ypOxJyGL
 O/M9VYr9Oij6PRB4drpM0TGdd0EyydI9YStcR0xXg1du4lldDx0vu7MzRgPjARBvqlUu
 n/9/GaQlPOGr5ucPMkl+lKsbM3wpT2oYce1MIYWrN5hLAXEHcwfZNXpwzmPLelgb+qV8
 yPPurVxGyxjcAj3hiupbW1k8+GNgjviXsLYxbbSuHIBQl49detF2DRRxnpiHoDhcTAx0
 Ww7PmM85D4Ze7yHGwBoxVTv0yNzJEcfvt7SGZ+F9hv5eZ8HNJUFmBufy6cimVEyYF39t
 a8BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=q9d6RYi7xEQLkcgj7jrhCXvJyZ/knmm0nsSU9PiGp2g=;
 b=kWBuZssh8BqR75Spru5WfLJ2iU/kMZP3dJ7V7B9EbJ7p+YN/MyRwgrV5qZnivq7oh8
 wi2cNCAsnfQCkJEdK2eOkD5al6fQJSp2Mdijz/Rz24kh95SsR+3V0R39l/QO7MDNCuf+
 od+m7VQtUtoVdWsIyTVB1BRoLDgBvgeTbcmLYt/dUoNC8Yv8Del3j1iZ/q1e0g7RegAn
 61VIrBQ/krPKqB15xMdgUPbCbj1z7vzOPK7d9EeLL1KD0x5lO0R/WVqSMZP5VDU8KNLQ
 EO5NtTPlo0VRSzmFIqnv4PxxovougKgry9OsqRPyPTGAxKij96iYf03INXJn6ZqXhn59
 5PBQ==
X-Gm-Message-State: APjAAAUl/V22YvU/cZyie4Hu5zfKQDyp38Z5loqlY9IY3eVV0LdhYpLo
 UXvYHZLUyVV6TILkxk/XOuqIS+aa
X-Google-Smtp-Source: APXvYqz+FqjDoCTNqVPYQv6GF5UXsudUq25hSRq6tqqAKLEjF1q9PeCTMQnsKewtWDeyA3Smj7G+lg==
X-Received: by 2002:a05:620a:15d2:: with SMTP id
 o18mr26929991qkm.236.1558036386911; 
 Thu, 16 May 2019 12:53:06 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id q2sm3155492qkf.44.2019.05.16.12.53.06
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 12:53:06 -0700 (PDT)
Message-ID: <5CDDBFA2.9090008@gmail.com>
Date: Thu, 16 May 2019 15:53:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <EBDEC4BDBD1F534686BED262D988D715086560DD@nctserver5.netline.co.il>
In-Reply-To: <EBDEC4BDBD1F534686BED262D988D715086560DD@nctserver5.netline.co.il>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] x310 gpsdo get_time_now()
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
Content-Type: multipart/mixed; boundary="===============7707639323112951456=="
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
--===============7707639323112951456==
Content-Type: multipart/alternative;
 boundary="------------020809050404050606050704"

This is a multi-part message in MIME format.
--------------020809050404050606050704
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/16/2019 01:47 PM, Ilay Nissim via USRP-users wrote:
>
> Hi
>
> I have an x310 connected to gpsdo UHD ver14.0
>
> I sync to gpsdo at start of bringup
>
> Than use get_time_now() to follow usrp time
>
> It look like usrp time is2x slow
>
> Meaning if 100 seocnds should have passed – 50 seconds pass
>
> For example
>
> Using clock source – gpsdo time source gpsdo
>
>  if on  init gps time is
>
> 1558028200
>
> And usrp is
>
> 1558028200
>
> After 100 seconds
>
> Usrptime is
>
> 1558028250
>
> And gps time is
>
> 1558028300
>
> Would be happy to get feedback
>
> Regards,
> Ilay Nissim
> RT Embedded Team Leader
>
> Netline Communications Technologies Ltd
> Tel: + (972) 36068171 <tel:+972%203-606-8161>
> Fax: + (972) 36068101 <tel:+972%203-606-8101>
> http://www.netlinetech.com/
> Azrieli Circular Tower , Menachem Begin 132, Tel-Aviv 67021, ISRAEL
>
>
What version of UHD are you using?  Is this resolved with a newer UHD?



--------------020809050404050606050704
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/16/2019 01:47 PM, Ilay Nissim via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:EBDEC4BDBD1F534686BED262D988D715086560DD@nctserver5.netline.co.il"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hi <o:p></o:p></p>
        <p class="MsoNormal">I have an x310 connected to gpsdo UHD
          ver14.0<o:p></o:p></p>
        <p class="MsoNormal">I sync to gpsdo at start of bringup<o:p></o:p></p>
        <p class="MsoNormal">Than use get_time_now() to follow usrp time<o:p></o:p></p>
        <p class="MsoNormal">It look like usrp time is2x slow<o:p></o:p></p>
        <p class="MsoNormal">Meaning if 100 seocnds should have passed –
          50 seconds pass<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">For example<o:p></o:p></p>
        <p class="MsoNormal">Using clock source – gpsdo time source
          gpsdo <o:p></o:p></p>
        <p class="MsoNormal"> if on  init gps time is <o:p></o:p></p>
        <p class="MsoNormal">1558028200<o:p></o:p></p>
        <p class="MsoNormal">And usrp is<o:p></o:p></p>
        <p class="MsoNormal">1558028200<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">After 100 seconds<o:p></o:p></p>
        <p class="MsoNormal">Usrptime is <o:p></o:p></p>
        <p class="MsoNormal">1558028250<o:p></o:p></p>
        <p class="MsoNormal">And gps time is<o:p></o:p></p>
        <p class="MsoNormal">1558028300<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Would be happy to get feedback<o:p></o:p></p>
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<br>
            Ilay Nissim <br>
            RT Embedded Team Leader</span><span lang="SV"><o:p></o:p></span></p>
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:gray">Netline
            Communications Technologies Ltd
            <br>
            Tel: <a moz-do-not-send="true" href="tel:+972%203-606-8161"
              target="_blank"><span style="color:blue">+ (972) 36068171</span></a><br>
            Fax: <a moz-do-not-send="true" href="tel:+972%203-606-8101"
              target="_blank"><span style="color:blue">+ (972) 36068101</span></a><br>
          </span><a moz-do-not-send="true"
            href="http://www.netlinetech.com/" target="_blank"><span
              style="color:blue">http://www.netlinetech.com/</span></a><span
            style="color:blue"><br>
          </span><span
            style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:gray">Azrieli
            Circular Tower , Menachem Begin 132, Tel-Aviv 67021, ISRAEL</span><span
            lang="SV"><o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
    </blockquote>
    What version of UHD are you using?  Is this resolved with a newer
    UHD?<br>
    <br>
    <br>
  </body>
</html>

--------------020809050404050606050704--


--===============7707639323112951456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7707639323112951456==--

