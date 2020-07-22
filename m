Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8379229F32
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 20:24:53 +0200 (CEST)
Received: from [::1] (port=53382 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyJQC-0004WE-5B; Wed, 22 Jul 2020 14:24:52 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:33573)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyJQ7-0004Ov-P7
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 14:24:47 -0400
Received: by mail-qk1-f181.google.com with SMTP id l23so2973033qkk.0
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 11:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=W7Nh+EE0AVB0AvoT79V9pbwYViKorCWtKhwRoOEAYF0=;
 b=GpoEN61cpXG1b0IaqA+ECyNsQMV6LYVg/ot3FyRZQunvpMW8lPO/MMFhyyH9Ite2Jq
 asf7dewIg6pvR1bLttMd53zlKrO+6ODZDxCNjhjufQ4JxEat0YUCcERqIBjmFQRMiY5F
 mzO8YGHM7AcJ4wHaC7HxZm6N1hAtb6bXUNnTZQM4TlpmQ7mGAX17gBnGkQ0kolBHHyQz
 s3nAoYkdkbSHd310w24torBi3VBl63LOG28H3Gr41PoXmHdMRqbmT72OGvdN7jaeOBsR
 ByTO0jWeja6vy4ogPLIrAVydf407EfvhzE9SzEfGgQKSNak7/3KBiihh3BO+hoHk4Oo7
 7wsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=W7Nh+EE0AVB0AvoT79V9pbwYViKorCWtKhwRoOEAYF0=;
 b=CF2tzxkN0WQXK/MaPyRCY8Bv3M0a9PkKKApR3nAPb782V6XqhRd7STidD1b+9irlGm
 +iZcX9Y5kWZhOuFm/JlOiSdl86JU8/6ZhmOzmPtAoPCsbrGerEqvzM8r+V1JDCIRl229
 lHe3PYMuaUL8csNtNMoev38d57QONvvDUIedLkcBa1iqn2cy9ZB5HBGsh/IYSIi98QfD
 eMKZxUVAserYDpu14YTJ9ScvwxjlGylCdj5OAZVpHUdG5eWDlzzY+TEf2YZj15LHA2Cm
 /Tt4oM2tVKVYndPYemZlxsCet7aASeLMFF53skBHwvKPZvqIYpM5y9zuul7lkqIViKdc
 WkyA==
X-Gm-Message-State: AOAM533WgEraE5y4MKDrGqxYBGHq0GxUIBLcVfOSEGdVqS9wbwbyHXSm
 pirIiKwibR6gOSuPV8dIBQe15mWN
X-Google-Smtp-Source: ABdhPJwwsQJroINEoZjjoWAdCiNBo8S9hwp9D5xp9U76maOAc5IxSTb65v4BqawFyb7WxLP5jfw3tA==
X-Received: by 2002:a37:a78c:: with SMTP id q134mr1405341qke.368.1595442247060; 
 Wed, 22 Jul 2020 11:24:07 -0700 (PDT)
Received: from lab.localdomain (d72-38-46-81.commercial1.cgocable.net.
 [72.38.46.81])
 by smtp.googlemail.com with ESMTPSA id a5sm399276qtc.44.2020.07.22.11.24.06
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jul 2020 11:24:06 -0700 (PDT)
Message-ID: <5F188445.5030107@gmail.com>
Date: Wed, 22 Jul 2020 14:24:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BY5PR19MB3398D74D23AAA722CD1040FAC6790@BY5PR19MB3398.namprd19.prod.outlook.com>
In-Reply-To: <BY5PR19MB3398D74D23AAA722CD1040FAC6790@BY5PR19MB3398.namprd19.prod.outlook.com>
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
Content-Type: multipart/mixed; boundary="===============7100812248989033616=="
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
--===============7100812248989033616==
Content-Type: multipart/alternative;
 boundary="------------090406090909080909050206"

This is a multi-part message in MIME format.
--------------090406090909080909050206
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/22/2020 02:15 PM, Jerrid Plymale via USRP-users wrote:
>
> Hello Marcus,
>
> The tool I have been using for initial signal quality checking has 
> been the QT Waterfall sink in GNU Radio Companion to see if the 
> signals are looking correct. Upon seeing that it looked like I was 
> loosing data when I set the USRP sink’s center frequency above 1.3 
> GHz, I connected the output of the USRP to a spectrum analyzer to get 
> some more accurate measurements of the signal. After running some 
> tests, I found that at a center frequency less than 1.3 GHz, the 
> strength of the signal was somewhere around -70 dBm. When I would 
> increase the frequency to a value above 1.3 GHz, and no changes to 
> anything else (e.g., channel gain, sample rate), the strength dropped 
> to somewhere around -90 dBm. This was measured by tracking the peak 
> power from an FFT of the signal input to the spectrum analyzer. Would 
> it help to see the flowgraph?
>
> Best Regards,
>
> Jerrid Plymale
>
>
>
Yes, it would help to see the flow-graph, and to see what settings 
you're using in the TX path.  The output power from the UBX is not 
likely to be
   completely consistent across the entire tuneable range, but 20dB is 
way more than I would expect.




--------------090406090909080909050206
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/22/2020 02:15 PM, Jerrid Plymale
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BY5PR19MB3398D74D23AAA722CD1040FAC6790@BY5PR19MB3398.namprd19.prod.outlook.com"
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
        <p class="MsoNormal">Hello Marcus,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">The tool I have been using for initial
          signal quality checking has been the QT Waterfall sink in GNU
          Radio Companion to see if the signals are looking correct.
          Upon seeing that it looked like I was loosing data when I set
          the USRP sink’s center frequency above 1.3 GHz, I connected
          the output of the USRP to a spectrum analyzer to get some more
          accurate measurements of the signal. After running some tests,
          I found that at a center frequency less than 1.3 GHz, the
          strength of the signal was somewhere around -70 dBm. When I
          would increase the frequency to a value above 1.3 GHz, and no
          changes to anything else (e.g., channel gain, sample rate),
          the strength dropped to somewhere around -90 dBm. This was
          measured by tracking the peak power from an FFT of the signal
          input to the spectrum analyzer. Would it help to see the
          flowgraph?  <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Best Regards,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Jerrid Plymale<o:p></o:p></p>
      </div>
      <br>
      <br>
    </blockquote>
    Yes, it would help to see the flow-graph, and to see what settings
    you're using in the TX path.  The output power from the UBX is not
    likely to be<br>
      completely consistent across the entire tuneable range, but 20dB
    is way more than I would expect.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------090406090909080909050206--


--===============7100812248989033616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7100812248989033616==--

