Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DB21F7DAC
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2020 21:35:12 +0200 (CEST)
Received: from [::1] (port=48604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjpSH-0001tG-79; Fri, 12 Jun 2020 15:35:09 -0400
Received: from mail-qk1-f179.google.com ([209.85.222.179]:34700)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjpSD-0001Yx-8Y
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 15:35:05 -0400
Received: by mail-qk1-f179.google.com with SMTP id f18so10168701qkh.1
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 12:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=uEdpRlVp5XJtSfIoIsrDneva/Dl2ElQCY77vnhazmn4=;
 b=Sz1VUjPuhLO2WEYhHOE4XnjmSXqTeusL2Sxis4sdX+cG6M1NYmPNbZDJ+6DfFugBSd
 WryJoUGtUFES/PmREObVaiVFkzsmEE9FRvZc2/MThVVHOr5gP6S/ZDXT7ccNQ5XKDTR9
 8Gw2Uuxt5yoHmAD6NMwG05pX6NpcU7eHXf8xLOG6lD3dqIA5zu7MvPN+OUJeYtMJZ8de
 cymaABV4G3qbYrhEV8aG8yWYArVoozEj/+yFMwFtsG6Zb/F4r4CCYGo8Hawh5APecxna
 oV1DhD/IADy1qYw0QpVzc3V5AmDXj7tTy2yEWS8wnfr2z3i+g2Y9Snx2d5urLB3toqXg
 gWBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=uEdpRlVp5XJtSfIoIsrDneva/Dl2ElQCY77vnhazmn4=;
 b=ZioEjPBsob7RFKXAL7QtbthXSwet2OOdgJ0CKQVBP/1vG0U2d3+pmYRLXjTkIgGz+U
 1B/I/3rTYwZfn1esbqLH+MGNADW75ON/VmgD4FiNlt+e9k90PNivFusg42bcwpdCIuT1
 J5rl5csFaTPoDwQa3rFvjIWpf3AovrztHC4TP2tU2uGXbmsfsKcNUQ9gXHbPA50ac8to
 BNG8vtnoGNdylywgLvfh1ZPeNIfhhZA44dxQtwXuSJDhUNA21Il/X4P9Ro66s9WWkrRb
 CijupNHLJ4UjX2Er2O9NrJmcAJ2ZMfgxcP9iRpD1Zy65EW/5zlEo0w+K1GVVocO0gNDv
 pBxg==
X-Gm-Message-State: AOAM533nvovolFtVGvls9KatowE0WUYifphfSEwzLqMYcEdxS12uny4S
 UPXDtoxAC/KA6qqhgPtoBOfznhYIxpY=
X-Google-Smtp-Source: ABdhPJyHvad1X0tsWNUucheQWH60W0Qti3srzwt54G/G/jfANxvers3820dUvBBNdYXfWA8hnWQXpA==
X-Received: by 2002:a05:620a:15f4:: with SMTP id
 p20mr4427857qkm.283.1591990464578; 
 Fri, 12 Jun 2020 12:34:24 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id 5sm5091658qko.14.2020.06.12.12.34.23
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jun 2020 12:34:23 -0700 (PDT)
Message-ID: <5EE3D8BF.4060502@gmail.com>
Date: Fri, 12 Jun 2020 15:34:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANka2Pwqgc=sk6mutxNwbO2fzUQe4k4W_A5_DFzaWWY5prxYug@mail.gmail.com>
 <10F7328F6AD1354BA6DD787687B66B9001A97A4064@Maui.in.dynetics.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A97A4064@Maui.in.dynetics.com>
Subject: Re: [USRP-users] DPDK support not built in with X310
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
Content-Type: multipart/mixed; boundary="===============1557454573492007336=="
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
--===============1557454573492007336==
Content-Type: multipart/alternative;
 boundary="------------020702080606050805080002"

This is a multi-part message in MIME format.
--------------020702080606050805080002
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/12/2020 01:37 PM, Carmichael, Ryan via USRP-users wrote:
>
> Jeremy,
>
> I went through this recently and I believe you need to build UHD 
> manually, assuming you are using pre-built UHD binaries. If you’ve 
> installed it, DPDK support should be detected when you build the UHD 
> driver (the output of cmake should indicate if it finds it or not).
>
> -Ryan
>
> I recently bought a X310 usrp and a 82599ES 10-Gigabit SFI/SFP+ 
> Network Interface Card (the one recommended on the Ettus Website).
>
> I first set my connections and a benchmark test shows a lot of dropped 
> samples and some overflows.
> So i decided to try using dpdk to improve my setup.
> I have UHD 3.14.1.1 and I installed dpdk with my apt package manager 
> (dpdk version 17.11.9).
> I followed this guide 
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD 
> <https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD> and when I 
> run the benchmark with use_dpdk argument, I got the following:
> |[WARNING] [DPDK] Detected use_dpdk argument, but DPDK support not 
> built in.|
>
> I really don't understand what's wrong. I tried so many things. I 
> tried with dpdk 18 and went back to 17 because it didn't solve anything.
>
> Could anyone help me with that please ?
>
> Jeremy
>
>
I don't think the DPDK support in UHD is "mainstream" yet (perhaps in 
3.15?) so the packaged binaries don't have support for it.



--------------020702080606050805080002
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/12/2020 01:37 PM, Carmichael,
      Ryan via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:10F7328F6AD1354BA6DD787687B66B9001A97A4064@Maui.in.dynetics.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
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
	{mso-list-id:1328097359;
	mso-list-type:hybrid;
	mso-list-template-ids:-1777842436 -197915536 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
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
	mso-level-text:;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:;
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
	mso-level-text:;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:;
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
	mso-level-text:;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Jeremy,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">I
            went through this recently and I believe you need to build
            UHD manually, assuming you are using pre-built UHD binaries.
            If you’ve installed it, DPDK support should be detected when
            you build the UHD driver (the output of cmake should
            indicate if it finds it or not).<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><span
              style="mso-list:Ignore">-<span style="font:7.0pt
                &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Ryan<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p><span style="font-size:10.0pt">I recently bought a X310
              usrp and a 82599ES 10-Gigabit SFI/SFP+ Network Interface
              Card (the one recommended on the Ettus Website).<br>
              <br>
              I first set my connections and a benchmark test shows a
              lot of dropped samples and some overflows.<br>
              So i decided to try using dpdk to improve my setup.<br>
              I have UHD 3.14.1.1 and I installed dpdk with my apt
              package manager (dpdk version 17.11.9).<br>
              I followed this guide <a moz-do-not-send="true"
                href="https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD">
                https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a>
              and when I run the benchmark with use_dpdk argument, I got
              the following:<br>
            </span><code><span style="font-size:10.0pt">[WARNING] [DPDK]
                Detected use_dpdk argument, but DPDK support not built
                in.</span></code><o:p></o:p></p>
          <p><span style="font-size:10.0pt">I really don't understand
              what's wrong. I tried so many things. I tried with dpdk 18
              and went back to 17 because it didn't solve anything.<br>
              <br>
              Could anyone help me with that please ?<br>
              <br>
              Jeremy</span><o:p></o:p></p>
        </div>
      </div>
      <br>
    </blockquote>
    I don't think the DPDK support in UHD is "mainstream" yet (perhaps
    in 3.15?) so the packaged binaries don't have support for it.<br>
    <br>
    <br>
  </body>
</html>

--------------020702080606050805080002--


--===============1557454573492007336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1557454573492007336==--

