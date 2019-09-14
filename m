Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8B6B296D
	for <lists+usrp-users@lfdr.de>; Sat, 14 Sep 2019 04:58:54 +0200 (CEST)
Received: from [::1] (port=42962 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i8yGw-0006WT-3x; Fri, 13 Sep 2019 22:58:50 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:36516)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i8yGs-0006PR-LQ
 for usrp-users@lists.ettus.com; Fri, 13 Sep 2019 22:58:46 -0400
Received: by mail-qt1-f177.google.com with SMTP id o12so36397357qtf.3
 for <usrp-users@lists.ettus.com>; Fri, 13 Sep 2019 19:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=yMpPp1mBEHDmAPRYWzqtSnSjJhUbhtk3L2Zj6U0dDvw=;
 b=Je/pR2M5mC6JTEG737hJdrznel6U9RAwqJCdAPysj+QQoG6mYn4JfwW82BNWBYeEq7
 Mxk5Quz9tyitJKh2nCCWSnjByg/JNJ3gAL3DFFz43EyBUnyLlBwYOthv6eszKGo+cfjv
 jf6RFWFM8ExwPld+HjQcquXrbna/lsoEFIvbjN28FfrX3TZ5zjVGOp/ll97fKS2fEIt+
 MQv6ILV4iUvx5DJsE/rmEDLen4k5KD4IsZj5+J9GCjy3m8tKCtWbKkSmQFIqX9+/WJVn
 1ZrKLvyEt7j1rwjhYewTJAi+pmiqWUiWBF15t2rx2z8KpDwRbGjXSKIhpLN/xZhelkDP
 Vj4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=yMpPp1mBEHDmAPRYWzqtSnSjJhUbhtk3L2Zj6U0dDvw=;
 b=dXkS3AN5p24B1GbDXc7i9vTr9YYHd99ZU8+hhFptRKOiRsvItx0BrtfXkqLjiqIr65
 sCQpJdd1rgwtmpkGumxiMRr/lggk4Ph2Fh+BJfewVIwwX5J6RmQVRFbm+iLKO1Rf+Ch9
 p+L8aMOHPcidUXw16FWY7a1CMUk29t4iNXmyRypqx0kzmOyetY9Gf4EFmSaPX08N7gQT
 osi8GEafoUc8mELAz4CRE6BwU4yNUx6HP/XwGzSSo30OVqVprmjtREeEZwgCwdck+2el
 hdY1TYgcTWzjFAqQsErsOgN7BijxRsBAtq8RQkgTf3M3bqpzy3S2EylLPO32vpOY8efR
 Q9sA==
X-Gm-Message-State: APjAAAXCHeSHnbIgRr4BnoPWNt7ppKpRVdWZdoyz4sq8o94Z2eaa2wrA
 yVEZ6xofXmegUv6TEx6PxCaYUGul
X-Google-Smtp-Source: APXvYqy6hyn9bI+po2qETOlIOLBLQTLTU6dwSxhuGFwaK9Dbu87rFopTks7Ih9zbEUWwKCQdSGAp/Q==
X-Received: by 2002:ac8:728c:: with SMTP id v12mr6703609qto.120.1568429886074; 
 Fri, 13 Sep 2019 19:58:06 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id v14sm11730382qkj.23.2019.09.13.19.58.05
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Sep 2019 19:58:05 -0700 (PDT)
Message-ID: <5D7C573C.2090201@gmail.com>
Date: Fri, 13 Sep 2019 22:58:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <f92fd3dd86ba40709538d0c0ab69d60f@ll.mit.edu>
 <bbba74629a334e848a7efead3ab607a5@ll.mit.edu>
In-Reply-To: <bbba74629a334e848a7efead3ab607a5@ll.mit.edu>
Subject: Re: [USRP-users] random phase offset when trying to synchronize two
 USRP N210s
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
Content-Type: multipart/mixed; boundary="===============8068104984556873866=="
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
--===============8068104984556873866==
Content-Type: multipart/alternative;
 boundary="------------000504020504070201030602"

