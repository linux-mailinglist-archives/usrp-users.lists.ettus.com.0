Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0642624EE13
	for <lists+usrp-users@lfdr.de>; Sun, 23 Aug 2020 18:12:12 +0200 (CEST)
Received: from [::1] (port=44352 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k9sbK-00041v-FV; Sun, 23 Aug 2020 12:12:10 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:38641)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k9sbG-0003pm-Ap
 for usrp-users@lists.ettus.com; Sun, 23 Aug 2020 12:12:06 -0400
Received: by mail-qk1-f178.google.com with SMTP id 144so5447507qkl.5
 for <usrp-users@lists.ettus.com>; Sun, 23 Aug 2020 09:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=jUWzHNgZ5dI04/5qAo7pWZxD+qZKg4VEMOZ6lNBwkY8=;
 b=F5/8JaLRxRmRaP1/pGMY88T3JZM/ZFWTf8tvhsLKTur+I6zlGV8lr2fGSHQYlUoo2C
 5TVZ7RkMgSfL9yFCWLnbB+/0QFrIDYAX/AhbSRd/tAnZtb7QWz3yrsbEbGBMK6cxMau8
 sR87hnP3iMCdy1LPefDT8KnO2uLvN1JMHg8xHauSgWGK1s86zgxdqVfvfBE9I9D7g2CJ
 y45VkEFS2QQ6OFJk7sukSe1gtHYGZeiXlteM5lM8mpnTbVuZ/XOtZ7nKXp9J2NtAjYK5
 o+IV5WmQBcmCsUJNuFxjg3c3ou3rtcTrmuZU8aQ1eWQF/CtwYrb9rD7/CPCnHHgAoPw9
 RlAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=jUWzHNgZ5dI04/5qAo7pWZxD+qZKg4VEMOZ6lNBwkY8=;
 b=XzSISCZNLIRlh34EvQt+3VRMksz49wSY44SnHae4tTJT/7FG1ncU+kLUmOBGYHcdwP
 pqTR7jeQ8q+G4KgfM40kBNNFnbbF5ZqpqqdvpDGIHPQKR8ZGIjrsibzmWakxO3fucVwW
 cn01qCeaTMFI9/uTdM7lMJWwK6ItEVMYpSl9Uy5SOo9jpcezJ/EEyc0BNZQFhDWATq36
 zXeM/dv/W+JyzjY1XBmq8uUya4Rf1ac79IWcRY6sntMkY7R1NwABg0XtalCpkm+iKC5o
 LoxjClh5zmT4KeGHu+vYYwB/6AfcfJA9LiepdP1AvkJDC5rO3W1isZjEVdYPNUll33pZ
 MBuA==
X-Gm-Message-State: AOAM5306Ry3G6ErL7ihu9ZcJs99bSaWUh+s2T2W8EFjGgobOFSLkyRHn
 N3skz7hhB/7ErkCFdI8Z/Bn3Ye3q+JurDA==
X-Google-Smtp-Source: ABdhPJympWZNmeFbYACoTVyS7EBURH8mrsXd/xBXuFv3ZYuvXr9rR5PK1WXhwUwwH01SPEzH56/I9Q==
X-Received: by 2002:a37:b307:: with SMTP id c7mr1553377qkf.33.1598199085581;
 Sun, 23 Aug 2020 09:11:25 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id n33sm8917086qtd.43.2020.08.23.09.11.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Aug 2020 09:11:25 -0700 (PDT)
Message-ID: <5F42952C.4040200@gmail.com>
Date: Sun, 23 Aug 2020 12:11:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Prasad <kpras@trilcomm.com>, usrp-users@lists.ettus.com
References: <53F074DDB8EF9CF2.b08124db-1501-4661-9a63-6aee26d65445@mail.outlook.com>
 <5F41C5B7.9030201@gmail.com> <000301d67948$f6b23a50$e416aef0$@com>
 <5F428F1C.1030103@gmail.com> <001101d67964$be070570$3a151050$@com>
In-Reply-To: <001101d67964$be070570$3a151050$@com>
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
Content-Type: multipart/mixed; boundary="===============0622146491434072153=="
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
--===============0622146491434072153==
Content-Type: multipart/alternative;
 boundary="------------010301090204040104060602"

This is a multi-part message in MIME format.
--------------010301090204040104060602
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/23/2020 11:47 AM, Prasad wrote:
>
> *From:*Marcus D. Leech [mailto:patchvonbraun@gmail.com]
> *Sent:* Sunday, August 23, 2020 9:16 PM
> *To:* Prasad; usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] USRP B210: getting RX samples with 
> gradually increase delay
>
> On 08/23/2020 08:28 AM, Prasad wrote:
>
>     Dear Marcus,
>
>     Verified the code couple of time even tested bypassing USRP and it
>     works fine.
>
>     So, suspecting any time_spec either in RX or TX missing in the code?
>
>     Regards,
>
>     Prasad.
>
> What is your sample rate?  Over what time scales do you see an 
> apparent "time slip"?
> 30.72e6.
>
> Nearly 40ms one-four sample delay.
>
>
You're seeing a one to four-sample slip over a period of 40ms, unless I 
misunderstand what you're saying.

At 30.72e6 SPS, that amounts to between 0.8 and 2.4PPM, which is within 
spec for the B210 without an external clock.

The clock quality necessarily determines not only frequency accuracy of 
the RF components, but also of everything else in the system
   including sampling.



--------------010301090204040104060602
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/23/2020 11:47 AM, Prasad wrote:<br>
    </div>
    <blockquote cite="mid:001101d67964$be070570$3a151050$@com"
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
      <div class="Section1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><span
                style="font-size:10.0pt;font-family:
&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext"> Marcus D.
                Leech
                [<a class="moz-txt-link-freetext" href="mailto:patchvonbraun@gmail.com">mailto:patchvonbraun@gmail.com</a>] <br>
                <b>Sent:</b> Sunday, August 23, 2020 9:16 PM<br>
                <b>To:</b> Prasad; <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] USRP B210: getting RX
                samples with gradually
                increase delay<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">On 08/23/2020 08:28 AM, Prasad wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Dear
              Marcus,</span><o:p></o:p></p>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"> </span><o:p></o:p></p>
          <div>
            <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Verified
                the code couple of time even tested bypassing USRP and
                it works fine.</span><o:p></o:p></p>
            <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">So,
                suspecting any time_spec either in RX or TX missing in
                the
                code?</span><o:p></o:p></p>
            <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"> </span><o:p></o:p></p>
            <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,</span><o:p></o:p></p>
            <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Prasad.</span><o:p></o:p></p>
          </div>
        </blockquote>
        <p class="MsoNormal">What is your sample rate?  Over what time
          scales do you
          see an apparent "time slip"?<br>
          <span style="color:#1F497D">30.72e6.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Nearly 40ms
            one-four sample
            delay.</span><br>
          <br>
          <span style="color:#1F497D"><o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    You're seeing a one to four-sample slip over a period of 40ms,
    unless I misunderstand what you're saying.<br>
    <br>
    At 30.72e6 SPS, that amounts to between 0.8 and 2.4PPM, which is
    within spec for the B210 without an external clock.<br>
    <br>
    The clock quality necessarily determines not only frequency accuracy
    of the RF components, but also of everything else in the system<br>
      including sampling.<br>
    <br>
    <br>
  </body>
</html>

--------------010301090204040104060602--


--===============0622146491434072153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0622146491434072153==--

