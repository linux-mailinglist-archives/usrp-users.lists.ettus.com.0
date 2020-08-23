Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C62124EED2
	for <lists+usrp-users@lfdr.de>; Sun, 23 Aug 2020 18:42:51 +0200 (CEST)
Received: from [::1] (port=44684 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k9t4z-00060s-Ja; Sun, 23 Aug 2020 12:42:49 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:40077)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k9t4v-0005t0-NL
 for usrp-users@lists.ettus.com; Sun, 23 Aug 2020 12:42:45 -0400
Received: by mail-qk1-f175.google.com with SMTP id z3so1198821qkz.7
 for <usrp-users@lists.ettus.com>; Sun, 23 Aug 2020 09:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=TkDMGhjtj2o6wgGr0HIMLlvCfQhQHmVyAqgyJmSaYME=;
 b=ueMra/6gyTRtcC+X+imvxwP7nMS0LTWq8qUpfYDLwZdCO4Ycs6bAYZAY8KWH1W4GwS
 s2rpKXd28nJdP+Z8zt34lRGf7r7P6AEEuaSe1NVnF/F4ipe/cZv+x+xVFE4c+ihcXKYd
 Swqk3O+141kPne58uRh2rk8K5mgzK2EzdnuDTMxOsq2eZ9eKq1ggafiaijuyn2zg+Jzk
 R9gAHPpNLvGho3c7DBsdEFVfHiRpU4LrN1xT0wwRmupfnlx6ZzFDXRUypbE3wwNc/fdX
 U6cvvP8i6QFVV9y+XRweSp4VFbKAyed2kWPiiWVco74iIAnYxIXMqX7mESQ4OdkPCPWB
 gjRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=TkDMGhjtj2o6wgGr0HIMLlvCfQhQHmVyAqgyJmSaYME=;
 b=LqAirEytfeOctwtU3BQV8RHBuB3lT9wVxz7SdF1TT/YKqG1e2kikvH39nyVreDXax+
 TgrDHQpM8nT2sd+LyPuKMmDVT+TUCbfB34v5fZaP8W1Bn0J/bNsTMJ238Fi1n2dSGwbj
 tmbncn1kssgOh6/aYpWxCQdwEbqW4G06FJVi5AombkhXHc+XHEPW5OSWBhMlmfJrh/s3
 Ixbj/WCfnzK5Czh3YUoPigUumhLujncV1PvUkM0Dty9FTgN+tfJs32BPUbPuRD6LMLKJ
 HN/Xh6VlSXbvn3VfMRKBg2qMio1U2hKcg7Ea30M9C0VtF6tbVakfLkudptdv9uoAbpI4
 eaRg==
X-Gm-Message-State: AOAM531scccLQnsuplt71TJ4pOMHbSQI1VaVuTo3qC4taFTgFtORfAyo
 vzEnNrUEL2Uz78rU/K5n3avutQORO5+Rgw==
X-Google-Smtp-Source: ABdhPJyROK7wOKQyAc9kYeI1PzfKlZr4B5v99f7K+TZiUJEAF2FcLQHsZ8sq7Q+/iW0OdwrwuztyQQ==
X-Received: by 2002:a05:620a:1085:: with SMTP id
 g5mr1461468qkk.343.1598200924949; 
 Sun, 23 Aug 2020 09:42:04 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id w20sm7471730qki.108.2020.08.23.09.42.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Aug 2020 09:42:04 -0700 (PDT)
Message-ID: <5F429C5B.3080901@gmail.com>
Date: Sun, 23 Aug 2020 12:42:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Prasad <kpras@trilcomm.com>, usrp-users@lists.ettus.com
References: <53F074DDB8EF9CF2.b08124db-1501-4661-9a63-6aee26d65445@mail.outlook.com>
 <5F41C5B7.9030201@gmail.com> <000301d67948$f6b23a50$e416aef0$@com>
 <5F428F1C.1030103@gmail.com> <001101d67964$be070570$3a151050$@com>
 <5F42952C.4040200@gmail.com> <003a01d6796a$2ac62010$80526030$@com>
In-Reply-To: <003a01d6796a$2ac62010$80526030$@com>
Subject: Re: [USRP-users] USRP B210: getting RX samples with gradually
 increase delay
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
Content-Type: multipart/mixed; boundary="===============0518930791737016016=="
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
--===============0518930791737016016==
Content-Type: multipart/alternative;
 boundary="------------070302050907040703060902"

This is a multi-part message in MIME format.
--------------070302050907040703060902
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/23/2020 12:26 PM, Prasad wrote:
>
> I understand it is within the time spec. But the delay goes 
> incremented linearly, it means if we wait for 30mins we are getting 
> expected signal after 0.5milliseconds from the desire time boundary
>
> So do we need to use rx streamer command to adjust it?.
>
Since none of us here (likely) are intimately familiar with your 5G 
implementation details, it's hard to say which "button to push" to make
   your implementation correctly deal with inevitable clock-slip.

You'll need a strategy, that's about as much as I can offer, since I'm 
not myself a 5G implementation expert.



--------------070302050907040703060902
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/23/2020 12:26 PM, Prasad wrote:<br>
    </div>
    <blockquote cite="mid:003a01d6796a$2ac62010$80526030$@com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1" />
 </o:shapelayout></xml><![endif]-->
      <div class="Section1"><o:p></o:p>
        <p class="MsoNormal" style="margin-bottom:12.0pt"><span
            style="font-size:11.0pt;
font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">I
            understand it is within the
            time spec. But the delay goes incremented linearly, it means
            if we wait for
            30mins we are getting expected signal after 0.5milliseconds
            from the desire
            time boundary <o:p></o:p></span></p>
        <p class="MsoNormal" style="margin-bottom:12.0pt"><span
            style="font-size:11.0pt;
font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">So
            do we need to use rx
            streamer command to adjust it?.<o:p></o:p></span></p>
      </div>
    </blockquote>
    Since none of us here (likely) are intimately familiar with your 5G
    implementation details, it's hard to say which "button to push" to
    make<br>
      your implementation correctly deal with inevitable clock-slip.<br>
    <br>
    You'll need a strategy, that's about as much as I can offer, since
    I'm not myself a 5G implementation expert.<br>
    <br>
    <br>
  </body>
</html>

--------------070302050907040703060902--


--===============0518930791737016016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0518930791737016016==--