This is a multi-part message in MIME format.
--------------000504020504070201030602
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 09/13/2019 01:01 PM, Lapointe, Benjamin - 0333 - MITLL via USRP-users 
wrote:
>
> To provide more details:
>
> -The two USRP devices each have their own GPSDOs.
>
> -I have separate TX and RX programs. Each one synchronizes to their 
> GPSDO and then synchronizes phase by creating streamers with a 
> time_spec with a specified gps_second in the future, following the 
> instructions in the manual.
>
> The issue is: I am seeing a random phase offset in the received data 
> each time I run my programs.  I don’t see a phase offset if I specify 
> a zero Hz center frequency, so there might be a clue there.   For my 
> application I need to specify a non-zero center frequency.
>
> I’m just trying to find out whether this result is expected with the 
> HW and/or SW setup that I have, or whether it is a bug in my current 
> version of UHD, or I am doing something wrong?  Has anyone ever tried 
> to synchronize two USRPs each with their own GPSDO using non-zero 
> center frequencies?
>
> Someone mentioned off-list that there was a bug in earlier versions of 
> UHD that caused the CORDIC not to get reset but that has been fixed in 
> newer versions.  I’m running UHD 3.15.0.
>
> Someone else asked off-list whether I am using the same or separate 
> GPSDOs.  The answer was separate GPSDOs, but does that make a difference?
>
> Thanks,
>
> -ben
>
>
Fine-scale phase-noise will absolutely be different between two GPSDOs, 
even on the same antenna.  They'll also sometimes experience phase-slips
   with respect to each other.  I've seen this in the lab many times.

The difference here is that at zero frequency, the CORDIC doesn't spin.  
So this likely has to do with the initial state of the CORDIC.  I'm not sure
   that the CORDIC fixes have been back-ported to N210--not a lot of 
"new" work on the N210 device in the last couple of years.



--------------000504020504070201030602
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/13/2019 01:01 PM, Lapointe,
      Benjamin - 0333 - MITLL via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:bbba74629a334e848a7efead3ab607a5@ll.mit.edu"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:139229793;
	mso-list-type:hybrid;
	mso-list-template-ids:1398328574 93079530 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:2002537208;
	mso-list-type:hybrid;
	mso-list-template-ids:161523100 -1091287438 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span style="color:#1F497D">To provide more
            details:<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo2"><!--[if !supportLists]--><span
            style="color:#1F497D"><span style="mso-list:Ignore">-<span
                style="font:7.0pt &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><span
            style="color:#1F497D">The two USRP devices each have their
            own GPSDOs.<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo2"><!--[if !supportLists]--><span
            style="color:#1F497D"><span style="mso-list:Ignore">-<span
                style="font:7.0pt &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><span
            style="color:#1F497D">I have separate TX and RX programs. 
            Each one synchronizes to their GPSDO and then synchronizes
            phase by creating streamers with a time_spec with a
            specified gps_second in the future, following the
            instructions in the manual.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">The issue is: I
            am seeing a random phase offset in the received data each
            time I run my programs.  I don’t see a phase offset if I
            specify a zero Hz center frequency, so there might be a clue
            there.   For my application I need to specify a non-zero
            center frequency.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">I’m just trying
            to find out whether this result is expected with the HW
            and/or SW setup that I have, or whether it is a bug in my
            current version of UHD, or I am doing something wrong?  Has
            anyone ever tried to synchronize two USRPs each with their
            own GPSDO using non-zero center frequencies?<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Someone
            mentioned off-list that there was a bug in earlier versions
            of UHD that caused the CORDIC not to get reset but that has
            been fixed in newer versions.  I’m running UHD 3.15.0.  <o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Someone else
            asked off-list whether I am using the same or separate
            GPSDOs.  The answer was separate GPSDOs, but does that make
            a difference?<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">-ben   <o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    Fine-scale phase-noise will absolutely be different between two
    GPSDOs, even on the same antenna.  They'll also sometimes experience
    phase-slips<br>
      with respect to each other.  I've seen this in the lab many times.<br>
    <br>
    The difference here is that at zero frequency, the CORDIC doesn't
    spin.  So this likely has to do with the initial state of the
    CORDIC.  I'm not sure<br>
      that the CORDIC fixes have been back-ported to N210--not a lot of
    "new" work on the N210 device in the last couple of years.<br>
    <br>
    <br>
  </body>
</html>

--------------000504020504070201030602--


--===============8068104984556873866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8068104984556873866==--

