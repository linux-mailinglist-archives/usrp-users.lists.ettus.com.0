Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2303B22846D
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 18:01:10 +0200 (CEST)
Received: from [::1] (port=41364 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxuhX-0002LV-SK; Tue, 21 Jul 2020 12:01:07 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:36105)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxuhE-0007zc-Ct
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 12:00:48 -0400
Received: by mail-qt1-f169.google.com with SMTP id x62so16521296qtd.3
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 09:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=jKiY+Ok6A+MAijM4Prqvn8ST9JH04pGBxo2yvSEnfVQ=;
 b=IB2rDuvsBjIL/BWv7Ju2tJxK6/WYW3a+GHoq4JrGSjj4+yCEBXyHAKA99Y5MrElrmN
 gK3ZfkMc6F81yGYEulalquHLVD8lnxhK0AfZcnZyQT7AtxW+aTfvNXmMLaCw4MYejctx
 mPmmcYQSoy4yeyAZm3EJ7qVIWYdGT9BdofEvGxXqLomuejuHPUxtvH58Y1/Bk34XX0kM
 kTDxS3mQkRQdWIGbw9cFTeU8zYDlZJk5mDGYG7mdPOKZVfZu3oeW/gzjTQ1xwodeeT3b
 VXUxx5LKBcjgQQq6JheEuR5MyKy12ylrTOnjXrR4W0guRFsr+GrejcQqGXn1RXSGbFPM
 lRsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=jKiY+Ok6A+MAijM4Prqvn8ST9JH04pGBxo2yvSEnfVQ=;
 b=rmLyikrnV9Sv6oS1V8+1pVdYOWjn/sNNzjOkFAoCE5danXSh0LaM96xIgHoXvrcd6o
 pLXYbXZJijcuv7GoDD1fXccSwFD6pzjYuU6tuw9qk/GibQ3sZX6/eF2ga/QJaPJhBNmZ
 Qov6VmUjuoh8U+o/oLLJuz61jZEJansiEIG/JYcnWcXxKQG80EMg8lA5WwaiKwsDyIr3
 rl3+RXwFLdlp7qtwV+/YGMvw2Uvoec3JBaLRlNauAQN0J8okbOlMieqtjXz+tGgryHdN
 7988/rpwOyDWn8yga/w8yN3osHez5HPX/xsqR5zFH93cO1QYu70DMR6Dpq2PmCgAE+Bk
 +uBw==
X-Gm-Message-State: AOAM530PRvLYrUH5QryfGztxpkxqgRUInKrK++tsrq0w4KEPJMi+Pf+N
 o3Kry5BMxGGJ2Wvf7nbVKgMh0qAhcNh/1Q==
X-Google-Smtp-Source: ABdhPJwC6oXv9uXwBAI7HrIspoS0ATZLRgbdlRsGu/Zl/jbTmYltsRdYSRgTvTtBAKfH/gCtpStRmQ==
X-Received: by 2002:ac8:346c:: with SMTP id v41mr30115678qtb.262.1595347207368; 
 Tue, 21 Jul 2020 09:00:07 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id w1sm2795613qkj.90.2020.07.21.09.00.06
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jul 2020 09:00:06 -0700 (PDT)
Message-ID: <5F171106.9080709@gmail.com>
Date: Tue, 21 Jul 2020 12:00:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <10F7328F6AD1354BA6DD787687B66B9001A97A9F6D@Maui.in.dynetics.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A97A9F6D@Maui.in.dynetics.com>
Subject: Re: [USRP-users] X310 with DPDK
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
Content-Type: multipart/mixed; boundary="===============7106353351259757346=="
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
--===============7106353351259757346==
Content-Type: multipart/alternative;
 boundary="------------040202000007050703090909"

