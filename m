Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4044C32FC0F
	for <lists+usrp-users@lfdr.de>; Sat,  6 Mar 2021 17:48:58 +0100 (CET)
Received: from [::1] (port=58128 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lIa6p-0003LN-Vm; Sat, 06 Mar 2021 11:48:55 -0500
Received: from mail-qt1-f170.google.com ([209.85.160.170]:41915)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lIa6l-0003FJ-VD
 for usrp-users@lists.ettus.com; Sat, 06 Mar 2021 11:48:51 -0500
Received: by mail-qt1-f170.google.com with SMTP id r24so4335573qtt.8
 for <usrp-users@lists.ettus.com>; Sat, 06 Mar 2021 08:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=zlE9JOEOulyAH7Zo32wzbYpOisKZf9+IeO05V/F6Yp0=;
 b=k+WshEVXSFKTVOkAK37fznsSi6g3CZBBEqePujiBuiQ5A6na3tGtyyOqx2CLjtSW6/
 qjJYt5HTVJKYdkRqVr1r2XOwQkfY7Prr3m8mZ/zt9d7gX/Jn7SYeo29KyFTkG3tBvOTE
 KHp2OGx7Jmf9Wzxc19ZmFXp0fp3bTNHv5Ckrn5exEJbNzvKl4bZnm3CZxbXKzsHZhRsV
 XjmeQ6Hoj3ol86lb75TKZ7qPEXSzPwKJRlZ0ccXIDm0YHD5oF2lMxBSMs06//ty5qln6
 cQNjtgD9Mea6+qGZtJonqbz5C30JzFeAqip1R+47dx9anwSrEqonlvwWm8rnFovfU2Ry
 ddOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=zlE9JOEOulyAH7Zo32wzbYpOisKZf9+IeO05V/F6Yp0=;
 b=NVG3aXtw/gG/Hjxuk+YxKO8np1QaBbQLMWs8B14Lj+Qb8l71/2qwRWA9HhSJyvN2NO
 kPfFuE+IC4R2SIDEhDTSddHE71gwLz9uzi8w+mI2Yb8bBrCFAUhc818ebRIHhHang2y4
 u+N/jdFuPgS1Y/2N0yLgN64UrIO+yd38mm0R8vWbRgV4OxikR3yYJNLyMXtzQtV8d6kG
 cSIsvJp0vb7Wgyfr1G2d6pHK2I1iF9R02ITjSxBhHuZqez7YHf7n8TsqdsoAtKk6A9RQ
 obYnOQo3TWiVLO9nzFSa5geeQp+luoZL5oTXPzF7uH0/bJHFX6sYW7NrRliyl+4CDhxz
 4KYg==
X-Gm-Message-State: AOAM5325yrMk7ZawNUNLy7HurRMdI/jjTW8cVBafh1G3vj6AgOL0IJJO
 SAWbMHYtlnkfrNtimjaJ5pss05mfUo0=
X-Google-Smtp-Source: ABdhPJwlYRfTul/ezJ8Slr7GOgwJOAZtuoPGFiMwV1C+Iy6noQgN4wN5hbkniISZLITOlH/2+v+32Q==
X-Received: by 2002:ac8:5d50:: with SMTP id g16mr13920529qtx.321.1615049291075; 
 Sat, 06 Mar 2021 08:48:11 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.googlemail.com with ESMTPSA id w13sm4343783qtv.37.2021.03.06.08.48.10
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Mar 2021 08:48:10 -0800 (PST)
Message-ID: <6043B249.8070503@gmail.com>
Date: Sat, 06 Mar 2021 11:48:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MAXPR01MB2480C1EE782A502D425F89A988959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR01MB2480C1EE782A502D425F89A988959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] Phase synchronization after hopping
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
Content-Type: multipart/mixed; boundary="===============8698469748063728953=="
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
--===============8698469748063728953==
Content-Type: multipart/alternative;
 boundary="------------040206010106080405020505"

