Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AFF22850A
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 18:12:53 +0200 (CEST)
Received: from [::1] (port=41494 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxuss-0003Yr-O7; Tue, 21 Jul 2020 12:12:50 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:40753)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxusp-0003Lk-8e
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 12:12:47 -0400
Received: by mail-qk1-f173.google.com with SMTP id h7so3997434qkk.7
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 09:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=4b2vK/kJXvTBxh3lvwOm5U8nFxCTnm/y5+VVH/9Ndbs=;
 b=fbkrmxhmL1XZLHcK0Ar3LlZtDmXvs9u4f9ugUkiruIrwUO59nesOCRcDEa7QuLZgiC
 JMPUrAvHiTIL6b0fVHUMFJkg7AVWiABCoxoP+xJxRsi7LDYzbSV0iXqzsjkQsst0j0yX
 VaM5/tPFoTKCW1s8IR6JqRx7LzLWKpHhA/qFrO94wXo52XCh6FLO7CRBLWVE4YFnbLTa
 KZwiE4Uqj5sykwB54LlrHp/pp5AXRlsEiDJgbW4ULcoF8RFNeFexWLToX4P1b4LulWKm
 Vi7Khwjz5dd2D7/ePqWPlYwKs4iahUNMVsf3WK8ERIxrCfnuLhkEtIflgbfzdRJRlCq1
 7Bsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=4b2vK/kJXvTBxh3lvwOm5U8nFxCTnm/y5+VVH/9Ndbs=;
 b=qA844d57jxG489RcRyxFsQ5VBGOOU5iZOt6AphOOWo+j33DecAr85yoxnMhHJxQD27
 eEMzyRUKVfQ2DoVKV7ri7iBr4rwYcoQPCwBIu7GMHGJRg52dUbSIsFk39BeltrWd7oMV
 LnyizPkJvXsXWsv/Ay38ik9WW0Ko1NYpT+5V/hptFu3fNgVvGu+Q4z1ZRn1nYaGpCL9I
 u2fdCudZCIg3tJXgaVBwdKYwjx+iI0PLiGOkx2JqCHNTiSdAUjIbPOMRrpGEuEN3AXVR
 wpam7V6uDdSqxQzzWmQDJgNCZXc8lKDLQkqHp3F/gegUeBYMmU5WneMHRfQ5QrawCCh0
 dEMA==
X-Gm-Message-State: AOAM532WYhL1Q4ZvhKn8Vup0czePtgwxz/K5z9wABXbEiVWpuOg/U8FV
 rW9Pl18AqNa4lYzP4lMkNOX1DaQPJeXVJg==
X-Google-Smtp-Source: ABdhPJytJAlIyuGhycCTdtupgYSTVCl0/oHSiW6DUyA/ZFsqvHyu/tbfk6wPl2Jrwxkedv+tKeqF/Q==
X-Received: by 2002:a37:6894:: with SMTP id
 d142mr12710067qkc.287.1595347926494; 
 Tue, 21 Jul 2020 09:12:06 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id k48sm12626932qtc.14.2020.07.21.09.12.05
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jul 2020 09:12:06 -0700 (PDT)
Message-ID: <5F1713D5.5020101@gmail.com>
Date: Tue, 21 Jul 2020 12:12:05 -0400
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
Content-Type: multipart/mixed; boundary="===============2557681476900768951=="
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
--===============2557681476900768951==
Content-Type: multipart/alternative;
 boundary="------------030206030003060903050509"

This is a multi-part message in MIME format.
--------------030206030003060903050509
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
> //
/Ignore my last.

Yes, the X310 has only the two ports.   I was suffering from cognitive 
pollution between the N310 and X310.

So, this is an excellent point.   I don't use DPDK myself, since my 
hosts don't have the right NICs, and it's really only justified for very 
high
   sample rates.

Also, X310 is not an MPM device, so the comments about MPM traffic 
aren't relevant to X310 as far as I know.



/

--------------030206030003060903050509
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
      <i></i><br>
    </blockquote>
    <i>Ignore my last.<br>
      <br>
      Yes, the X310 has only the two ports.   I was suffering from
      cognitive pollution between the N310 and X310.<br>
      <br>
      So, this is an excellent point.   I don't use DPDK myself, since
      my hosts don't have the right NICs, and it's really only justified
      for very high<br>
        sample rates.<br>
      <br>
      Also, X310 is not an MPM device, so the comments about MPM traffic
      aren't relevant to X310 as far as I know.<br>
      <br>
      <br>
      <br>
    </i>
  </body>
</html>

--------------030206030003060903050509--


--===============2557681476900768951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2557681476900768951==--