This is a multi-part message in MIME format.
--------------040202000007050703090909
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/21/2020 10:53 AM, Carmichael, Ryan via USRP-users wrote:
>
> On the DPDK page (https://files.ettus.com/manual/page_dpdk.html) the 
> following statement is made:
>
> “Device discovery via DPDK is not currently implemented, so the device 
> args |mgmt_addr|, |addr|, and |second_addr| (if applicable) must all 
> be specified at runtime. There is no mechanism for MPM's TCP/IP 
> control traffic to flow over a link that is occupied by DPDK, so 
> mgmt_addr must point to a link that is not used for CHDR, such as 
> N310's RJ45 port.”
>
> I’ve been using the X310 without DPDK with dual 10Gb SPI/SFP+ 
> connections (192.168.30.2, 192.168.40.2). Once I start DPDK, ifconfig 
> no longer shows the NICs at all, which I assume is what it is supposed 
> to be doing. My question is, what is the ‘mgmt_addr’ ? I’ve never used 
> it before when using the X310. And how do I make sure the mgmt_addr 
> isn’t using a CHDR link? The X310 only has two RJ45s, right – and 
> they’re both being used by DPDK.
>
> Thanks,
>
> -Ryan
>
>
/Actualy the X310 has two *SFP+* connections, and an RJ-45 connection.  
Now, on yours, you may have put SFP+ to RJ-45 adaptors on, but
   natively they're SFP+.   The single RJ-45 connector is the 
"management port"--which can also support data transfer at lower speeds.


/

--------------040202000007050703090909
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/21/2020 10:53 AM, Carmichael,
      Ryan via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:10F7328F6AD1354BA6DD787687B66B9001A97A9F6D@Maui.in.dynetics.com"
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
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
/* List Definitions */
@list l0
	{mso-list-id:1575505519;
	mso-list-type:hybrid;
	mso-list-template-ids:-1127837764 955294056 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
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
	{mso-list-id:1881282199;
	mso-list-type:hybrid;
	mso-list-template-ids:-344935938 1671701834 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
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
        <p class="MsoNormal">On the DPDK page (<a moz-do-not-send="true"
            href="https://files.ettus.com/manual/page_dpdk.html">https://files.ettus.com/manual/page_dpdk.html</a>)
          the following statement is made:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span
style="font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:white">“Device
            discovery via DPDK is not currently implemented, so the
            device args </span><code><span
              style="font-size:10.5pt;color:black;background:white">mgmt_addr</span></code><span
style="font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:white">, </span><code><span
              style="font-size:10.5pt;color:black;background:white">addr</span></code><span
style="font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:white">,
            and </span><code><span
              style="font-size:10.5pt;color:black;background:white">second_addr</span></code><span
style="font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:white"> (if
            applicable) must all be specified at runtime. There is no
            mechanism for MPM's TCP/IP control traffic to flow over a
            link that is occupied by DPDK, so mgmt_addr must point to a
            link that is not used for CHDR, such as N310's RJ45 port.”<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:white"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:white">I’ve
            been using the X310 without DPDK with dual 10Gb SPI/SFP+
            connections (192.168.30.2, 192.168.40.2). Once I start DPDK,
            ifconfig no longer shows the NICs at all, which I assume is
            what it is supposed to be doing. My question is, what is the
            ‘mgmt_addr’ ? I’ve never used it before when using the X310.
            And how do I make sure the mgmt_addr isn’t using a CHDR
            link? The X310 only has two RJ45s, right – and they’re both
            being used by DPDK.</span><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thanks,<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo2"><!--[if !supportLists]--><span
            style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times
              New Roman&quot;">         
            </span></span><!--[endif]-->Ryan<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    <i>Actualy the X310 has two *SFP+* connections, and an RJ-45
      connection.  Now, on yours, you may have put SFP+ to RJ-45
      adaptors on, but<br>
        natively they're SFP+.   The single RJ-45 connector is the "management
      port"--which can also support data transfer at lower speeds.<br>
      <br>
      <br>
    </i>
  </body>
</html>

--------------040202000007050703090909--


--===============7106353351259757346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7106353351259757346==--

