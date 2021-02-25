Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 026C0325589
	for <lists+usrp-users@lfdr.de>; Thu, 25 Feb 2021 19:32:52 +0100 (CET)
Received: from [::1] (port=35828 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lFLRN-00084b-Mx; Thu, 25 Feb 2021 13:32:45 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:44722)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lFLRK-00080L-Jo
 for usrp-users@lists.ettus.com; Thu, 25 Feb 2021 13:32:42 -0500
Received: by mail-qk1-f177.google.com with SMTP id 204so6565737qke.11
 for <usrp-users@lists.ettus.com>; Thu, 25 Feb 2021 10:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=ensoYcls12XD8vhH7pXIpyCAG/ehsup/xgHmZWhp7cQ=;
 b=S2/mA4UOrCDt1S5V3W/eqYUcc3cIm3lDZXW2ptR7pZOHdoeDq/IM8a2Tf0QLXKl4I2
 XM+NUEcDT3VAZmey7idS0sau6CJxu1nYhfQYwFmS4d8mNOIUELYyZV+kK+Tc8bVwyN3G
 1Fjsj4FufP0w4+T657QuDyMgjnyeT5BrT3DNNtmxzzgyzbm/AVo2wOumyqQtcJe6FYkL
 3nBIrbHqWfC53sKfG8ljLnafHUQFaXuqbGlX5LUqJJZhMBu3AlHsARoG0NQIUcvNo9rk
 jhjqa8MC53Zri7k6R20oxq0EloMpYDta5T2T8Xg65XKjdqA8CNSS7XU1w4UGLFS60UOS
 Qw6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=ensoYcls12XD8vhH7pXIpyCAG/ehsup/xgHmZWhp7cQ=;
 b=i5eEu8nWPHsZgqNIKUmrFS3oNPVjWIGmiqedVL+FDaEcL8SYnEhftlrcxq4rq/qlFr
 OY1jUOz4xbC30rRIZHDCh93q7xjSd959D4VyMzjGehVP4xhH7D9f7ESMuBVy2UFm03C5
 rE9a+tclJB+L5+XiAsf327YltkGJZpdAWas7gW5B45GSBsg6dnZz3E57xt1mN/LaHzA9
 gc5ULTwLPd1kHT+OMH3VsLI3IuQWTrq+Wi3AJnkNA/e1rocAhLDzzauKdQ6W2pxZhdEt
 qH2lHoVsA5y4utUTO8JifURMwq1l7zBPX+3YFBRRP8+rmXEK0Btpr/J6AcW84DaYoKa+
 kJUg==
X-Gm-Message-State: AOAM530A2S8RF7Y3vHjc68gWUzlgQsD3Eyggs5j0blNtYZo3N+KOYWwf
 abXjqVLKvRyLBbcH+aw5wxzZfRk8BeQ=
X-Google-Smtp-Source: ABdhPJyDsLuKZuC4mZPwk4DoDmmk4UBRzz+tTYTvLUnl4lusJP4VOi57j2CqWUQ+eGyyPgutGmfZGA==
X-Received: by 2002:a37:dcf:: with SMTP id 198mr3839304qkn.257.1614277921624; 
 Thu, 25 Feb 2021 10:32:01 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.googlemail.com with ESMTPSA id j5sm3923335qth.80.2021.02.25.10.32.00
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Feb 2021 10:32:01 -0800 (PST)
Message-ID: <6037ED20.4080902@gmail.com>
Date: Thu, 25 Feb 2021 13:32:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <AM0P193MB0308B15687129D5E933F0135BD9E9@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P193MB0308B15687129D5E933F0135BD9E9@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] USRP N300 - Set RX bandwidth
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
Content-Type: multipart/mixed; boundary="===============6802111380632925824=="
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
--===============6802111380632925824==
Content-Type: multipart/alternative;
 boundary="------------090400010103040400060909"

This is a multi-part message in MIME format.
--------------090400010103040400060909
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/25/2021 11:30 AM, Puertas Blanco, Roberto via USRP-users wrote:
>
> Hello,
>
> I noticed that RX bandwidth is fixed to 100MHz, although the AD9371 
> datasheet specifies an adjustable range of 8 to 100MHz. Why is this 
> parameter fixed?
>
> double magnesium_radio_control_impl::set_rx_bandwidth(
>
>     const double bandwidth, const size_t chan)
>
> {
>
> std::lock_guard<std::recursive_mutex> l(_set_lock);
>
> _ad9371->set_bandwidth(bandwidth, chan, RX_DIRECTION);
>
> // FIXME: setting analog bandwidth on AD9371 take no effect.
>
> // Remove this warning when ADI can confirm that it works.
>
> RFNOC_LOG_WARNING("set_rx_bandwidth take no effect on AD9371. "
>
>                      "Default analog bandwidth is 100MHz");
>
>     return AD9371_RX_MAX_BANDWIDTH;
>
> }
>
> Best regards,
>
> Roberto
>
>
Because despite what the *datasheet* for the AD9371 says, the published 
interface to change the analog RX bandwidth has no effect.



--------------090400010103040400060909
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/25/2021 11:30 AM, Puertas Blanco,
      Roberto via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:AM0P193MB0308B15687129D5E933F0135BD9E9@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM"
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US">Hello,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">I noticed that RX
            bandwidth is fixed to 100MHz, although the AD9371 datasheet
            specifies an adjustable range of 8 to 100MHz. Why is this
            parameter fixed?<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">double
            magnesium_radio_control_impl::set_rx_bandwidth(<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">    const double
            bandwidth, const size_t chan)<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">{<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">   
            std::lock_guard&lt;std::recursive_mutex&gt; l(_set_lock);<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">   
            _ad9371-&gt;set_bandwidth(bandwidth, chan, RX_DIRECTION);<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">    <span
              style="background:yellow;mso-highlight:yellow">
              // FIXME: setting analog bandwidth on AD9371 take no
              effect.<o:p></o:p></span></span></p>
        <p class="MsoNormal"><span
            style="background:yellow;mso-highlight:yellow" lang="EN-US">   
            // Remove this warning when ADI can confirm that it works.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="background:yellow;mso-highlight:yellow" lang="EN-US">   
            RFNOC_LOG_WARNING("set_rx_bandwidth take no effect on
            AD9371. "<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="background:yellow;mso-highlight:yellow" lang="EN-US">                     "Default
            analog bandwidth is 100MHz");</span><span lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">    return
            AD9371_RX_MAX_BANDWIDTH;<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">}<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Best regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Roberto<o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    Because despite what the *datasheet* for the AD9371 says, the
    published interface to change the analog RX bandwidth has no effect.<br>
    <br>
    <br>
  </body>
</html>

--------------090400010103040400060909--


--===============6802111380632925824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6802111380632925824==--

