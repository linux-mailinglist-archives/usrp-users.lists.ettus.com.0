Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D45E828040D
	for <lists+usrp-users@lfdr.de>; Thu,  1 Oct 2020 18:35:35 +0200 (CEST)
Received: from [::1] (port=59424 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kO1YH-0000jh-7B; Thu, 01 Oct 2020 12:35:29 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:36165)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kO1YE-0000UG-4m
 for usrp-users@lists.ettus.com; Thu, 01 Oct 2020 12:35:26 -0400
Received: by mail-qk1-f181.google.com with SMTP id q63so6005046qkf.3
 for <usrp-users@lists.ettus.com>; Thu, 01 Oct 2020 09:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=sijHKNdaNAJ6P8UDbETdQMSHZzGTKHeEjaLV2YlEJPc=;
 b=YRQHznQ+MsgKaRQbei09jL9V4lfgsSnuZ1n55QrDBoA/5+dMY1y/WVFhyKKB5zZjz5
 gUJF4zkJAV0l3XGa2RCeIQwqccR+w8AOAHeA/ctLAhhpGRbAMllRuhCjlpR+u3lzyjLG
 QWZ1G9VlvO1SS+CFQyA46m0J/Vc6YWjKIyR/oadjL5n9zIUJwcY9zLFvS2T8lkU6nPrZ
 8ZHqN3uGw93igcsuIgvwz8mVkti4ZzMvu/+y5O6qB6alNOhKYWHeW/vbSjDhwIBzyn0a
 BQDCY60E/Q7p/HFif/cbnTIy9hD56UEr9IdwNaC7Ex3JxRIYOk2Db14FJrkz36RU5XO6
 pPmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=sijHKNdaNAJ6P8UDbETdQMSHZzGTKHeEjaLV2YlEJPc=;
 b=qy0x9CSfDNAsgqPxjWSvfDYRJ0QbANxBbRtJtPMmijJrCB0TvzbfC7pQxPQApD4afu
 o+N2ujDwU7d15fpR9aPtcpW69pyssVn2ms/19voBpgft4WpeZQWDd7n05pagimLNIKUB
 sJvD7waOAWR8M6Mdf9RK30OS54zBwZm5Ihx5jd5w6oonb13LVdn+Y3OVTbOj3xnHb0G7
 E9Z3oV3g/Kr0kuMueRFgHYP72ZXJlwmyMhTXRmkaBDEOTB/REHzz/Kr13ll/B4vbcSqb
 TpcXCmvLuHVA/NsYl/Y7HKgA/J1YZtG428mYfBn1KC1Xrt/3Dl9JrSE69CamOvxj0csp
 ZKpQ==
X-Gm-Message-State: AOAM532LJACBc4+bq618f7Bn87uu0LoaUnJUxZNSou780NUEoMgUwOoY
 sFpyPGiDBY+H0SUitDmxC06wAIhvc4qn/g==
X-Google-Smtp-Source: ABdhPJwhbiCviCXpbi5gPlJRg7umLQMzPRuE28ZuyXM4i/1I7rBn11cwOAN+YR/Iu7NkoKUWqCZPEA==
X-Received: by 2002:a37:76c1:: with SMTP id r184mr7914742qkc.459.1601570085228; 
 Thu, 01 Oct 2020 09:34:45 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id o4sm6529731qkk.75.2020.10.01.09.34.44
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Oct 2020 09:34:44 -0700 (PDT)
Message-ID: <5F760524.7070907@gmail.com>
Date: Thu, 01 Oct 2020 12:34:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <DM6PR12MB3067DCE1E164DE2A581105798C300@DM6PR12MB3067.namprd12.prod.outlook.com>
In-Reply-To: <DM6PR12MB3067DCE1E164DE2A581105798C300@DM6PR12MB3067.namprd12.prod.outlook.com>
Subject: Re: [USRP-users] Maximize MIMO Collection with X310
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
Content-Type: multipart/mixed; boundary="===============2102931007189046037=="
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
--===============2102931007189046037==
Content-Type: multipart/alternative;
 boundary="------------090408020207050504060001"

This is a multi-part message in MIME format.
--------------090408020207050504060001
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/01/2020 12:28 PM, Mark Koenig via USRP-users wrote:
> Hello,
>
> I am looking to maximize my MIMO collection utilizing a single X310 
> radio with either 2 TwinRxs installed or 2 UBX-160s installed.
>
> In some cases, I have a GPSDO at my disposal.  For tasking the radios, 
> I am using python code which creates and runs a GNURADIO Flowgraph.
>
> Ultimately, I would like to know what to set the following parameter 
> to in order to have the optimal collection.  In the instances I have a 
> GPSDO installed in the X310, I would guess I should choose the GPSDO 
> option, but what if I don't?
>
> sync (options are:  don't sync, unknown pps, PC Clock)
>
> clock source (options are: Default, Internal, External, MIMO Cable, 
> O/B GPSDO)
>
> time source (options are: Default, External, MIMO Cable, O/B GPSDO)
>
> Thanks,
> Mark
>
You'll have to define what you mean by "optimal collection".

If you're just using a single X310 you don't need to worry so much about 
synchronization to external sources--just use the internal/Default
   sources, and perhaps choose "unknown PPS" for the sync option.

If you are using TwinRX and want really-good phase-coherence you should 
explore the LO-sharing functions, which I don't think are
   exposed in GRC.

You might want to read the following ap-note on TwinRX here:

https://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2





--------------090408020207050504060001
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/01/2020 12:28 PM, Mark Koenig via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:DM6PR12MB3067DCE1E164DE2A581105798C300@DM6PR12MB3067.namprd12.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hello,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I am looking to maximize my MIMO collection utilizing a single
        X310 radio with either 2 TwinRxs installed or 2 UBX-160s
        installed.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        In some cases, I have a GPSDO at my disposal.  For tasking the
        radios, I am using python code which creates and runs a GNURADIO
        Flowgraph.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Ultimately, I would like to know what to set the following
        parameter to in order to have the optimal collection.  In the
        instances I have a GPSDO installed in the X310, I would guess I
        should choose the GPSDO option, but what if I don't?<br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        sync (options are:  don't sync, unknown pps, PC Clock)</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        clock source (options are: Default, Internal, External, MIMO
        Cable, O/B GPSDO)</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        time source (options are: Default, External, MIMO Cable, O/B
        GPSDO)</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,<br>
        Mark<br>
      </div>
      <br>
    </blockquote>
    You'll have to define what you mean by "optimal collection".  <br>
    <br>
    If you're just using a single X310 you don't need to worry so much
    about synchronization to external sources--just use the
    internal/Default<br>
      sources, and perhaps choose "unknown PPS" for the sync option.<br>
    <br>
    If you are using TwinRX and want really-good phase-coherence you
    should explore the LO-sharing functions, which I don't think are<br>
      exposed in GRC.<br>
    <br>
    You might want to read the following ap-note on TwinRX here:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2">https://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2</a><br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------090408020207050504060001--


--===============2102931007189046037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2102931007189046037==--