This is a multi-part message in MIME format.
--------------040206010106080405020505
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/06/2021 11:31 AM, Snehasish Kar via USRP-users wrote:
>
> Hello everyone
>
> I am trying to achieve frequency hopping in GSM using twinrx with usrp 
> x310. Here I am using timed command for tuning a single port across a 
> given frequency list. During hopping it stays in each frequency for 
> 4msecs and till the time frequency hopping continues, I am able to 
> identify FCCH using phase difference. But as soon as the hopping is 
> over and it tunes back to the actual frequency containing the 
> broadcast channel, I am not getting phase difference greater than 0 
> and thus not able to demodulate the GSM burst. Can anyone please help 
> where I am going wrong below is the snippet of the code, responsible 
> for  hopping.
>
> Function handling hopping:
>
> uhd::tune_request_t tune_request(rf_freq);
>
> tune_request.rf_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
>
> tune_request.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
>
> tune_request.rf_freq = rf_freq;
>
> tune_request.dsp_freq = dsp_freq;
>
> uhd_src->set_rx_freq(tune_request, chan_num);
>
>               {
>
> If(verbose_lvl==3){
>
> char msg[100]={0x00};
>
> sprintf(msg,"info: DSP freq: changed to channel %d: %fMHz offset 
> %fMHz", chan_num, uhd_src->get_rx_freq(chan_num)/1e6, dsp_freq);
>
> vipl_printf(msg,error_lvl, __FILE__, __LINE__);
>
> }
>
>               }
>
> //uhd_src->clear_command_time();
>
> usleep(110000); // allow LOs to lock
>
> Module for setting back to original frequency with broadcast:
>
> uhd_src->clear_command_time();
>
> uhd::tune_request_t tune_request(rf_freq, 0x00); //considering 
> LO-Offset to be zero
>
> tune_request.rf_freq_policy = uhd::tune_request_t::POLICY_AUTO;
>
> tune_request.dsp_freq_policy = uhd::tune_request_t::POLICY_AUTO;
>
> tune_request.rf_freq = rf_freq;
>
> //tune_request.dsp_freq = -dsp_freq;
>
> uhd_src->set_rx_freq(tune_request, channel);
>
>               {
>
> char msg[100]={0x00};
>
> sprintf(msg,"info: freq: set to channel %d: %fMHz requested freq 
> %fMHz", channel, uhd_src->get_rx_freq(channel)/1e6, rf_freq/1e6);
>
> vipl_printf(msg,error_lvl, __FILE__, __LINE__);
>
>               }
>
> usleep(110000);
>
> My UHD version is 3.14.0.0
>
> USRP: X310
>
> Daughter board: 2 sets of Twinrx
>
> OS: Debian 10
>
> Interface: 10gig sfp+ ethernet
>
> Thanks!!
>
> Regards
>
> Snehasish Kar
>
>
By "phase synchronization" you're describing the demodulator phase?

You're hoping that the LO phase would be the same as if you had not 
hopped away from the original frequency?  I don't think that's
   even possible, but your description is not very precise, so perhaps 
that's not what you meant?



--------------040206010106080405020505
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/06/2021 11:31 AM, Snehasish Kar
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:MAXPR01MB2480C1EE782A502D425F89A988959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM"
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US">Hello everyone <o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">I am trying to achieve
            frequency hopping in GSM using twinrx with usrp x310. Here I
            am using timed command for tuning a single port across a
            given frequency list. During hopping it stays in each
            frequency for 4msecs and till the time frequency hopping
            continues, I am able to identify FCCH using phase
            difference. But as soon as the hopping is over and it tunes
            back to the actual frequency containing the broadcast
            channel, I am not getting phase difference greater than 0
            and thus not able to demodulate the GSM burst. Can anyone
            please help where I am going wrong below is the snippet of
            the code, responsible for  hopping.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Function handling
            hopping:<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            uhd::tune_request_t tune_request(rf_freq);<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            tune_request.rf_freq_policy =
            uhd::tune_request_t::POLICY_MANUAL;<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            tune_request.dsp_freq_policy =
            uhd::tune_request_t::POLICY_MANUAL;<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            tune_request.rf_freq = rf_freq;<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            tune_request.dsp_freq = dsp_freq;<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            uhd_src-&gt;set_rx_freq(tune_request, chan_num);<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">              {<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">                          
            If(verbose_lvl==3){<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">                                        
            char msg[100]={0x00};<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">                                        
            sprintf(msg,"info: DSP freq: changed to channel %d: %fMHz
            offset %fMHz", chan_num,
            uhd_src-&gt;get_rx_freq(chan_num)/1e6, dsp_freq);<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">                                        
            vipl_printf(msg,error_lvl, __FILE__, __LINE__);<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">                          
            }<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">              }<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            //uhd_src-&gt;clear_command_time();<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            usleep(110000); // allow LOs to lock<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Module for setting back
            to original frequency with broadcast:<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">              
            uhd_src-&gt;clear_command_time();<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            uhd::tune_request_t tune_request(rf_freq, 0x00);
            //considering LO-Offset to be zero<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            tune_request.rf_freq_policy =
            uhd::tune_request_t::POLICY_AUTO;<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            tune_request.dsp_freq_policy =
            uhd::tune_request_t::POLICY_AUTO;<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            tune_request.rf_freq = rf_freq;<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            //tune_request.dsp_freq = -dsp_freq;<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            uhd_src-&gt;set_rx_freq(tune_request, channel);<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">              {<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">                          
            char msg[100]={0x00};<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">                          
            sprintf(msg,"info: freq: set to channel %d: %fMHz requested
            freq %fMHz", channel, uhd_src-&gt;get_rx_freq(channel)/1e6,
            rf_freq/1e6);<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">                          
            vipl_printf(msg,error_lvl, __FILE__, __LINE__);<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">              }<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">             
            usleep(110000);<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">My UHD version is
            3.14.0.0<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">USRP: X310<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Daughter board: 2 sets
            of Twinrx<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">OS: Debian 10<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Interface: 10gig sfp+
            ethernet <o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Thanks!!<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Regards<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Snehasish Kar</span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <br>
      </div>
    </blockquote>
    By "phase synchronization" you're describing the demodulator phase?<br>
    <br>
    You're hoping that the LO phase would be the same as if you had not
    hopped away from the original frequency?  I don't think that's<br>
      even possible, but your description is not very precise, so
    perhaps that's not what you meant?<br>
    <br>
    <br>
  </body>
</html>

--------------040206010106080405020505--


--===============8698469748063728953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8698469748063728953==--

